version 1.0

task BuildRefContigs {
  input {
    String? min_overlap
    Boolean? build_unitigs_input
    Boolean? build_scaffolds_input
  }
  command <<<
    buildRefContigs \
      ~{if defined(min_overlap) then ("-minoverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (build_unitigs_input) then "-U" else ""} \
      ~{if (build_scaffolds_input) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_overlap: "fragments must overlap by at least this much"
    build_unitigs_input: "build unitigs, for input to cgw"
    build_scaffolds_input: "build scaffolds, for input to terminator"
  }
  output {
    File out_stdout = stdout()
  }
}