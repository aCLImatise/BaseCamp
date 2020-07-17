version 1.0

task BiomFromUc {
  input {
    File? input_fp
    File? output_fp
    File? rep_set_fp
  }
  command <<<
    biom from-uc \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(rep_set_fp) then ("--rep-set-fp " +  '"' + rep_set_fp + '"') else ""}
  >>>
  parameter_meta {
    input_fp: "The input uc filepath.  [required]"
    output_fp: "The output BIOM filepath  [required]"
    rep_set_fp: "Fasta file containing representative sequences with where sequences are labeled with OTU identifiers, and description fields contain original sequence identifiers. This output is created, for example, by vsearch with the --relabel_sha1 --relabel_keep options."
  }
}