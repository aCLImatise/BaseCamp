version 1.0

task FlyeSamtoolsMerge {
  input {
    File? reference
    Int? threads
    Boolean? n_url_f
    String? h
    String? b
    String sam_tools
    String merge
    String out_dot_bam
    String in_one_dot_bam
    String? inn_dot_bam
  }
  command <<<
    flye-samtools merge \
      ~{sam_tools} \
      ~{merge} \
      ~{out_dot_bam} \
      ~{in_one_dot_bam} \
      ~{inn_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="-nurlf" false="" n_url_f} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    n_url_f: ""
    h: ""
    b: ""
    sam_tools: ""
    merge: ""
    out_dot_bam: ""
    in_one_dot_bam: ""
    inn_dot_bam: ""
  }
}