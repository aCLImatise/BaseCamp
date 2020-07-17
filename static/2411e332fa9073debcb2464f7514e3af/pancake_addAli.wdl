version 1.0

task PancakeAddAli {
  input {
    String? pan_file
    String? output_pangenome_file
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
      ~{true="--no_self_alignments" false="" no_self_alignments}
  >>>
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    output_pangenome_file: "output pangenome file (PAN_FILE will be unchanged)"
    min_len: "minimum length of pairwise alignments to get included (DEFAULT=25)"
    no_self_alignments: "if set, skip pairwise alignments between regions on identical chromosomes (DEFAULT=False)"
    ali_file: "Alignment File (BLAST or nucmer output)"
  }
}