version 1.0

task Ssueslseqstat {
  input {
    Boolean? report_persequence_line
    Boolean? count_report_composition
    File? in_format
    Boolean? rna
    Boolean? dna
    Boolean? amino
    String seq_file
  }
  command <<<
    ssu_esl_seqstat \
      ~{seq_file} \
      ~{if (report_persequence_line) then "-a" else ""} \
      ~{if (count_report_composition) then "-c" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (amino) then "--amino" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_persequence_line: ": report per-sequence info line, not just a summary"
    count_report_composition: ": count and report residue composition"
    in_format: ": specify that input file is in format <s>"
    rna: ": specify that <seqfile> contains RNA sequence"
    dna: ": specify that <seqfile> contains DNA sequence"
    amino: ": specify that <seqfile> contains protein sequence"
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}