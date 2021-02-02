version 1.0

task DeepbgcTrain {
  input {
    String? l
    String? o
    String? t
    String? m
    Boolean? debug
    String inputs
  }
  command <<<
    deepbgc train \
      ~{inputs} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    l: ""
    o: ""
    t: ""
    m: ""
    debug: ""
    inputs: "Training sequences (Pfam TSV) file paths"
  }
  output {
    File out_stdout = stdout()
  }
}