version 1.0

task BuildLmerTable {
  input {
    Int? tandem
    Boolean? min
    Boolean? __output
    String? freq
    String? sequence
    String? l
    String? opts
  }
  command <<<
    build_lmer_table \
      ~{opts} \
      ~{if defined(tandem) then ("-tandem " +  '"' + tandem + '"') else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (__output) then "-v" else ""} \
      ~{if defined(freq) then ("-freq " +  '"' + freq + '"') else ""} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tandem: "--- tandem distance window (def: 500)"
    min: "<#> --- smallest number of required lmers (def: 3)"
    __output: "--- output a small amount of debugging information."
    freq: ""
    sequence: ""
    l: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}