version 1.0

task Addgenename {
  input {
    Directory? directory_output_gtf
  }
  command <<<
    add_genename \
      ~{if (directory_output_gtf) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0"
  }
  parameter_meta {
    directory_output_gtf: ": the directory for output gtf files (default: ./)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_gtf = "${in_directory_output_gtf}"
  }
}