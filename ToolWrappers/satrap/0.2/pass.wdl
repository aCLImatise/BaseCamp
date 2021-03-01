version 1.0

task Pass {
  input {
    Int? check_block
    Int? seed_step
    Int? fid
    Int? range
    Boolean? tags
    Int? lib_type
  }
  command <<<
    pass \
      ~{if defined(check_block) then ("-check_block " +  '"' + check_block + '"') else ""} \
      ~{if defined(seed_step) then ("-seed_step " +  '"' + seed_step + '"') else ""} \
      ~{if defined(fid) then ("-fid " +  '"' + fid + '"') else ""} \
      ~{if defined(range) then ("-range " +  '"' + range + '"') else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if defined(lib_type) then ("-lib_type " +  '"' + lib_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check_block: "\\"
    seed_step: "\\"
    fid: "[-phred64] > results.sam \\"
    range: "600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \\"
    tags: "/1 /2 > paired_alignments.sam"
    lib_type: "F3  > paired_alignments.sam"
  }
  output {
    File out_stdout = stdout()
  }
}