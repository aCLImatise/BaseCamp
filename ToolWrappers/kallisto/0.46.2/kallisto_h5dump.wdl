version 1.0

task KallistoH5dump {
  input {
    Directory? output_dir
    String? arguments
    Int abundance_doth_five
  }
  command <<<
    kallisto h5dump \
      ~{arguments} \
      ~{abundance_doth_five} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Directory to write output to"
    arguments: ""
    abundance_doth_five: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}