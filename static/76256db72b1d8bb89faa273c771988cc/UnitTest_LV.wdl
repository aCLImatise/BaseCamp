version 1.0

task UnitTestLV {
  input {
    Boolean? list_tests
    Boolean? list_tags
    Boolean? success
    Boolean? break
    Boolean? no_throw
    Boolean? invisibles
    File? out
    String? reporter
    String? name
    Boolean? abort
    String? abort_x
    String? warn
    String? durations
    File? input_file
    Boolean? list_test_names_only
    Boolean? list_reporters
    String? order
    Boolean? rng_seed
    Boolean? force_colour
  }
  command <<<
    UnitTest_LV \
      ~{true="--list-tests" false="" list_tests} \
      ~{true="--list-tags" false="" list_tags} \
      ~{true="--success" false="" success} \
      ~{true="--break" false="" break} \
      ~{true="--nothrow" false="" no_throw} \
      ~{true="--invisibles" false="" invisibles} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(reporter) then ("--reporter " +  '"' + reporter + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--abort" false="" abort} \
      ~{if defined(abort_x) then ("--abortx " +  '"' + abort_x + '"') else ""} \
      ~{if defined(warn) then ("--warn " +  '"' + warn + '"') else ""} \
      ~{if defined(durations) then ("--durations " +  '"' + durations + '"') else ""} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="--list-test-names-only" false="" list_test_names_only} \
      ~{true="--list-reporters" false="" list_reporters} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{true="--rng-seed" false="" rng_seed} \
      ~{true="--force-colour" false="" force_colour}
  >>>
  parameter_meta {
    list_tests: "list all/matching test cases"
    list_tags: "list all/matching tags"
    success: "include successful tests in output"
    break: "break into debugger on failure"
    no_throw: "skip exception tests"
    invisibles: "show invisibles (tabs, newlines)"
    out: "output filename"
    reporter: "reporter to use (defaults to console)"
    name: "suite name"
    abort: "abort at first failure"
    abort_x: "abort after x failures"
    warn: "enable warnings"
    durations: "show test durations"
    input_file: "load test names to run from a file"
    list_test_names_only: "list all/matching test cases names only"
    list_reporters: "list all reporters"
    order: "test case order (defaults to decl)"
    rng_seed: "<'time'|number>   set a specific seed for random numbers"
    force_colour: "force colourised output"
  }
}