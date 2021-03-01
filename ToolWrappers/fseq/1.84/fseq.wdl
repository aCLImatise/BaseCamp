version 1.0

task Fseq {
  input {
    Directory? background_directory_defaultnone
    String? genomic_count_sequence
    Directory? input_directory_defaultcurrent
    Int? fragment_size_defaultestimated
    Int? feature_length_default
    Directory? output_directory_defaultcurrent
    String? of
    Directory? ploidyinput_directory_defaultnone
    Int? wiggle_step_default
    Float? threshold_standard_deviations
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
      ~{if (verbose_output) then "-v" else ""} \
      ~{if defined(wg) then ("-wg " +  '"' + wg + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    background_directory_defaultnone: "background directory (default=none)"
    genomic_count_sequence: "genomic count of sequence reads (defualt =\\ncalculated)"
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
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaultcurrent = "${in_output_directory_defaultcurrent}"
  }
}