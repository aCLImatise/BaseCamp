version 1.0

task AssayGeneratorMetabo {
  input {
    File? in
    File? in_id
    File? out
    String? method
    Int? precursor_mz_tolerance
    String? precursor_mz_tolerance_unit
    Int? precursor_mz_distance
    Int? precursor_rt_tolerance
    Int? cosine_similarity_threshold
    Int? filter_by_convex_hulls
    Int? transition_threshold
    Boolean? use_known_unknowns
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    AssayGeneratorMetabo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_id) then ("-in_id " +  '"' + in_id + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(precursor_mz_tolerance) then ("-precursor_mz_tolerance " +  '"' + precursor_mz_tolerance + '"') else ""} \
      ~{if defined(precursor_mz_tolerance_unit) then ("-precursor_mz_tolerance_unit " +  '"' + precursor_mz_tolerance_unit + '"') else ""} \
      ~{if defined(precursor_mz_distance) then ("-precursor_mz_distance " +  '"' + precursor_mz_distance + '"') else ""} \
      ~{if defined(precursor_rt_tolerance) then ("-precursor_rt_tolerance " +  '"' + precursor_rt_tolerance + '"') else ""} \
      ~{if defined(cosine_similarity_threshold) then ("-cosine_similarity_threshold " +  '"' + cosine_similarity_threshold + '"') else ""} \
      ~{if defined(filter_by_convex_hulls) then ("-filter_by_convex_hulls " +  '"' + filter_by_convex_hulls + '"') else ""} \
      ~{if defined(transition_threshold) then ("-transition_threshold " +  '"' + transition_threshold + '"') else ""} \
      ~{if (use_known_unknowns) then "-use_known_unknowns" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                            MzML Input file (valid formats: 'mzml')"
    in_id: "*                         FeatureXML Input with id information (accurate mass search) (valid formats: 'featurexml')"
    out: "*                           Assay library output file (valid formats: 'tsv')"
    method: "(default: 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
    precursor_mz_tolerance: "Tolerance window for precursor selection (Feature selection in regard to the precursor) (default: '0.005')"
    precursor_mz_tolerance_unit: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
    precursor_mz_distance: "Max m/z distance of the precursor entries of two spectra to be merged in [Da]. (default: '0.0001')"
    precursor_rt_tolerance: "Tolerance window (left and right) for precursor selection [Da] (default: '5')"
    cosine_similarity_threshold: "Threshold for cosine similarity of MS2 spectras of same precursor used for consensus spectrum (default: '0.98')"
    filter_by_convex_hulls: "Features have to have at least x MassTraces (default: '2')"
    transition_threshold: "Further transitions need at least x% of the maximum intensity (default 10%) (default: '10')"
    use_known_unknowns: "Use features without identification information"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}