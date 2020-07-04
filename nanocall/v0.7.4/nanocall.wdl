version 1.0

task Nanocall {
  input {
    Int? t
    File? o
    Boolean? write_fast_five
    String? pore
    String nano_call
  }
  command <<<
    nanocall \
      ~{nano_call} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="--write-fast5" false="" write_fast_five} \
      ~{if defined(pore) then ("--pore " +  '"' + pore + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    o: ""
    write_fast_five: ""
    pore: ""
    nano_call: "[-t <int>] [-o <file>] [--write-fast5] [--pore <r73|r9>] [-m <strand:file>] ...  [--model-fofn <file>] [-s <file>] [--pr-stay <float>] [--pr-skip <float>] [--no-basecall] [--basecall] [--no-train] [--train] [--no-train-scaling] [--no-train-transitions] [--double-strand-scaling] [--single-strand-scaling] [--1d] [--scaling-num-events <int>] [--scaling-max-rounds <int>] [--scaling-min-progress <float>] [--scaling-select-threshold <float>] [--fasta-line-width <int>] [--min-ed-events <int>] [--max-ed-events <int>] [--trim-ed-sq-start <int>] [--trim-ed-sq-end <int>] [--trim-ed-hp-start <int>] [--trim-ed-hp-end <int>] [--train-drift <0|1>] [--stats <file>] [--log <string>] ...  [--chunk-size <int>] [--ed-group <000|001|...>] [--] [--version] [-h] <path> ..."
  }
}