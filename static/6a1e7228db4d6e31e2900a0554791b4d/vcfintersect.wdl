version 1.0

task Vcfintersect {
  input {
    Boolean? merge_to
    String? vcf_file
  }
  command <<<
    vcfintersect \
      ~{vcf_file} \
      ~{true="--merge-to" false="" merge_to}
  >>>
  parameter_meta {
    merge_to: "TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG in the current file."
    vcf_file: ""
  }
}