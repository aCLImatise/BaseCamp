version 1.0

task PrimedLAMP {
  input {
    String? run_id
    File? input_file
    File? prior_alignment_summary
    File? prior_oligo_sites
    String? identity_threshold
    String? conserved_anchor
    Int? primer_length
    Int? nucleotide_repeat_limit
    String? ming_c
    Int? max_gc
    String? dimerisation_thresh
    File? background_check
    File? blast_db_path
    Int? cross_reactivity_thresh
    Int? threads
    Int? monovalent_salt_conc
    Int? divalent_salt_conc
    Int? dntp_conc
    Int? oligo_conc
    String? oligo_conc_pair
    String? degenerate
    String? minimum_tm
    String? maximum_tm
    String? tm_difference_limit
    String? minimum_terminal_delta_g
    Int? max_distance_three_to_two
    Int? max_distance_two_to_l
    Int? max_distance_two_to_one
    Int? max_distance_one_to_one
    Int? max_distance_two_to_two
    String? background_search_sensitivity
    String? evalue_thresh
    Int? f_three_set_limit
    String? loop_primers
  }
  command <<<
    PrimedLAMP \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(input_file) then ("--InputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(prior_alignment_summary) then ("--PriorAlignmentSummary " +  '"' + prior_alignment_summary + '"') else ""} \
      ~{if defined(prior_oligo_sites) then ("--PriorOligoSites " +  '"' + prior_oligo_sites + '"') else ""} \
      ~{if defined(identity_threshold) then ("--IdentityThreshold " +  '"' + identity_threshold + '"') else ""} \
      ~{if defined(conserved_anchor) then ("--ConservedAnchor " +  '"' + conserved_anchor + '"') else ""} \
      ~{if defined(primer_length) then ("--PrimerLength " +  '"' + primer_length + '"') else ""} \
      ~{if defined(nucleotide_repeat_limit) then ("--NucleotideRepeatLimit " +  '"' + nucleotide_repeat_limit + '"') else ""} \
      ~{if defined(ming_c) then ("--MinGC " +  '"' + ming_c + '"') else ""} \
      ~{if defined(max_gc) then ("--MaxGC " +  '"' + max_gc + '"') else ""} \
      ~{if defined(dimerisation_thresh) then ("--DimerisationThresh " +  '"' + dimerisation_thresh + '"') else ""} \
      ~{if defined(background_check) then ("--BackgroundCheck " +  '"' + background_check + '"') else ""} \
      ~{if defined(blast_db_path) then ("--BlastDBPath " +  '"' + blast_db_path + '"') else ""} \
      ~{if defined(cross_reactivity_thresh) then ("--CrossReactivityThresh " +  '"' + cross_reactivity_thresh + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""} \
      ~{if defined(monovalent_salt_conc) then ("--MonovalentSaltConc " +  '"' + monovalent_salt_conc + '"') else ""} \
      ~{if defined(divalent_salt_conc) then ("--DivalentSaltConc " +  '"' + divalent_salt_conc + '"') else ""} \
      ~{if defined(dntp_conc) then ("--dNTPConc " +  '"' + dntp_conc + '"') else ""} \
      ~{if defined(oligo_conc) then ("--OligoConc " +  '"' + oligo_conc + '"') else ""} \
      ~{if defined(oligo_conc_pair) then ("--OligoConcPair " +  '"' + oligo_conc_pair + '"') else ""} \
      ~{if defined(degenerate) then ("--Degenerate " +  '"' + degenerate + '"') else ""} \
      ~{if defined(minimum_tm) then ("--MinimumTm " +  '"' + minimum_tm + '"') else ""} \
      ~{if defined(maximum_tm) then ("--MaximumTm " +  '"' + maximum_tm + '"') else ""} \
      ~{if defined(tm_difference_limit) then ("--TmDifferenceLimit " +  '"' + tm_difference_limit + '"') else ""} \
      ~{if defined(minimum_terminal_delta_g) then ("--MinimumTerminalDeltaG " +  '"' + minimum_terminal_delta_g + '"') else ""} \
      ~{if defined(max_distance_three_to_two) then ("--MaxDistance3to2 " +  '"' + max_distance_three_to_two + '"') else ""} \
      ~{if defined(max_distance_two_to_l) then ("--MaxDistance2toL " +  '"' + max_distance_two_to_l + '"') else ""} \
      ~{if defined(max_distance_two_to_one) then ("--MaxDistance2to1 " +  '"' + max_distance_two_to_one + '"') else ""} \
      ~{if defined(max_distance_one_to_one) then ("--MaxDistance1to1 " +  '"' + max_distance_one_to_one + '"') else ""} \
      ~{if defined(max_distance_two_to_two) then ("--MaxDistance2to2 " +  '"' + max_distance_two_to_two + '"') else ""} \
      ~{if defined(background_search_sensitivity) then ("--BackgroundSearchSensitivity " +  '"' + background_search_sensitivity + '"') else ""} \
      ~{if defined(evalue_thresh) then ("--EvalueThresh " +  '"' + evalue_thresh + '"') else ""} \
      ~{if defined(f_three_set_limit) then ("--F3SetLimit " +  '"' + f_three_set_limit + '"') else ""} \
      ~{if defined(loop_primers) then ("--LoopPrimers " +  '"' + loop_primers + '"') else ""}
  >>>
  parameter_meta {
    run_id: "Desired Run ID"
    input_file: "Path to Target Input Fasta File"
    prior_alignment_summary: "Path to Prior Generated Alignment Summary"
    prior_oligo_sites: "Path to Prior Generated Oligo Sites"
    identity_threshold: "Desired Identity Threshold"
    conserved_anchor: "Identity Anchor Required"
    primer_length: "Desired Primer Length"
    nucleotide_repeat_limit: "Nucleotide Repeat Limit (i.e 5 = AAAAA)"
    ming_c: "Minimum GC Content"
    max_gc: "Maximum GC Content"
    dimerisation_thresh: "Percentage Dimerisation Tolerated"
    background_check: "Options [NO, Path To Background Fasta File]"
    blast_db_path: "Path to BlastnDB"
    cross_reactivity_thresh: "Max Cross Reactivity Threshold"
    threads: "Default Set To 1"
    monovalent_salt_conc: "Millimolar Concentration (10^-3)"
    divalent_salt_conc: "Millimolar Concentration (10^-3)"
    dntp_conc: "Millimolar Concentration (10^-3)"
    oligo_conc: "Micromolar Concentration (10^-6)"
    oligo_conc_pair: "Leave as Default"
    degenerate: ""
    minimum_tm: ""
    maximum_tm: ""
    tm_difference_limit: ""
    minimum_terminal_delta_g: ""
    max_distance_three_to_two: ""
    max_distance_two_to_l: ""
    max_distance_two_to_one: ""
    max_distance_one_to_one: ""
    max_distance_two_to_two: ""
    background_search_sensitivity: "Options [Basic or Advanced or Fast]"
    evalue_thresh: "Options [Basic or Advanced or Fast]"
    f_three_set_limit: "Set Limit with for identical F3 Primer"
    loop_primers: "Include Loop Primers\\n"
  }
  output {
    File out_stdout = stdout()
  }
}