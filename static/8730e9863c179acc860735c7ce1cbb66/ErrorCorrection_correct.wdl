version 1.0

task ErrorCorrectionCorrect {
  input {
    Int? consecutive_kmer_size
    Int? space_kmer_solid
    Int? space_kmer_space
    Int? consecutive_kmer_frequency_lower
    Int? consecutive_kmer_frequency_upper
    Int? space_kmer_frequency_lower
    Int? space_kmer_frequency_upper
    Int? minimum_consecutive_high
    Int? maximum_base_alternation
    Int? maximum_trimmed_bases
    Int? minimum_read_length
    Int? minimum_base_interval
    Boolean? delete_correction_failed
    Boolean? connect_reads_correction
    Boolean? correct_reads_end
    Boolean? increase_verbosity_default
    Boolean? append_additional_information
    Boolean? int_quality_ascii
    Boolean? int_quality_start
    Int? minimal_align_length
    Int? maximal_align_length
    Int? mean_align_length
    Float? identity_cutoff_aligned
    Float? maximum_simularity_best
  }
  command <<<
    ErrorCorrection correct \
      ~{if defined(consecutive_kmer_size) then ("-k " +  '"' + consecutive_kmer_size + '"') else ""} \
      ~{if defined(space_kmer_solid) then ("-K " +  '"' + space_kmer_solid + '"') else ""} \
      ~{if defined(space_kmer_space) then ("-S " +  '"' + space_kmer_space + '"') else ""} \
      ~{if defined(consecutive_kmer_frequency_lower) then ("-l " +  '"' + consecutive_kmer_frequency_lower + '"') else ""} \
      ~{if defined(consecutive_kmer_frequency_upper) then ("-e " +  '"' + consecutive_kmer_frequency_upper + '"') else ""} \
      ~{if defined(space_kmer_frequency_lower) then ("-L " +  '"' + space_kmer_frequency_lower + '"') else ""} \
      ~{if defined(space_kmer_frequency_upper) then ("-E " +  '"' + space_kmer_frequency_upper + '"') else ""} \
      ~{if defined(minimum_consecutive_high) then ("-m " +  '"' + minimum_consecutive_high + '"') else ""} \
      ~{if defined(maximum_base_alternation) then ("-c " +  '"' + maximum_base_alternation + '"') else ""} \
      ~{if defined(maximum_trimmed_bases) then ("-t " +  '"' + maximum_trimmed_bases + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-r " +  '"' + minimum_read_length + '"') else ""} \
      ~{if defined(minimum_base_interval) then ("-I " +  '"' + minimum_base_interval + '"') else ""} \
      ~{true="-x" false="" delete_correction_failed} \
      ~{true="-j" false="" connect_reads_correction} \
      ~{true="-y" false="" correct_reads_end} \
      ~{true="-v" false="" increase_verbosity_default} \
      ~{true="-F" false="" append_additional_information} \
      ~{true="-q" false="" int_quality_ascii} \
      ~{true="-Q" false="" int_quality_start} \
      ~{if defined(minimal_align_length) then ("-a " +  '"' + minimal_align_length + '"') else ""} \
      ~{if defined(maximal_align_length) then ("-A " +  '"' + maximal_align_length + '"') else ""} \
      ~{if defined(mean_align_length) then ("-i " +  '"' + mean_align_length + '"') else ""} \
      ~{if defined(identity_cutoff_aligned) then ("-u " +  '"' + identity_cutoff_aligned + '"') else ""} \
      ~{if defined(maximum_simularity_best) then ("-d " +  '"' + maximum_simularity_best + '"') else ""}
  >>>
  parameter_meta {
    consecutive_kmer_size: "Consecutive Kmer Size, Default: 17"
    space_kmer_solid: "Space Kmer Solid Part Size, Default: 16"
    space_kmer_space: "Space Kmer Space Part Size, Default: 9"
    consecutive_kmer_frequency_lower: "Consecutive Kmer Frequency lower limit, Default: 10"
    consecutive_kmer_frequency_upper: "Consecutive Kmer Frequency upper limit, Default: 255"
    space_kmer_frequency_lower: "Space Kmer Frequency lower limit, Default: 10"
    space_kmer_frequency_upper: "Space Kmer Frequency upper limit, Default: 255"
    minimum_consecutive_high: "Minimum consecutive high frequency kmers per high-freq block, Default: 10"
    maximum_base_alternation: "Maximum base alternation per read, Default: 2"
    maximum_trimmed_bases: "Maximum trimmed bases allowed on each side, Default: 0"
    minimum_read_length: "Minimum read length after correction, Default: 50"
    minimum_base_interval: "Minimum base interval between two correction, Default: 0"
    delete_correction_failed: "Delete correction failed reads, Default: false"
    connect_reads_correction: "Connect reads after correction, use 2 times to output quality, Default: false"
    correct_reads_end: "Correct reads end by overlapping information, Default: false"
    increase_verbosity_default: "Increase Verbosity, 3 times max, Default: 1"
    append_additional_information: "Append additional information to read ID (EXPERIMENTAL), Default: false"
    int_quality_ascii: "<int>    Quality ASCII base (Default: 33)"
    int_quality_start: "<int>    Quality start range offset (Default: 2)"
    minimal_align_length: "Minimal align length allowed, Default: 8"
    maximal_align_length: "Maximal align length allowed, Default: 70"
    mean_align_length: "Mean align length induced alignment, Default: 0"
    identity_cutoff_aligned: "Identity cutoff of aligned region, Default: 0.9"
    maximum_simularity_best: "Maximum simularity between best and second best result, Default: 0.7"
  }
}