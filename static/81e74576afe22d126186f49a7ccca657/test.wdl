version 1.0

task Test.pyutilib {
  input {
    String? dir
    Boolean? all
    String? category
    Boolean? coverage
    Boolean? verbose
    String? redirect_output_file
    String dirs
  }
  command <<<
    test.pyutilib \
      ~{dirs} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{if defined(category) then ("--category " +  '"' + category + '"') else ""} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(redirect_output_file) then ("--output " +  '"' + redirect_output_file + '"') else ""}
  >>>
  parameter_meta {
    dir: "Top-level source directory where the tests are applied."
    all: "All tests are executed."
    category: "Specify test categories."
    coverage: "Indicate that coverage information is collected"
    verbose: "Verbose output"
    redirect_output_file: "Redirect output to a file"
    dirs: ""
  }
}