version 1.0

task SeqhaxPreapp {
  input {
    String? add_seq_adding
    String? add_seq_suffix
    Boolean? paired_mode_reads
    String seq_hax
    String seq
  }
  command <<<
    seqhax preapp \
      ~{seq_hax} \
      ~{seq} \
      ~{if defined(add_seq_adding) then ("-P " +  '"' + add_seq_adding + '"') else ""} \
      ~{if defined(add_seq_suffix) then ("-S " +  '"' + add_seq_suffix + '"') else ""} \
      ~{if (paired_mode_reads) then "-p" else ""}
  >>>
  parameter_meta {
    add_seq_adding: "Add SEQ as prefix, adding quality charachters if fastq."
    add_seq_suffix: "Add SEQ as suffix, adding quality charachters if fastq."
    paired_mode_reads: "Paired mode: reads are kept/discared in pairs"
    seq_hax: ""
    seq: ""
  }
  output {
    File out_stdout = stdout()
  }
}