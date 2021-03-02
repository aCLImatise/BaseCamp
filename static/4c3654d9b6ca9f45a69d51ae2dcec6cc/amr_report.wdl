version 1.0

task AmrReport {
  input {
    Int? threads
    Int? seed
    Boolean? profile
    Boolean? no_progress
    Int? verbose
    Boolean? qc
  }
  command <<<
    amr_report \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (no_progress) then "-noprogress" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (qc) then "-qc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: ""
    seed: ""
    profile: ""
    no_progress: ""
    verbose: ""
    qc: ""
  }
  output {
    File out_stdout = stdout()
  }
}