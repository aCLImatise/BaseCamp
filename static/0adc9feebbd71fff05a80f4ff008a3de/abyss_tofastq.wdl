version 1.0

task AbyssTofastq {
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
    String? option
  }
  command <<<
    abyss-tofastq \
      ~{option} \
      ~{true="--cat" false="" cat} \
      ~{true="--interleave" false="" interleave} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    cat: "concatenate the records [default]"
    interleave: "interleave the records"
    fast_q: "ouput FASTQ format [default]"
    fast_a: "ouput FASTA format"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    standard_quality: "zero quality is `!' (33) default for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64) default for qseq and export files"
    verbose: "display verbose output"
    option: ""
  }
}