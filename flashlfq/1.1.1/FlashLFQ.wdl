version 1.0

task FlashLFQ {
  input {
    Boolean? idt
    Boolean? rep
    Boolean? sil
    Boolean? out
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
    Boolean? fcc
    Boolean? mcm
    Boolean? bur
    Boolean? sha
    Boolean? rns
  }
  command <<<
    FlashLFQ \
      ~{true="--idt" false="" idt} \
      ~{true="--rep" false="" rep} \
      ~{true="--sil" false="" sil} \
      ~{true="--out" false="" out} \
      ~{true="--nor" false="" nor} \
      ~{true="--ppm" false="" ppm} \
      ~{true="--iso" false="" iso} \
      ~{true="--int" false="" default_false_bool_integrate} \
      ~{true="--nis" false="" nis} \
      ~{true="--chg" false="" chg} \
      ~{true="--thr" false="" thr} \
      ~{true="--mbr" false="" mbr} \
      ~{true="--mrt" false="" mrt} \
      ~{true="--rmc" false="" rmc} \
      ~{true="--bay" false="" bay} \
      ~{true="--ctr" false="" ctr} \
      ~{true="--fcc" false="" fcc} \
      ~{true="--mcm" false="" mcm} \
      ~{true="--bur" false="" bur} \
      ~{true="--sha" false="" sha} \
      ~{true="--rns" false="" rns}
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
    ctr: "string; control condition for Bayesian protein fold-change analysis"
    fcc: "(Default: 0.1) double; fold-change cutoff for Bayesian protein fold-change analysis"
    mcm: "(Default: 3000) int; number of markov-chain monte carlo iterations for the Bayesian protein fold-change analysis"
    bur: "(Default: 1000) int; number of markov-chain monte carlo burn-in iterations"
    sha: "(Default: false) bool; use shared peptides for protein quantification"
    rns: "int; random seed for the Bayesian protein fold-change analysis"
  }
}