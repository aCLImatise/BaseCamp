version 1.0

task ExtractSam {
  input {
    Int? name_target_
    Boolean? print_more_information
    File? input_sambam_file
    File? output_fasta_file
    Float? mf
    Int? mc
    String? prefix
    Float? rg
    Boolean? rog
    Boolean? output_sequences_translated
    Boolean? output_sequences_trait
  }
  command <<<
    extract_sam \
      ~{if defined(name_target_) then ("-t " +  '"' + name_target_ + '"') else ""} \
      ~{if (print_more_information) then "-v" else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_fasta_file) then ("-o " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if (rog) then "--rog" else ""} \
      ~{if (output_sequences_translated) then "-p" else ""} \
      ~{if (output_sequences_trait) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    name_target_: "Name of target contig, e.g. HXB2:2253-2256"
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
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}