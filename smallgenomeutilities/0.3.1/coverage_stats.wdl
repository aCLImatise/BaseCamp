version 1.0

task CoverageStats {
  input {
    Int? name_target_contig
    File? input_sambam_file
    File? output_tsv_file
    File? msa_of_contigs
    String? select
    String contig
  }
  command <<<
    coverage_stats \
      ~{contig} \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_tsv_file) then ("-o " +  '"' + output_tsv_file + '"') else ""} \
      ~{if defined(msa_of_contigs) then ("-m " +  '"' + msa_of_contigs + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""}
  >>>
  parameter_meta {
    name_target_contig: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
    output_tsv_file: "Output TSV file"
    msa_of_contigs: "MSA of contigs"
    select: "Name of contig that is of interest"
    contig: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv_file = "${in_output_tsv_file}"
  }
}