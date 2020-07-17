version 1.0

task SignalGenerator.sh {
  input {
    Boolean? directory_containing_sample_files
    Boolean? genome_size_file
    Boolean? output_directory_required
    Boolean? directory_containing_input_files
    Boolean? file_regions_signal
    Boolean? bin_size_signal
    Boolean? fragment_lengths_required
    Boolean? number_processors_used
    Boolean? alignment_type_paired
    Boolean? normalization_method_chromaverage
  }
  command <<<
    SignalGenerator.sh \
      ~{true="-s" false="" directory_containing_sample_files} \
      ~{true="-g" false="" genome_size_file} \
      ~{true="-o" false="" output_directory_required} \
      ~{true="-c" false="" directory_containing_input_files} \
      ~{true="-r" false="" file_regions_signal} \
      ~{true="-b" false="" bin_size_signal} \
      ~{true="-f" false="" fragment_lengths_required} \
      ~{true="-p" false="" number_processors_used} \
      ~{true="-t" false="" alignment_type_paired} \
      ~{true="-n" false="" normalization_method_chromaverage}
  >>>
  parameter_meta {
    directory_containing_sample_files: "Directory containing sample files (required)"
    genome_size_file: "Genome size file (required)"
    output_directory_required: "Output Directory (required)"
    directory_containing_input_files: "directory containing input or Control files"
    file_regions_signal: "file with Regions to get signal for (required)"
    bin_size_signal: "Bin size for signal generation (default: 10)"
    fragment_lengths_required: "Fragment lengths (required if -t is \"single\")"
    number_processors_used: "Number of processors used by R scripts (default: 1)"
    alignment_type_paired: "Alignment type, paired or single (default: single)"
    normalization_method_chromaverage: "Normalization method, chromAverage or depth (default: chromAverage)"
  }
}