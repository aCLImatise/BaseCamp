version 1.0

task Dnpdiprofile {
  input {
    Boolean? version_check
    File? dinucleotide
    Int? seq_length
    Boolean? complement
    Boolean? verbose
    String position_dot
  }
  command <<<
    dnp_diprofile \
      ~{position_dot} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(dinucleotide) then ("--dinucleotide " +  '"' + dinucleotide + '"') else ""} \
      ~{if defined(seq_length) then ("--seqlength " +  '"' + seq_length + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    dinucleotide: "Dinucleotide to compute a frequency profile in fasta file. One of\\nAA, AC, AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT.\\nDefault: AA."
    seq_length: "Sequence length in fasta file. In range [25..600]. Default: 600."
    complement: "Perform computation on COMPLEMENTARY sequences of the strings in\\nfasta file."
    verbose: "Print parameters and variables."
    position_dot: "REQUIRED ARGUMENTS"
  }
  output {
    File out_stdout = stdout()
  }
}