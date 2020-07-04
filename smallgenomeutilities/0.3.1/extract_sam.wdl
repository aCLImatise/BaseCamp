version 1.0

task ExtractSam {
  input {
    String? name_hxb_
    Boolean? print_more_information
    String? input_sambam_file
    String? output_fasta_file
    Float? mf
    Int? mc
    String? prefix
    Float? rg
    Boolean? rog
    Boolean? output_sequences_translated
    Boolean? output_sequences_trait
    String msa_file
  }
  command <<<
    extract_sam \
      ~{msa_file} \
      ~{if defined(name_hxb_) then ("-t " +  '"' + name_hxb_ + '"') else ""} \
      ~{true="-v" false="" print_more_information} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_fasta_file) then ("-o " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{true="--rog" false="" rog} \
      ~{true="-p" false="" output_sequences_translated} \
      ~{true="-T" false="" output_sequences_trait}
  >>>
  parameter_meta {
    name_hxb_: "Name of target contig, e.g. HXB2:2253-2256"
    print_more_information: "Print more information (such as subsequences in references)"
    input_sambam_file: "Input SAM/BAM file"
    output_fasta_file: "Output FASTA file"
    mf: "Minimum frequency to output"
    mc: "Minimum count to output"
    prefix: "Prefix to add to header"
    rg: "Minimum frequency for gap containing sequences"
    rog: "Remove sequences consisting only of gaps and stop codons"
    output_sequences_translated: "Output sequences as translated proteins"
    output_sequences_trait: "Output sequences in trait format (for SeTesT)"
    msa_file: "file containing MSA"
  }
}