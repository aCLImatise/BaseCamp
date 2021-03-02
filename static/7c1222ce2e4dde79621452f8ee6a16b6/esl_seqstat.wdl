version 1.0

task Eslseqstat {
  input {
    Boolean? report_persequence_line
    Boolean? count_report_composition
    File? in_format
    Boolean? rna
    Boolean? dna
    Boolean? amino
    Boolean? comp_tbl
    String seq_file
  }
  command <<<
    esl_seqstat \
      ~{seq_file} \
      ~{if (report_persequence_line) then "-a" else ""} \
      ~{if (count_report_composition) then "-c" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (comp_tbl) then "--comptbl" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    report_persequence_line: ": report per-sequence info line, not just a summary"
    count_report_composition: ": count and report residue composition"
    in_format: ": specify that input file is in format <s>"
    rna: ": specify that <seqfile> contains RNA sequence"
    dna: ": specify that <seqfile> contains DNA sequence"
    amino: ": specify that <seqfile> contains protein sequence"
    comp_tbl: ": alternative output: a table of residue compositions per seq"
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}