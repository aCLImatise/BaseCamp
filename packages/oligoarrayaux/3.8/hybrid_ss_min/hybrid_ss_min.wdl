version 1.0

task Hybridssmin {
  input {
    Boolean? constraints
    File? base_pairs
    Boolean? all_pairs
    File file
  }
  command <<<
    hybrid_ss_min \
      ~{file} \
      ~{if (constraints) then "--constraints" else ""} \
      ~{if defined(base_pairs) then ("--basepairs " +  '"' + base_pairs + '"') else ""} \
      ~{if (all_pairs) then "--allpairs" else ""}
  >>>
  parameter_meta {
    constraints: "[=<name of constraint file>] (defaults to prefix.aux)"
    base_pairs: "--circular"
    all_pairs: "--maxloop=<maximum bulge/interior loop size> (defaults to 30)\\n--nodangle\\n--simple\\n--prefilter=<value1, value2>\\n--stream"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}