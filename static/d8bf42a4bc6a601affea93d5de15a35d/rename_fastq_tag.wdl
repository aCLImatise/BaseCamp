version 1.0

task RenameFastqTag {
  input {
    String? fast_q
    String? t
  }
  command <<<
    rename_fastq_tag \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    fast_q: ""
    t: ""
  }
}