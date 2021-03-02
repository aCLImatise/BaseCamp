version 1.0

task PrimedLAMPCrossReactivityUpdate {
  input {
    String? run_id
    File? prior_oligo_sites
    File? prior_blastn_output
    File? path_file_ids
    Int? threads
    String var_5
  }
  command <<<
    PrimedLAMP_Cross_Reactivity_Update \
      ~{var_5} \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(prior_oligo_sites) then ("--PriorOligoSites " +  '"' + prior_oligo_sites + '"') else ""} \
      ~{if defined(prior_blastn_output) then ("--PriorBlastnOutput " +  '"' + prior_blastn_output + '"') else ""} \
      ~{if defined(path_file_ids) then ("--ExlusionIDFilePath " +  '"' + path_file_ids + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_id: "Desired Run ID"
    prior_oligo_sites: "Path to Prior Generated Oligo Sites"
    prior_blastn_output: "Path to Blastn_Output directory"
    path_file_ids: "Path to .txt file contain sequence IDs to excluded"
    threads: "Default Set To 1"
    var_5: "[--Threads THREADS]"
  }
  output {
    File out_stdout = stdout()
  }
}