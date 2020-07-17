version 1.0

task Fseq {
  input {
    String? background_directory_defaultnone
    String? genomic_count_sequence
    String? input_directory_defaultcurrent
    String? fragment_size_defaultestimated
    String? feature_length_default
    String? output_directory_defaultcurrent
    String? of
    String? ploidyinput_directory_defaultnone
    String? wiggle_step_default
    String? threshold_standard_deviations
    Boolean? verbose_output
    String? wg
  }
  command <<<
    fseq \
      ~{if defined(background_directory_defaultnone) then ("-b " +  '"' + background_directory_defaultnone + '"') else ""} \
      ~{if defined(genomic_count_sequence) then ("-c " +  '"' + genomic_count_sequence + '"') else ""} \
      ~{if defined(input_directory_defaultcurrent) then ("-d " +  '"' + input_directory_defaultcurrent + '"') else ""} \
      ~{if defined(fragment_size_defaultestimated) then ("-f " +  '"' + fragment_size_defaultestimated + '"') else ""} \
      ~{if defined(feature_length_default) then ("-l " +  '"' + feature_length_default + '"') else ""} \
      ~{if defined(output_directory_defaultcurrent) then ("-o " +  '"' + output_directory_defaultcurrent + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(ploidyinput_directory_defaultnone) then ("-p " +  '"' + ploidyinput_directory_defaultnone + '"') else ""} \
      ~{if defined(wiggle_step_default) then ("-s " +  '"' + wiggle_step_default + '"') else ""} \
      ~{if defined(threshold_standard_deviations) then ("-t " +  '"' + threshold_standard_deviations + '"') else ""} \
      ~{true="-v" false="" verbose_output} \
      ~{if defined(wg) then ("-wg " +  '"' + wg + '"') else ""}
  >>>
  parameter_meta {
    background_directory_defaultnone: "background directory (default=none)"
    genomic_count_sequence: "genomic count of sequence reads (defualt = calculated)"
    input_directory_defaultcurrent: "input directory (default=current directory)"
    fragment_size_defaultestimated: "fragment size (default=estimated from data)"
    feature_length_default: "feature length (default=600)"
    output_directory_defaultcurrent: "output directory (default=current directory)"
    of: "output format (default wig)"
    ploidyinput_directory_defaultnone: "ploidy/input directory (default=none)"
    wiggle_step_default: "wiggle track step (default=1)"
    threshold_standard_deviations: "threshold (standard deviations) (default=4.0)"
    verbose_output: "verbose output"
    wg: "wg threshold set (defualt = calculated)"
  }
}