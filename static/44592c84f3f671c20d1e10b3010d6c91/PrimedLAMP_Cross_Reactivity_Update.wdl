version 1.0

task PrimedLAMPCrossReactivityUpdate {
  input {
    String? run_id
    File? prior_oligo_sites
    File? path_blastnoutput_directory
    File? path_file_excluded
    Int? threads
    String _exlusionidfilepath
    String var_6
  }
  command <<<
    PrimedLAMP_Cross_Reactivity_Update \
      ~{_exlusionidfilepath} \
      ~{var_6} \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(prior_oligo_sites) then ("--PriorOligoSites " +  '"' + prior_oligo_sites + '"') else ""} \
      ~{if defined(path_blastnoutput_directory) then ("--PriorBlastnOutput " +  '"' + path_blastnoutput_directory + '"') else ""} \
      ~{if defined(path_file_excluded) then ("--ExlusionIDFilePath " +  '"' + path_file_excluded + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    run_id: "Desired Run ID"
    prior_oligo_sites: "Path to Prior Generated Oligo Sites"
    path_blastnoutput_directory: "Path to Blastn_Output directory"
    path_file_excluded: "Path to .txt file contain sequence IDs to excluded"
    threads: "Default Set To 1"
    _exlusionidfilepath: "--ExlusionIDFilePath"
    var_6: "[--Threads THREADS]"
  }
  output {
    File out_stdout = stdout()
  }
}