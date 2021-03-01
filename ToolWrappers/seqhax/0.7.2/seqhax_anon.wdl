version 1.0

task SeqhaxAnon {
  input {
    Boolean? use_base_ids
    Boolean? treat_reads_add
  }
  command <<<
    seqhax anon \
      ~{if (use_base_ids) then "-x" else ""} \
      ~{if (treat_reads_add) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_base_ids: "Use base-16 sequence IDs."
    treat_reads_add: "Treat reads as pairs, add /1 or /2 to headers."
  }
  output {
    File out_stdout = stdout()
  }
}