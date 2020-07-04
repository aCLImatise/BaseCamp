version 1.0

task BuildLmerTable {
  input {
    String? tandem
    Boolean? min
    Boolean? __output
    String? l
    String? sequence
    String? freq
    String? opts
  }
  command <<<
    build_lmer_table \
      ~{opts} \
      ~{if defined(tandem) then ("-tandem " +  '"' + tandem + '"') else ""} \
      ~{true="-min" false="" min} \
      ~{true="-v" false="" __output} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(freq) then ("-freq " +  '"' + freq + '"') else ""}
  >>>
  parameter_meta {
    tandem: "--- tandem distance window (def: 500)"
    min: "<#> --- smallest number of required lmers (def: 3)"
    __output: "--- output a small amount of debugging information."
    l: ""
    sequence: ""
    freq: ""
    opts: ""
  }
}