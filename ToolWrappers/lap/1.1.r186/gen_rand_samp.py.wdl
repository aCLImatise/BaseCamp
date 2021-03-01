version 1.0

task GenRandSamppy {
  input {
    Boolean? fastq_filenames_separated
    Directory? output_dir
    Boolean? debug_level
  }
  command <<<
    gen_rand_samp_py \
      ~{if (fastq_filenames_separated) then "--1" else ""} \
      ~{if (output_dir) then "--output_dir" else ""} \
      ~{if (debug_level) then "--debug_level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastq_filenames_separated: "Fastq filenames separated by commas that contain the first"
    output_dir: "Base output directory."
    debug_level: "determines how much debug output."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}