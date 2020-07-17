version 1.0

task OKeepOrRemoveSamplesFromFasta {
  input {
    Boolean? retain
    File? output_file_name
    String fast_a_file_path
    String samples_file_path
  }
  command <<<
    o-keep-or-remove-samples-from-fasta \
      ~{fast_a_file_path} \
      ~{samples_file_path} \
      ~{true="--retain" false="" retain} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    retain: "If declared, resulting FASTA file would contain samples that \"match\" sample names listed in the \"samples\" file. The default behavior is the vice versa."
    output_file_name: "Output file name."
    fast_a_file_path: "FASTA file to remove or retain samples from"
    samples_file_path: "File that contains a sample name for each line"
  }
}