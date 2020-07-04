version 1.0

task Kalign {
  input {
    Boolean? format
    Boolean? reformat
    String? i
    String? o
  }
  command <<<
    kalign \
      ~{true="--format" false="" format} \
      ~{true="--reformat" false="" reformat} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    format: ": Output format. [Fasta]"
    reformat: ": Reformat existing alignment. [NA]"
    i: ""
    o: ""
  }
}