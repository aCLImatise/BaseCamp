version 1.0

task Graphdump {
  input {
    Int? k
    String graph_dump
  }
  command <<<
    graphdump \
      ~{graph_dump} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    k: ""
    graph_dump: "-k <integer> [-s <>] ...  -f <seq|group|dot|gfa1|gfa2|fasta> [--prefix] [--] [--version] [-h] <file name>"
  }
}