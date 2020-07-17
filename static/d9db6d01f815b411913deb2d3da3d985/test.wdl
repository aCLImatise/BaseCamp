version 1.0

task Test.pyomo {
  input {
    String? dir
    String? category
    Boolean? all
    Boolean? coverage
    Boolean? verbose
    String? redirect_output_file
    String dirs
  }
  command <<<
    test.pyomo \
      ~{dirs} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(category) then ("--category " +  '"' + category + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(redirect_output_file) then ("--output " +  '"' + redirect_output_file + '"') else ""}
  >>>
  parameter_meta {
    dir: "Top-level source directory where the tests are applied."
    category: "Specify test categories."
    all: "All tests are executed."
    coverage: "Indicate that coverage information is collected"
    verbose: "Verbose output"
    redirect_output_file: "Redirect output to a file"
    dirs: ""
  }
}