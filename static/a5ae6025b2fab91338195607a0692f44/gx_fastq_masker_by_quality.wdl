version 1.0

task GxFastqMaskerByQuality {
  input {
    String? format
    String? mask_character
    String? score_comparison
    String? quality_score
    Boolean? lowercase
    String input_file
    String output_file
  }
  command <<<
    gx-fastq-masker-by-quality \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(mask_character) then ("--mask_character " +  '"' + mask_character + '"') else ""} \
      ~{if defined(score_comparison) then ("--score_comparison " +  '"' + score_comparison + '"') else ""} \
      ~{if defined(quality_score) then ("--quality_score " +  '"' + quality_score + '"') else ""} \
      ~{true="--lowercase" false="" lowercase}
  >>>
  parameter_meta {
    format: "FASTQ variant type"
    mask_character: "Mask Character to use"
    score_comparison: "Mask base when score is"
    quality_score: "Quality Score"
    lowercase: "Use lowercase masking"
    input_file: ""
    output_file: ""
  }
}