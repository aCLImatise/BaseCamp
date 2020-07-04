version 1.0

task Coverage {
  input {
    String? name_hxb_
    String? input_sambam_file
    String? output_tsv_file
    String? msa_of_contigs
    String? select
  }
  command <<<
    coverage \
      ~{if defined(name_hxb_) then ("-t " +  '"' + name_hxb_ + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_tsv_file) then ("-o " +  '"' + output_tsv_file + '"') else ""} \
      ~{if defined(msa_of_contigs) then ("-m " +  '"' + msa_of_contigs + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""}
  >>>
  parameter_meta {
    name_hxb_: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
    output_tsv_file: "Output TSV file"
    msa_of_contigs: "MSA of contigs"
    select: "Name of contig that is of interest"
  }
}