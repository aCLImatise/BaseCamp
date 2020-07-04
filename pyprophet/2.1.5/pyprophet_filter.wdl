version 1.0

task PyprophetFilter {
  input {
    File? in
    Float? max_precursor_pep
    Float? max_peak_group_pep
    Float? max_transition_pep
    String? sq_mass_files
  }
  command <<<
    pyprophet filter \
      ~{sq_mass_files} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(max_precursor_pep) then ("--max_precursor_pep " +  '"' + max_precursor_pep + '"') else ""} \
      ~{if defined(max_peak_group_pep) then ("--max_peakgroup_pep " +  '"' + max_peak_group_pep + '"') else ""} \
      ~{if defined(max_transition_pep) then ("--max_transition_pep " +  '"' + max_transition_pep + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    max_precursor_pep: "Maximum PEP to retain scored precursors in sqMass.  [default: 0.7]"
    max_peak_group_pep: "Maximum PEP to retain scored peak groups in sqMass.  [default: 0.7]"
    max_transition_pep: "Maximum PEP to retain scored transitions in sqMass.  [default: 0.7]"
    sq_mass_files: ""
  }
}