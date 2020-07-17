version 1.0

task RibotricerPrepareOrfs {
  input {
    String? gtf
    String? fast_a
    String? prefix
    Int? min_orf_length
    String? start_codons
    String? stop_codons
    Boolean? longest
  }
  command <<<
    ribotricer prepare-orfs \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_orf_length) then ("--min_orf_length " +  '"' + min_orf_length + '"') else ""} \
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""} \
      ~{true="--longest" false="" longest}
  >>>
  parameter_meta {
    gtf: "Path to GTF file  [required]"
    fast_a: "Path to FASTA file  [required]"
    prefix: "Prefix to output file  [required]"
    min_orf_length: "The minimum length (nts) of ORF to include [default: 60]"
    start_codons: "Comma separated list of start codons  [default: ATG]"
    stop_codons: "Comma separated list of stop codons  [default: TAG,TAA,TGA]"
    longest: "Choose the most upstream start codon if multiple in frame ones exist"
  }
}