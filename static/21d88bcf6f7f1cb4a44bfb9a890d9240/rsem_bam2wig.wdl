version 1.0

task RsemBam2wig {
  input {
    Boolean? no_fractional_weight
    String sorted_alignment_file
    String wig_output
    String wiggle_name
  }
  command <<<
    rsem-bam2wig \
      ~{sorted_alignment_file} \
      ~{wig_output} \
      ~{wiggle_name} \
      ~{true="--no-fractional-weight" false="" no_fractional_weight}
  >>>
  parameter_meta {
    no_fractional_weight: ""
    sorted_alignment_file: ""
    wig_output: ""
    wiggle_name: ""
  }
}