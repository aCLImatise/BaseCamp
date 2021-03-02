version 1.0

task Coverage {
  input {
    Int? name_target_
    File? input_sambam_file
    File? output_tsv_file
    File? msa_of_contigs
    String? select
  }
  command <<<
    coverage \
      ~{if defined(name_target_) then ("-t " +  '"' + name_target_ + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_tsv_file) then ("-o " +  '"' + output_tsv_file + '"') else ""} \
      ~{if defined(msa_of_contigs) then ("-m " +  '"' + msa_of_contigs + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_target_: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
    output_tsv_file: "Output TSV file"
    msa_of_contigs: "MSA of contigs"
    select: "Name of contig that is of interest"
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv_file = "${in_output_tsv_file}"
  }
}