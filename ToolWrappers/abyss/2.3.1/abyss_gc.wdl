version 1.0

task Abyssgc {
  input {
    Boolean? verbose
    File? var_file
  }
  command <<<
    abyss_gc \
      ~{var_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    verbose: "display verbose output"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}