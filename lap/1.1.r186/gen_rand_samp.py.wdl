version 1.0

task GenRandSamppy {
  input {
    Boolean? fastq_filenames_separated
    Directory? output_dir
    Boolean? debug_level
    Int? num_trials
    Int? sample_size
    String? var_input
    Int? two
    String? samples
    String? trials
  }
  command <<<
    gen_rand_samp_py \
      ~{if (fastq_filenames_separated) then "--1" else ""} \
      ~{if (output_dir) then "--output_dir" else ""} \
      ~{if (debug_level) then "--debug_level" else ""} \
      ~{if defined(num_trials) then ("--num_trials " +  '"' + num_trials + '"') else ""} \
      ~{if defined(sample_size) then ("--sample_size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(two) then ("--2 " +  '"' + two + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(trials) then ("--trials " +  '"' + trials + '"') else ""}
  >>>
  parameter_meta {
    fastq_filenames_separated: "Fastq filenames separated by commas that contain the first"
    output_dir: "Base output directory."
    debug_level: "determines how much debug output."
    num_trials: ""
    sample_size: ""
    var_input: ""
    two: ""
    samples: ""
    trials: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}