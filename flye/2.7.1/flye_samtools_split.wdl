version 1.0

task FlyeSamtoolsSplit {
  input {
    File? reference
    Int? threads
    String sam_tools
    String split
  }
  command <<<
    flye-samtools split \
      ~{sam_tools} \
      ~{split} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    split: ""
  }
}