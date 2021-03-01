version 1.0

task Hybridmin {
  input {
    Int? tm_in
    Int? tinc
    Int? tmax
    Int? suffix
    Boolean? magnesium
    Boolean? prohibit
    Boolean? energy_only
    Boolean? constraints
    Int? all_pairs
    Boolean? prefilter
    Int file_one
    Int file_two
  }
  command <<<
    hybrid_min \
      ~{file_one} \
      ~{file_two} \
      ~{if defined(tm_in) then ("--tmin " +  '"' + tm_in + '"') else ""} \
      ~{if defined(tinc) then ("--tinc " +  '"' + tinc + '"') else ""} \
      ~{if defined(tmax) then ("--tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (magnesium) then "--magnesium" else ""} \
      ~{if (prohibit) then "--prohibit" else ""} \
      ~{if (energy_only) then "--energyOnly" else ""} \
      ~{if (constraints) then "--constraints" else ""} \
      ~{if defined(all_pairs) then ("--allpairs " +  '"' + all_pairs + '"') else ""} \
      ~{if (prefilter) then "--prefilter" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tm_in: "(defaults to 37)"
    tinc: "(defaults to 1)"
    tmax: "(defaults to 37)"
    suffix: "=<[Na+] in M> (defaults to 1)"
    magnesium: "=<[Mg++] in M> (defaults to 0)"
    prohibit: "=<i,j,k>"
    energy_only: "[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)"
    constraints: "[=<name of constraint file>] (defaults to prefix.aux)"
    all_pairs: "(defaults to 30)"
    prefilter: "=<value1, value2>"
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}