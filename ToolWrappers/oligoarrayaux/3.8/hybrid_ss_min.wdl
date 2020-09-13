version 1.0

task Hybridssmin {
  input {
    Boolean? na
    Int? tm_in
    Int? tinc
    Int? tmax
    String? suffix
    String? var_output
    Boolean? debug
    Boolean? sodium
    Boolean? magnesium
    Boolean? polymer
    Boolean? prohibit
    Boolean? energy_only
    Boolean? no_isolate
    Boolean? m_fold
    Boolean? quiet
    String? max_bp
    Boolean? constraints
    File? base_pairs
    Boolean? all_pairs
    Int? max_loop
    Boolean? no_dangle
    Boolean? simple
    Boolean? prefilter
    Boolean? stream
    File file
  }
  command <<<
    hybrid_ss_min \
      ~{file} \
      ~{if (na) then "--NA" else ""} \
      ~{if defined(tm_in) then ("--tmin " +  '"' + tm_in + '"') else ""} \
      ~{if defined(tinc) then ("--tinc " +  '"' + tinc + '"') else ""} \
      ~{if defined(tmax) then ("--tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (sodium) then "--sodium" else ""} \
      ~{if (magnesium) then "--magnesium" else ""} \
      ~{if (polymer) then "--polymer" else ""} \
      ~{if (prohibit) then "--prohibit" else ""} \
      ~{if (energy_only) then "--energyOnly" else ""} \
      ~{if (no_isolate) then "--noisolate" else ""} \
      ~{if (m_fold) then "--mfold" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(max_bp) then ("--maxbp " +  '"' + max_bp + '"') else ""} \
      ~{if (constraints) then "--constraints" else ""} \
      ~{if defined(base_pairs) then ("--basepairs " +  '"' + base_pairs + '"') else ""} \
      ~{if (all_pairs) then "--allpairs" else ""} \
      ~{if defined(max_loop) then ("--maxloop " +  '"' + max_loop + '"') else ""} \
      ~{if (no_dangle) then "--nodangle" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (prefilter) then "--prefilter" else ""} \
      ~{if (stream) then "--stream" else ""}
  >>>
  parameter_meta {
    na: "=(RNA | DNA) (defaults to RNA)"
    tm_in: "(defaults to 37)"
    tinc: "(defaults to 1)"
    tmax: "(defaults to 37)"
    suffix: ""
    var_output: ""
    debug: ""
    sodium: "=<[Na+] in M> (defaults to 1)"
    magnesium: "=<[Mg++] in M> (defaults to 0)"
    polymer: ""
    prohibit: "=<i,j,k>"
    energy_only: ""
    no_isolate: ""
    m_fold: "[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)"
    quiet: ""
    max_bp: ""
    constraints: "[=<name of constraint file>] (defaults to prefix.aux)"
    base_pairs: "--circular"
    all_pairs: ""
    max_loop: "(defaults to 30)"
    no_dangle: ""
    simple: ""
    prefilter: "=<value1, value2>"
    stream: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}