version 1.0

task SsuEslSeqstat {
  input {
    Boolean? report_persequence_info
    Boolean? count_report_composition
    String? in_format
    Boolean? rna
    Boolean? dna
    Boolean? amino
    String seq_file
  }
  command <<<
    ssu-esl-seqstat \
      ~{seq_file} \
      ~{true="-a" false="" report_persequence_info} \
      ~{true="-c" false="" count_report_composition} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--rna" false="" rna} \
      ~{true="--dna" false="" dna} \
      ~{true="--amino" false="" amino}
  >>>
  parameter_meta {
    report_persequence_info: ": report per-sequence info line, not just a summary"
    count_report_composition: ": count and report residue composition"
    in_format: ": specify that input file is in format <s>"
    rna: ": specify that <seqfile> contains RNA sequence"
    dna: ": specify that <seqfile> contains DNA sequence"
    amino: ": specify that <seqfile> contains protein sequence"
    seq_file: ""
  }
}