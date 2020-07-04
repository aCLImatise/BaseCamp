version 1.0

task MedakaFeatures {
  input {
    String bam
    String output_features_file
  }
  command <<<
    medaka features \
      ~{bam} \
      ~{output_features_file}
  >>>
  parameter_meta {
    bam: "Input alignments."
    output_features_file: "Output features file."
  }
}