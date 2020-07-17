version 1.0

task MotifRaptorMotiffilter {
  input {
    String? workdir
    String? motif_summary
  }
  command <<<
    MotifRaptor motiffilter \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(motif_summary) then ("--motif_summary " +  '"' + motif_summary + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    motif_summary: "Motif Summary File, usually from step2"
  }
}