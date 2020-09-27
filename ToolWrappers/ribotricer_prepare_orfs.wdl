version 1.0

task RibotricerPrepareorfs {
  input {
    File? gtf
    File? fast_a
    File? prefix
    Int? min_orf_length
    String? start_codons
    String? stop_codons
    Boolean? longest
  }
  command <<<
    ribotricer prepare_orfs \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_orf_length) then ("--min_orf_length " +  '"' + min_orf_length + '"') else ""} \
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""} \
      ~{if (longest) then "--longest" else ""}
  >>>
  parameter_meta {
    gtf: "Path to GTF file  [required]"
    fast_a: "Path to FASTA file  [required]"
    prefix: "Prefix to output file  [required]"
    min_orf_length: "The minimum length (nts) of ORF to include\\n[default: 60]"
    start_codons: "Comma separated list of start codons  [default:\\nATG]"
    stop_codons: "Comma separated list of stop codons  [default:\\nTAG,TAA,TGA]"
    longest: "Choose the most upstream start codon if multiple\\nin frame ones exist"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}