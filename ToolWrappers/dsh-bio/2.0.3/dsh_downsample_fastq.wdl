version 1.0

task Dshdownsamplefastq {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    File? output_fast_q_file
    Boolean? probability
    Boolean? seed
    String? args
  }
  command <<<
    dsh_downsample_fastq \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_q_file) then "--input-fastq-file" else ""} \
      ~{if (output_fast_q_file) then "--output-fastq-file" else ""} \
      ~{if (probability) then "--probability" else ""} \
      ~{if (seed) then "--seed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    probability: "[class java.lang.Double]  probability a FASTQ record will be removed, [0.0-1.0] [required]"
    seed: "[class java.lang.Integer]  random number seed, default relates to current time [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_q_file = "${in_output_fast_q_file}"
  }
}