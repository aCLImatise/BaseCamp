version 1.0

task RemoveCustomFeature.py {
  input {
    String? organism
    String? output_directory_allowed
    String? transcripts
  }
  command <<<
    remove_custom_feature.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_allowed) then ("--output " +  '"' + output_directory_allowed + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the list of allowed candidate fusion genes is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_allowed: "The output directory where the list of allowed candidate fusion genes is generated. Default is '.'."
    transcripts: "List of transcripts which should be removed."
  }
}