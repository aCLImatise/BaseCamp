version 1.0

task Abysstofastq {
  input {
    Boolean? cat
    Boolean? interleave
    Boolean? fast_q
    Boolean? fast_a
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? verbose
  }
  command <<<
    abyss_tofastq \
      ~{if (cat) then "--cat" else ""} \
      ~{if (interleave) then "--interleave" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    cat: "concatenate the records [default]"
    interleave: "interleave the records"
    fast_q: "ouput FASTQ format [default]"
    fast_a: "ouput FASTA format"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}