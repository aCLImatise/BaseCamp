version 1.0

task BiomFromuc {
  input {
    File? input_fp
    File? output_fp
    File? rep_set_fp
  }
  command <<<
    biom from_uc \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(rep_set_fp) then ("--rep-set-fp " +  '"' + rep_set_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fp: "The input uc filepath.  [required]"
    output_fp: "The output BIOM filepath  [required]"
    rep_set_fp: "Fasta file containing representative sequences with\\nwhere sequences are labeled with OTU identifiers, and\\ndescription fields contain original sequence\\nidentifiers. This output is created, for example, by\\nvsearch with the --relabel_sha1 --relabel_keep\\noptions."
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
    File out_rep_set_fp = "${in_rep_set_fp}"
  }
}