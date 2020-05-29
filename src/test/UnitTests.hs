
import Lib          (inc)
import Prelude      -- explicitly all
import Test.HUnit   (assertEqual, errors, failures, runTestTT, Test(TestCase, TestList))
import System.Exit  (ExitCode(ExitFailure), exitWith, exitSuccess)


test0 :: Test
test0 = TestCase $ assertEqual
  "inc 1 == 2" 2 (inc 1)

test1 :: Test
test1 = TestCase $ assertEqual
  "inc maxBound == minBound" minBound (inc maxBound)

allTests :: [Test]
allTests = [test0, test1]

main :: IO ()
main = do
  results <- runTestTT $ TestList allTests
  if errors results + failures results == 0
    then exitSuccess
    else exitWith (ExitFailure 1)