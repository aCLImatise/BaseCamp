version 1.0

task PrimedLAMPCustom {
  input {
    String? run_id
    File? input_file
    File? input_fast_a
    File? prior_align
    File? background_check
    File? blast_db_path
    String? background_search_sensitivity
    String? evalue_thresh
    Int? threads
    Int? t_spacer_len
    String? inclusivity_check
  }
  command <<<
    PrimedLAMP_Custom \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(input_file) then ("--InputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(input_fast_a) then ("--InputFasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(prior_align) then ("--PriorAlign " +  '"' + prior_align + '"') else ""} \
      ~{if defined(background_check) then ("--BackgroundCheck " +  '"' + background_check + '"') else ""} \
      ~{if defined(blast_db_path) then ("--BlastDBPath " +  '"' + blast_db_path + '"') else ""} \
      ~{if defined(background_search_sensitivity) then ("--BackgroundSearchSensitivity " +  '"' + background_search_sensitivity + '"') else ""} \
      ~{if defined(evalue_thresh) then ("--EvalueThresh " +  '"' + evalue_thresh + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""} \
      ~{if defined(t_spacer_len) then ("--TspacerLen " +  '"' + t_spacer_len + '"') else ""} \
      ~{if defined(inclusivity_check) then ("--InclusivityCheck " +  '"' + inclusivity_check + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_id: "Desired Run ID"
    input_file: "Path to Custom Sets Input File (CSV)"
    input_fast_a: "Path to target sequence in fasta format"
    prior_align: "Path to Alignment Summary CSV File"
    background_check: "Path to cross-reactivity fasta file. If no cross\\nreactivity check is required please set as: NO"
    blast_db_path: "Path to BlastnDB for cross reactivity check."
    background_search_sensitivity: "Options [Basic or Advanced or Fast]"
    evalue_thresh: "Cross Reactivity search sensntivity."
    threads: "Default set to 1"
    t_spacer_len: "Length of T Spacer in FIP and BIP if required"
    inclusivity_check: "Inclusivity and binding site assessment\\n"
  }
  output {
    File out_stdout = stdout()
  }
}