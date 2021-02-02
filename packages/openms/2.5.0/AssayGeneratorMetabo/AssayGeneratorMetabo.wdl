version 1.0

task AssayGeneratorMetabo {
  input {
    String? executable
    Boolean? in
    Boolean? in_id
    File? out
    String? fragment_annotation
    String? method
    Boolean? use_exact_mass
    Boolean? exclude_ms_two_precursor
    Int? precursor_mz_distance
    Int? precursor_rt_tolerance
    Boolean? use_known_unknowns
    Int? min_transitions
    Int? max_transitions
    Int? cosine_similarity_threshold
    Int? transition_threshold
    Directory? out_workspace_directory
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    AssayGeneratorMetabo \
      ~{if defined(executable) then ("-executable " +  '"' + executable + '"') else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (in_id) then "-in_id" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fragment_annotation) then ("-fragment_annotation " +  '"' + fragment_annotation + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if (use_exact_mass) then "-use_exact_mass" else ""} \
      ~{if (exclude_ms_two_precursor) then "-exclude_ms2_precursor" else ""} \
      ~{if defined(precursor_mz_distance) then ("-precursor_mz_distance " +  '"' + precursor_mz_distance + '"') else ""} \
      ~{if defined(precursor_rt_tolerance) then ("-precursor_rt_tolerance " +  '"' + precursor_rt_tolerance + '"') else ""} \
      ~{if (use_known_unknowns) then "-use_known_unknowns" else ""} \
      ~{if defined(min_transitions) then ("-min_transitions " +  '"' + min_transitions + '"') else ""} \
      ~{if defined(max_transitions) then ("-max_transitions " +  '"' + max_transitions + '"') else ""} \
      ~{if defined(cosine_similarity_threshold) then ("-cosine_similarity_threshold " +  '"' + cosine_similarity_threshold + '"') else ""} \
      ~{if defined(transition_threshold) then ("-transition_threshold " +  '"' + transition_threshold + '"') else ""} \
      ~{if defined(out_workspace_directory) then ("-out_workspace_directory " +  '"' + out_workspace_directory + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    executable: "SIRIUS executable e.g. sirius"
    in: "<file(s)>*                                       MzML input file(s) used for assay library generation (valid formats: 'mzML')"
    in_id: "<file(s)>*                                    FeatureXML input file(s) containing identification information (e.g. AccurateMassSearch) (valid formats: 'featureXML')"
    out: "*                                         Assay library output file (valid formats: 'tsv', 'traML', 'pqp')"
    fragment_annotation: "Fragment annotation method (default: 'none' valid: 'none', 'sirius')"
    method: "Spectrum with the highest precursor intensity or a consensus spectrum ist used for assay library construction (if no fragment annotation is used). (default: 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
    use_exact_mass: "Use exact mass for fragment annotation"
    exclude_ms_two_precursor: "Excludes precursor in ms2 from transition list"
    precursor_mz_distance: "Max m/z distance of the precursor entries of two spectra to be merged in [Da]. (default: '1.0e-04')"
    precursor_rt_tolerance: "Tolerance window (left and right) for precursor selection [seconds] (default: '5.0')"
    use_known_unknowns: "Use features without identification information"
    min_transitions: "Minimal number of transitions (default: '3')"
    max_transitions: "Maximal number of transitions (default: '3')"
    cosine_similarity_threshold: "Threshold for cosine similarity of MS2 spectra from the same precursor used in consensus spectrum creation (default: '0.98')"
    transition_threshold: "Further transitions need at least x% of the maximum intensity (default 5%) (default: '5.0')"
    out_workspace_directory: "Output directory for SIRIUS workspace"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    Directory out_out_workspace_directory = "${in_out_workspace_directory}"
  }
}