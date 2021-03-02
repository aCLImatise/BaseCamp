version 1.0

task Rampler {
  input {
    Directory? out_directory
  }
  command <<<
    rampler \
      ~{if defined(out_directory) then ("--out-directory " +  '"' + out_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/racon:1.4.20--he513fc3_0"
  }
  parameter_meta {
    out_directory: "default: current directory\\npath in which sampled files will be created"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_directory = "${in_out_directory}"
  }
}