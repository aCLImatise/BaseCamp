version 1.0

task AddGffInfoCoverage {
  input {
    String? sample_alignment
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info coverage \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(sample_alignment) then ("--sample-alignment " +  '"' + sample_alignment + '"') else ""}
  >>>
  parameter_meta {
    sample_alignment: "sample name and correspondent alignment file separated by comma  [required]"
    input_file: ""
    output_file: ""
  }
}