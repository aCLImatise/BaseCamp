version 1.0

task GenRandSamp.py {
  input {
    Boolean? fastq_filenames_first
    Boolean? fastq_filenames_second
    Boolean? samples
    Boolean? output_dir
    Boolean? debug_level
  }
  command <<<
    gen_rand_samp.py \
      ~{true="--1" false="" fastq_filenames_first} \
      ~{true="--2" false="" fastq_filenames_second} \
      ~{true="--samples" false="" samples} \
      ~{true="--output_dir" false="" output_dir} \
      ~{true="--debug_level" false="" debug_level}
  >>>
  parameter_meta {
    fastq_filenames_first: "Fastq filenames separated by commas that contain the first mates."
    fastq_filenames_second: "Fastq filenames separated by commas that contain the second mates."
    samples: "Number of samples"
    output_dir: "Base output directory."
    debug_level: "determines how much debug output."
  }
}