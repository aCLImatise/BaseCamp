version 1.0

task TestGrm {
  input {
    Boolean? g_test_list_tests
    String? g_test_filter
    Boolean? g_test_also_run_disabled_tests
    Boolean? g_test_repeat
    Boolean? g_test_shuffle
    Boolean? g_test_random_seed
    Boolean? g_test_color
    Int? g_test_print_time
    File? g_test_output
    String? g_test_stream_result_to
    Boolean? g_test_death_test_style
    Boolean? g_test_break_on_failure
    Boolean? g_test_throw_on_failure
    Int? g_test_catch_exceptions
  }
  command <<<
    test_grm \
      ~{if (g_test_list_tests) then "--gtest_list_tests" else ""} \
      ~{if defined(g_test_filter) then ("--gtest_filter " +  '"' + g_test_filter + '"') else ""} \
      ~{if (g_test_also_run_disabled_tests) then "--gtest_also_run_disabled_tests" else ""} \
      ~{if (g_test_repeat) then "--gtest_repeat" else ""} \
      ~{if (g_test_shuffle) then "--gtest_shuffle" else ""} \
      ~{if (g_test_random_seed) then "--gtest_random_seed" else ""} \
      ~{if (g_test_color) then "--gtest_color" else ""} \
      ~{if defined(g_test_print_time) then ("--gtest_print_time " +  '"' + g_test_print_time + '"') else ""} \
      ~{if defined(g_test_output) then ("--gtest_output " +  '"' + g_test_output + '"') else ""} \
      ~{if defined(g_test_stream_result_to) then ("--gtest_stream_result_to " +  '"' + g_test_stream_result_to + '"') else ""} \
      ~{if (g_test_death_test_style) then "--gtest_death_test_style" else ""} \
      ~{if (g_test_break_on_failure) then "--gtest_break_on_failure" else ""} \
      ~{if (g_test_throw_on_failure) then "--gtest_throw_on_failure" else ""} \
      ~{if defined(g_test_catch_exceptions) then ("--gtest_catch_exceptions " +  '"' + g_test_catch_exceptions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_test_list_tests: "List the names of all tests instead of running them. The name of\\nTEST(Foo, Bar) is \\\"Foo.Bar\\\"."
    g_test_filter: "[-NEGATIVE_PATTERNS]\\nRun only the tests whose name matches one of the positive patterns but\\nnone of the negative patterns. '?' matches any single character; '*'\\nmatches any substring; ':' separates two patterns."
    g_test_also_run_disabled_tests: "Run all disabled tests too."
    g_test_repeat: "=[COUNT]\\nRun the tests repeatedly; use a negative count to repeat forever."
    g_test_shuffle: "Randomize tests' orders on every iteration."
    g_test_random_seed: "=[NUMBER]\\nRandom number seed to use for shuffling test orders (between 1 and\\n99999, or 0 to use a seed based on the current time)."
    g_test_color: "=(yes|no|auto)\\nEnable/disable colored output. The default is auto."
    g_test_print_time: "Don't print the elapsed time of each test."
    g_test_output: "[:DIRECTORY_PATH/|:FILE_PATH]\\nGenerate an XML report in the given directory or with the given file\\nname. FILE_PATH defaults to test_details.xml."
    g_test_stream_result_to: ":PORT\\nStream test results to the given server."
    g_test_death_test_style: "=(fast|threadsafe)\\nSet the default death test style."
    g_test_break_on_failure: "Turn assertion failures into debugger break-points."
    g_test_throw_on_failure: "Turn assertion failures into C++ exceptions."
    g_test_catch_exceptions: "Do not report exceptions as test failures. Instead, allow them\\nto crash the program or throw a pop-up (on Windows)."
  }
  output {
    File out_stdout = stdout()
  }
}