version 1.0

task RestrictRepsetpy {
  input {
    File? biom_fp
    File? rep_set_fp
    File? rep_set_out_fp
  }
  command <<<
    restrict_repset_py \
      ~{if defined(biom_fp) then ("--biom_fp " +  '"' + biom_fp + '"') else ""} \
      ~{if defined(rep_set_fp) then ("--repset_fp " +  '"' + rep_set_fp + '"') else ""} \
      ~{if defined(rep_set_out_fp) then ("--repset_out_fp " +  '"' + rep_set_out_fp + '"') else ""}
  >>>
  parameter_meta {
    biom_fp: "Path to a biom-format file with OTU-Sample abundance\\ndata."
    rep_set_fp: "Path to a FASTA-format file containing the\\nrepresentative set of OTUs"
    rep_set_out_fp: "Path to the new restricted repset file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}