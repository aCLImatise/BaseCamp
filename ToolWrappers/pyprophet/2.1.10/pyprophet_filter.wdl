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
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0"
  }
  parameter_meta {
    in: "PyProphet input file.  [required]"
    max_precursor_pep: "Maximum PEP to retain scored precursors in"
    max_peak_group_pep: "Maximum PEP to retain scored peak groups in"
    max_transition_pep: "Maximum PEP to retain scored transitions in"
    sq_mass_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}