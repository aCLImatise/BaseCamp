version 1.0

task Pass {
  input {
    Boolean? tags
    Int? range
    Int? lib_type
  }
  command <<<
    pass \
      ~{if (tags) then "-tags" else ""} \
      ~{if defined(range) then ("-range " +  '"' + range + '"') else ""} \
      ~{if defined(lib_type) then ("-lib_type " +  '"' + lib_type + '"') else ""}
  >>>
  parameter_meta {
    tags: "/1 /2 > paired_alignments.sam"
    range: "3000 100000 -unique_pair 1 -unique_single 1 -stdout \\"
    lib_type: "F3  > paired_alignments.sam"
  }
  output {
    File out_stdout = stdout()
  }
}