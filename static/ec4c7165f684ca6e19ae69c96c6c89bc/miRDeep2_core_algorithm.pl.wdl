version 1.0

task MiRDeep2CoreAlgorithmpl {
  input {
    String? this_usage
    File? file_known_mirnas
    String? filtered
    String? output_only_ids
    Int? default
    String? option_sanger_sequences
    File? with_randfold_pvalues
    String? drosha_processing
  }
  command <<<
    miRDeep2_core_algorithm_pl \
      ~{if defined(this_usage) then ("-h " +  '"' + this_usage + '"') else ""} \
      ~{if defined(file_known_mirnas) then ("-s " +  '"' + file_known_mirnas + '"') else ""} \
      ~{if defined(filtered) then ("-t " +  '"' + filtered + '"') else ""} \
      ~{if defined(output_only_ids) then ("-u " +  '"' + output_only_ids + '"') else ""} \
      ~{if defined(default) then ("-v " +  '"' + default + '"') else ""} \
      ~{if defined(option_sanger_sequences) then ("-x " +  '"' + option_sanger_sequences + '"') else ""} \
      ~{if defined(with_randfold_pvalues) then ("-y " +  '"' + with_randfold_pvalues + '"') else ""} \
      ~{if defined(drosha_processing) then ("-z " +  '"' + drosha_processing + '"') else ""}
  >>>
  parameter_meta {
    this_usage: "this usage"
    file_known_mirnas: "file with known miRNAs"
    filtered: "filtered"
    output_only_ids: "output (only ids)"
    default: "(default 1)"
    option_sanger_sequences: "option for Sanger sequences"
    with_randfold_pvalues: "with randfold p-values"
    drosha_processing: "Drosha processing"
  }
  output {
    File out_stdout = stdout()
  }
}