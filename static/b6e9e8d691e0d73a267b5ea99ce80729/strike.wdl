version 1.0

task Strike {
  input {
    File? alignment
    File? template_file
    Boolean? normalize
    File? out_file
  }
  command <<<
    strike \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(template_file) then ("--template_file " +  '"' + template_file + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment: "Alignment File"
    template_file: "Connection File"
    normalize: "Normalizes the score"
    out_file: "The file where the results will be saved"
  }
  output {
    File out_stdout = stdout()
  }
}