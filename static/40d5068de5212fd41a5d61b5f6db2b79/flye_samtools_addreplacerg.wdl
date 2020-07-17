version 1.0

task FlyeSamtoolsAddreplacerg {
  input {
    File? reference
    Int? threads
    String sam_tools
    String add_replace_rg
  }
  command <<<
    flye-samtools addreplacerg \
      ~{sam_tools} \
      ~{add_replace_rg} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    add_replace_rg: ""
  }
}