version 1.0

task Hybridmin {
  input {
    Boolean? na
    Int? tm_in
    Int? tinc
    Int? tmax
    String? suffix
    String? var_output
    Boolean? sodium
    Boolean? magnesium
    Boolean? polymer
    Boolean? prohibit
    Boolean? energy_only
    Boolean? no_isolate
    Boolean? zip
    Boolean? m_fold
    Boolean? quiet
    Boolean? constraints
    File? base_pairs
    Boolean? all_pairs
    Int? max_loop
    Boolean? no_dangle
    Boolean? prefilter
    Boolean? stream
    Int file_one
    Int file_two
  }
  command <<<
    hybrid_min \
      ~{file_one} \
      ~{file_two} \
      ~{if (na) then "--NA" else ""} \
      ~{if defined(tm_in) then ("--tmin " +  '"' + tm_in + '"') else ""} \
      ~{if defined(tinc) then ("--tinc " +  '"' + tinc + '"') else ""} \
      ~{if defined(tmax) then ("--tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (sodium) then "--sodium" else ""} \
      ~{if (magnesium) then "--magnesium" else ""} \
      ~{if (polymer) then "--polymer" else ""} \
      ~{if (prohibit) then "--prohibit" else ""} \
      ~{if (energy_only) then "--energyOnly" else ""} \
      ~{if (no_isolate) then "--noisolate" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (m_fold) then "--mfold" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (constraints) then "--constraints" else ""} \
      ~{if defined(base_pairs) then ("--basepairs " +  '"' + base_pairs + '"') else ""} \
      ~{if (all_pairs) then "--allpairs" else ""} \
      ~{if defined(max_loop) then ("--maxloop " +  '"' + max_loop + '"') else ""} \
      ~{if (no_dangle) then "--nodangle" else ""} \
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
    sodium: "=<[Na+] in M> (defaults to 1)"
    magnesium: "=<[Mg++] in M> (defaults to 0)"
    polymer: ""
    prohibit: "=<i,j,k>"
    energy_only: ""
    no_isolate: ""
    zip: ""
    m_fold: "[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)"
    quiet: ""
    constraints: "[=<name of constraint file>] (defaults to prefix.aux)"
    base_pairs: ""
    all_pairs: ""
    max_loop: "(defaults to 30)"
    no_dangle: ""
    prefilter: "=<value1, value2>"
    stream: ""
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}