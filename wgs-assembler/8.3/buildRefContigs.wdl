version 1.0

task BuildRefContigs {
  input {
    String? g
    String? m
    Boolean? min_overlap
    Boolean? build_unitigs_input
    Boolean? build_scaffolds_input
  }
  command <<<
    buildRefContigs \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (min_overlap) then "-minoverlap" else ""} \
      ~{if (build_unitigs_input) then "-U" else ""} \
      ~{if (build_scaffolds_input) then "-S" else ""}
  >>>
  parameter_meta {
    g: ""
    m: ""
    min_overlap: "fragments must overlap by at least this much"
    build_unitigs_input: "build unitigs, for input to cgw"
    build_scaffolds_input: "build scaffolds, for input to terminator"
  }
  output {
    File out_stdout = stdout()
  }
}