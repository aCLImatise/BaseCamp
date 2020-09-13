version 1.0

task BiscuitTview {
  input {
    String? pos_go_directly
    Int? max_number_reads
    String? highlight_reads_read
    Int? flanking_sequence_length
    String in_dot_bam
    String ref_dot_fa
  }
  command <<<
    biscuit tview \
      ~{in_dot_bam} \
      ~{ref_dot_fa} \
      ~{if defined(pos_go_directly) then ("-g " +  '"' + pos_go_directly + '"') else ""} \
      ~{if defined(max_number_reads) then ("-m " +  '"' + max_number_reads + '"') else ""} \
      ~{if defined(highlight_reads_read) then ("-n " +  '"' + highlight_reads_read + '"') else ""} \
      ~{if defined(flanking_sequence_length) then ("-f " +  '"' + flanking_sequence_length + '"') else ""}
  >>>
  parameter_meta {
    pos_go_directly: ":pos     go directly to this position"
    max_number_reads: "max number of reads to load per position [50]"
    highlight_reads_read: "highlight the read(s) with the read name"
    flanking_sequence_length: "flanking sequence length [10]"
    in_dot_bam: ""
    ref_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}