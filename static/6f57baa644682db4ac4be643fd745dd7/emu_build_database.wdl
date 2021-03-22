version 1.0

task EmuBuilddatabase {
  input {
    File? names
    File? nodes
    File? sequences
    Int? seq_two_tax
  }
  command <<<
    emu build_database \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(seq_two_tax) then ("--seq2tax " +  '"' + seq_two_tax + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/emu:1.0.1--0"
  }
  parameter_meta {
    names: "path to names.dmp file"
    nodes: "path to nodes.dmp file"
    sequences: "path to fasta of database sequences"
    seq_two_tax: "path to tsv mapping species tax id to fasta sequence\\nheaders\\n"
  }
  output {
    File out_stdout = stdout()
  }
}