version 1.0

task PancakeAddAli {
  input {
    File? pan_file
    File? output_pangenome_file
    Int? min_len
    Boolean? no_self_alignments
    String ali_file
  }
  command <<<
    pancake addAli \
      ~{ali_file} \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(output_pangenome_file) then ("--output " +  '"' + output_pangenome_file + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (no_self_alignments) then "--no_self_alignments" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    output_pangenome_file: "output pangenome file (PAN_FILE will be unchanged)"
    min_len: "minimum length of pairwise alignments to get included\\n(DEFAULT=25)"
    no_self_alignments: "if set, skip pairwise alignments between regions on\\nidentical chromosomes (DEFAULT=False)\\n"
    ali_file: "Alignment File (BLAST or nucmer output)"
  }
  output {
    File out_stdout = stdout()
    File out_output_pangenome_file = "${in_output_pangenome_file}"
  }
}