version 1.0

task FlashLFQ {
  input {
    Boolean? idt
    Boolean? rep
    Boolean? sil
    Directory? out
    Boolean? nor
    Boolean? ppm
    Boolean? iso
    Boolean? default_false_bool_integrate
    Boolean? nis
    Boolean? chg
    Boolean? thr
    Boolean? mbr
    Boolean? mrt
    Boolean? rmc
    Boolean? bay
    Boolean? ctr
    Boolean? mcm
    Boolean? bur
    String analysis
    String iterations
    String quantification
  }
  command <<<
    FlashLFQ \
      ~{analysis} \
      ~{iterations} \
      ~{quantification} \
      ~{if (idt) then "--idt" else ""} \
      ~{if (rep) then "--rep" else ""} \
      ~{if (sil) then "--sil" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (nor) then "--nor" else ""} \
      ~{if (ppm) then "--ppm" else ""} \
      ~{if (iso) then "--iso" else ""} \
      ~{if (default_false_bool_integrate) then "--int" else ""} \
      ~{if (nis) then "--nis" else ""} \
      ~{if (chg) then "--chg" else ""} \
      ~{if (thr) then "--thr" else ""} \
      ~{if (mbr) then "--mbr" else ""} \
      ~{if (mrt) then "--mrt" else ""} \
      ~{if (rmc) then "--rmc" else ""} \
      ~{if (bay) then "--bay" else ""} \
      ~{if (ctr) then "--ctr" else ""} \
      ~{if (mcm) then "--mcm" else ""} \
      ~{if (bur) then "--bur" else ""}
  >>>
  parameter_meta {
    idt: "Required. string; identification file path"
    rep: "Required. string; directory containing spectral data files"
    sil: "(Default: false) bool; silent mode"
    out: "string; output directory"
    nor: "(Default: false) bool; normalize intensity results"
    ppm: "(Default: 10) double; ppm tolerance"
    iso: "(Default: 5) double; isotopic distribution tolerance in ppm"
    default_false_bool_integrate: "(Default: false) bool; integrate peak areas (not recommended)"
    nis: "(Default: 2) int; number of isotopes required to be observed"
    chg: "(Default: false) bool; use only precursor charge state"
    thr: "(Default: -1) int; number of CPU threads to use"
    mbr: "(Default: false) bool; match between runs"
    mrt: "(Default: 2.5) double; maximum MBR window in minutes"
    rmc: "(Default: false) bool; require MS/MS ID in condition"
    bay: "(Default: false) bool; Bayesian protein fold-change analysis"
    ctr: "string; control condition for Bayesian protein fold-change"
    mcm: "(Default: 3000) int; number of markov-chain monte carlo\\niterations for the Bayesian protein fold-change analysis"
    bur: "(Default: 1000) int; number of markov-chain monte carlo burn-in"
    analysis: "--fcc        (Default: 0.1) double; fold-change cutoff for Bayesian protein"
    iterations: "--sha        (Default: false) bool; use shared peptides for protein"
    quantification: "--rns        int; random seed for the Bayesian protein fold-change analysis"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}