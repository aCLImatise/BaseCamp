version 1.0

task DshDownsampleFastq {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    Boolean? output_fast_q_file
    Boolean? probability
    Boolean? seed
    String? args
  }
  command <<<
    dsh-downsample-fastq \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fastq-file" false="" input_fast_q_file} \
      ~{true="--output-fastq-file" false="" output_fast_q_file} \
      ~{true="--probability" false="" probability} \
      ~{true="--seed" false="" seed}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    probability: "[class java.lang.Double]  probability a FASTQ record will be removed, [0.0-1.0] [required]"
    seed: "[class java.lang.Integer]  random number seed, default relates to current time [optional]"
    args: ""
  }
}