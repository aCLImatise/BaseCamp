version 1.0

task OboIntersectionpl {
  input {
    Boolean? l
    Boolean? r
    String usage
  }
  command <<<
    obo_intersection_pl \
      ~{usage} \
      ~{if (l) then "-l" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    l: "OBO input file 1"
    r: "OBO input file 2"
    usage: ": obo_intersection.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}