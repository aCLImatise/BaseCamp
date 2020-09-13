version 1.0

task GffCheck {
  input {
    Int? threads
    Int? seed
    Boolean? profile
    Boolean? no_progress
    Int? verbose
    Boolean? qc
    String gff
  }
  command <<<
    gff_check \
      ~{gff} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (no_progress) then "-noprogress" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (qc) then "-qc" else ""}
  >>>
  parameter_meta {
    threads: ""
    seed: ""
    profile: ""
    no_progress: ""
    verbose: ""
    qc: ""
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}