version 1.0

task SignalGeneratorsh {
  input {
    Boolean? directory_containing_sample_files
    Boolean? genome_size_file
    Directory? output_directory_required
    Boolean? directory_containing_input_files
    Boolean? file_regions_signal
    Boolean? bin_size_signal
    Boolean? fragment_lengths_required
    Boolean? number_processors_used
    Boolean? alignment_type_paired
    Boolean? normalization_method_chromaverage
  }
  command <<<
    SignalGenerator_sh \
      ~{if (directory_containing_sample_files) then "-s" else ""} \
      ~{if (genome_size_file) then "-g" else ""} \
      ~{if (output_directory_required) then "-o" else ""} \
      ~{if (directory_containing_input_files) then "-c" else ""} \
      ~{if (file_regions_signal) then "-r" else ""} \
      ~{if (bin_size_signal) then "-b" else ""} \
      ~{if (fragment_lengths_required) then "-f" else ""} \
      ~{if (number_processors_used) then "-p" else ""} \
      ~{if (alignment_type_paired) then "-t" else ""} \
      ~{if (normalization_method_chromaverage) then "-n" else ""}
  >>>
  parameter_meta {
    directory_containing_sample_files: "Directory containing sample files (required)"
    genome_size_file: "Genome size file (required)"
    output_directory_required: "Output Directory (required)"
    directory_containing_input_files: "directory containing input or Control files"
    file_regions_signal: "file with Regions to get signal for (required)"
    bin_size_signal: "Bin size for signal generation (default: 10)"
    fragment_lengths_required: "Fragment lengths (required if -t is \\\"single\\\")"
    number_processors_used: "Number of processors used by R scripts (default: 1)"
    alignment_type_paired: "Alignment type, paired or single (default: single)"
    normalization_method_chromaverage: "Normalization method, chromAverage or depth (default: chromAverage)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_required = "${in_output_directory_required}"
  }
}