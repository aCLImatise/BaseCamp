version 1.0

task PrimedLAMPTmUpdate {
  input {
    String? run_id
    File? path_prior_generated
    Int? monovalent_salt_conc
    Int? divalent_salt_conc
    Int? dntp_conc
    Int? oligo_conc
    String? oligo_conc_pair
    Int? threads
    String var_8
  }
  command <<<
    PrimedLAMP_Tm_Update \
      ~{var_8} \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(path_prior_generated) then ("--PriorOligoSites " +  '"' + path_prior_generated + '"') else ""} \
      ~{if defined(monovalent_salt_conc) then ("--MonovalentSaltConc " +  '"' + monovalent_salt_conc + '"') else ""} \
      ~{if defined(divalent_salt_conc) then ("--DivalentSaltConc " +  '"' + divalent_salt_conc + '"') else ""} \
      ~{if defined(dntp_conc) then ("--dNTPConc " +  '"' + dntp_conc + '"') else ""} \
      ~{if defined(oligo_conc) then ("--OligoConc " +  '"' + oligo_conc + '"') else ""} \
      ~{if defined(oligo_conc_pair) then ("--OligoConcPair " +  '"' + oligo_conc_pair + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_id: "Desired Run ID"
    path_prior_generated: "Path to Prior Generated Oligo Sites"
    monovalent_salt_conc: "Millimolar Concentration (10^-3)"
    divalent_salt_conc: "Millimolar Concentration (10^-3)"
    dntp_conc: "Millimolar Concentration (10^-3)"
    oligo_conc: "Micromolar Concentration (10^-6)"
    oligo_conc_pair: "Leave as Default"
    threads: "Default Set To 1"
    var_8: "[--MonovalentSaltConc MONOVALENTSALTCONC]"
  }
  output {
    File out_stdout = stdout()
  }
}