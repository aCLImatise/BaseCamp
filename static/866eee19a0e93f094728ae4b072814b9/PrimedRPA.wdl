version 1.0

task PrimedRPA {
  input {
    String? run_id
    File? prior_align
    File? prior_binding_site
    File? input_file
    File? input_file_type
    String? identity_threshold
    String? conserved_anchor
    Int? primer_length
    String? probe_required
    Int? probe_length
    Int? amplicon_size_limit
    Int? nucleotide_repeat_limit
    String? ming_c
    Int? max_gc
    String? dimerisation_thresh
    File? background_check
    Int? cross_reactivity_thresh
    String? hard_cross_react_filter
    Int? max_sets
    Int? threads
    String? background_search_sensitivity
    Int? evalue
  }
  command <<<
    PrimedRPA \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(prior_align) then ("--PriorAlign " +  '"' + prior_align + '"') else ""} \
      ~{if defined(prior_binding_site) then ("--PriorBindingSite " +  '"' + prior_binding_site + '"') else ""} \
      ~{if defined(input_file) then ("--InputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(input_file_type) then ("--InputFileType " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(identity_threshold) then ("--IdentityThreshold " +  '"' + identity_threshold + '"') else ""} \
      ~{if defined(conserved_anchor) then ("--ConservedAnchor " +  '"' + conserved_anchor + '"') else ""} \
      ~{if defined(primer_length) then ("--PrimerLength " +  '"' + primer_length + '"') else ""} \
      ~{if defined(probe_required) then ("--ProbeRequired " +  '"' + probe_required + '"') else ""} \
      ~{if defined(probe_length) then ("--ProbeLength " +  '"' + probe_length + '"') else ""} \
      ~{if defined(amplicon_size_limit) then ("--AmpliconSizeLimit " +  '"' + amplicon_size_limit + '"') else ""} \
      ~{if defined(nucleotide_repeat_limit) then ("--NucleotideRepeatLimit " +  '"' + nucleotide_repeat_limit + '"') else ""} \
      ~{if defined(ming_c) then ("--MinGC " +  '"' + ming_c + '"') else ""} \
      ~{if defined(max_gc) then ("--MaxGC " +  '"' + max_gc + '"') else ""} \
      ~{if defined(dimerisation_thresh) then ("--DimerisationThresh " +  '"' + dimerisation_thresh + '"') else ""} \
      ~{if defined(background_check) then ("--BackgroundCheck " +  '"' + background_check + '"') else ""} \
      ~{if defined(cross_reactivity_thresh) then ("--CrossReactivityThresh " +  '"' + cross_reactivity_thresh + '"') else ""} \
      ~{if defined(hard_cross_react_filter) then ("--HardCrossReactFilter " +  '"' + hard_cross_react_filter + '"') else ""} \
      ~{if defined(max_sets) then ("--MaxSets " +  '"' + max_sets + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""} \
      ~{if defined(background_search_sensitivity) then ("--BackgroundSearchSensitivity " +  '"' + background_search_sensitivity + '"') else ""} \
      ~{if defined(evalue) then ("--Evalue " +  '"' + evalue + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_id: "Desired Run ID"
    prior_align: "Optional: Path to Prior Binding File"
    prior_binding_site: "Optional: Path to Prior Binding File"
    input_file: "Path to Input File"
    input_file_type: "Options [SS,MS,MAS]"
    identity_threshold: "Desired Identity Threshold"
    conserved_anchor: "Identity Anchor Required"
    primer_length: "Desired Primer Length"
    probe_required: "Options [NO,EXO,NFO]"
    probe_length: "Desired Probe Length"
    amplicon_size_limit: "Amplicon Size Limit"
    nucleotide_repeat_limit: "Nucleotide Repeat Limit (i.e 5 = AAAAA)"
    ming_c: "Minimum GC Content"
    max_gc: "Maximum GC Content"
    dimerisation_thresh: "Percentage Dimerisation Tolerated"
    background_check: "Options [NO, Path To Background Fasta File]"
    cross_reactivity_thresh: "Max Cross Reactivity Threshold"
    hard_cross_react_filter: "Hard Cross Reactivity Filter"
    max_sets: "Default Set To 100"
    threads: "Default Set To 1"
    background_search_sensitivity: "Options [Basic or Advanced or Fast]"
    evalue: "Default Set To 1000"
  }
  output {
    File out_stdout = stdout()
  }
}