open OUnit2
open Lib

let tests = "test suite for sum" >::: [
  "2+3=5"  >:: (fun _ -> assert_equal 5 (Math.add 2 3));
  "3+3=6"  >:: (fun _ -> assert_equal 6 (Math.add 3 3));
  "3-3=0"  >:: (fun _ -> assert_equal 0 (Math.sub 3 3));
]


let _ = run_test_tt_main tests
