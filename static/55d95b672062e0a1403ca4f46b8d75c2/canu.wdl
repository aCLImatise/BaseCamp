version 1.0

task Canu {
  input {
    Boolean? pac_bio_hifi
    Boolean? haplotype
    Boolean? correct
    Boolean? trim
    Boolean? assemble
    Boolean? trim_assemble
    String? haplotype_nanny
    String? haplotype_billy
    Boolean? version
    Boolean? citation
  }
  command <<<
    canu \
      ~{true="-pacbio-hifi" false="" pac_bio_hifi} \
      ~{true="-haplotype" false="" haplotype} \
      ~{true="-correct" false="" correct} \
      ~{true="-trim" false="" trim} \
      ~{true="-assemble" false="" assemble} \
      ~{true="-trim-assemble" false="" trim_assemble} \
      ~{if defined(haplotype_nanny) then ("-haplotypeNANNY " +  '"' + haplotype_nanny + '"') else ""} \
      ~{if defined(haplotype_billy) then ("-haplotypeBILLY " +  '"' + haplotype_billy + '"') else ""} \
      ~{true="-version" false="" version} \
      ~{true="-citation" false="" citation}
  >>>
  parameter_meta {
    pac_bio_hifi: "] file1 file2 ..."
    haplotype: "- generate haplotype-specific reads"
    correct: "- generate corrected reads"
    trim: "- generate trimmed reads"
    assemble: "- generate an assembly"
    trim_assemble: "- generate trimmed reads and then assemble them"
    haplotype_nanny: "*gz"
    haplotype_billy: "billy2.fasta.gz"
    version: ""
    citation: ""
  }
}