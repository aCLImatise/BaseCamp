version 1.0

task AddgffinfoCoverage {
  input {
    Boolean? verbose
    File? sample_alignment
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info coverage \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sample_alignment) then ("--sample-alignment " +  '"' + sample_alignment + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    sample_alignment: "sample name and correspondent alignment file\\nseparated by comma  [required]"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}