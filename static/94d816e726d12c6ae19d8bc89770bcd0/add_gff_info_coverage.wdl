version 1.0

task AddgffinfoCoverage {
  input {
    File? sample_alignment
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info coverage \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(sample_alignment) then ("--sample-alignment " +  '"' + sample_alignment + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    sample_alignment: "sample name and correspondent alignment file\\nseparated by comma  [required]"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}