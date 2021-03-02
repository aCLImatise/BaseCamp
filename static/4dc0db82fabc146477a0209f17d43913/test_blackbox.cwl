class: CommandLineTool
id: test_blackbox.cwl
inputs:
- id: in_g_test_list_tests
  doc: "List the names of all tests instead of running them. The name of\nTEST(Foo,\
    \ Bar) is \"Foo.Bar\"."
  type: boolean?
  inputBinding:
    prefix: --gtest_list_tests
- id: in_g_test_filter
  doc: "[-NEGATIVE_PATTERNS]\nRun only the tests whose name matches one of the positive\
    \ patterns but\nnone of the negative patterns. '?' matches any single character;\
    \ '*'\nmatches any substring; ':' separates two patterns."
  type: string?
  inputBinding:
    prefix: --gtest_filter
- id: in_g_test_also_run_disabled_tests
  doc: Run all disabled tests too.
  type: boolean?
  inputBinding:
    prefix: --gtest_also_run_disabled_tests
- id: in_g_test_repeat
  doc: "=[COUNT]\nRun the tests repeatedly; use a negative count to repeat forever."
  type: boolean?
  inputBinding:
    prefix: --gtest_repeat
- id: in_g_test_shuffle
  doc: Randomize tests' orders on every iteration.
  type: boolean?
  inputBinding:
    prefix: --gtest_shuffle
- id: in_g_test_random_seed
  doc: "=[NUMBER]\nRandom number seed to use for shuffling test orders (between 1\
    \ and\n99999, or 0 to use a seed based on the current time)."
  type: boolean?
  inputBinding:
    prefix: --gtest_random_seed
- id: in_g_test_color
  doc: "=(yes|no|auto)\nEnable/disable colored output. The default is auto."
  type: boolean?
  inputBinding:
    prefix: --gtest_color
- id: in_g_test_print_time
  doc: Don't print the elapsed time of each test.
  type: long?
  inputBinding:
    prefix: --gtest_print_time
- id: in_g_test_output
  doc: "[:DIRECTORY_PATH/|:FILE_PATH]\nGenerate an XML report in the given directory\
    \ or with the given file\nname. FILE_PATH defaults to test_details.xml."
  type: File?
  inputBinding:
    prefix: --gtest_output
- id: in_g_test_stream_result_to
  doc: ":PORT\nStream test results to the given server."
  type: string?
  inputBinding:
    prefix: --gtest_stream_result_to
- id: in_g_test_death_test_style
  doc: "=(fast|threadsafe)\nSet the default death test style."
  type: boolean?
  inputBinding:
    prefix: --gtest_death_test_style
- id: in_g_test_break_on_failure
  doc: Turn assertion failures into debugger break-points.
  type: boolean?
  inputBinding:
    prefix: --gtest_break_on_failure
- id: in_g_test_throw_on_failure
  doc: Turn assertion failures into C++ exceptions.
  type: boolean?
  inputBinding:
    prefix: --gtest_throw_on_failure
- id: in_g_test_catch_exceptions
  doc: "Do not report exceptions as test failures. Instead, allow them\nto crash the\
    \ program or throw a pop-up (on Windows)."
  type: long?
  inputBinding:
    prefix: --gtest_catch_exceptions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- test_blackbox
