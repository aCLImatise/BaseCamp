version 1.0

task Abyssgc {
  input {
    Boolean? verbose
    File? file
  }
  command <<<
    abyss_gc \
      ~{file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}