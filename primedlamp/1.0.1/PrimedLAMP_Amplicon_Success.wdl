version 1.0

task PrimedLAMPAmpliconSuccess {
  input {
    String? input_fast_a
    String? run_id
    File? input_file
    Int? threads
    Int? noncritical_threshold
    Int? critical_region_len
  }
  command <<<
    PrimedLAMP_Amplicon_Success \
      ~{if defined(input_fast_a) then ("--InputFasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""} \
      ~{if defined(input_file) then ("--InputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(threads) then ("--Threads " +  '"' + threads + '"') else ""} \
      ~{if defined(noncritical_threshold) then ("--NonCriticalThreshold " +  '"' + noncritical_threshold + '"') else ""} \
      ~{if defined(critical_region_len) then ("--CriticalRegionLen " +  '"' + critical_region_len + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "[--Threads THREADS]"
    run_id: "Desired Run ID"
    input_file: "Path <RunID>_Oligo_Analysis.csv"
    threads: "Default Set To 1"
    noncritical_threshold: "Number of mismatches tolerated in non-critical region"
    critical_region_len: "Number of nucleotides in from either the 5' or 3'\\nterminus\\n"
  }
  output {
    File out_stdout = stdout()
  }
}