version 1.0

task DnpDiprofile {
  input {
    Boolean? version_check
    String? dinucleotide
    Int? seq_length
    Boolean? complement
    Boolean? verbose
  }
  command <<<
    dnp-diprofile \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(dinucleotide) then ("--dinucleotide " +  '"' + dinucleotide + '"') else ""} \
      ~{if defined(seq_length) then ("--seqlength " +  '"' + seq_length + '"') else ""} \
      ~{true="--complement" false="" complement} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    dinucleotide: "Dinucleotide to compute a frequency profile in fasta file. One of AA, AC, AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default: AA."
    seq_length: "Sequence length in fasta file. In range [25..600]. Default: 600."
    complement: "Perform computation on COMPLEMENTARY sequences of the strings in fasta file."
    verbose: "Print parameters and variables."
  }
}