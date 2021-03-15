version 1.0

task FastaExtract {
  input {
    Int? threads
    Int? seed
    Boolean? profile
    Boolean? no_progress
    Int? verbose
    Boolean? qc
    Boolean? aa
    String fast_a
    String target
  }
  command <<<
    fasta_extract \
      ~{fast_a} \
      ~{target} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (no_progress) then "-noprogress" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (qc) then "-qc" else ""} \
      ~{if (aa) then "-aa" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0"
  }
  parameter_meta {
    threads: ""
    seed: ""
    profile: ""
    no_progress: ""
    verbose: ""
    qc: ""
    aa: ""
    fast_a: ""
    target: ""
  }
  output {
    File out_stdout = stdout()
  }
}