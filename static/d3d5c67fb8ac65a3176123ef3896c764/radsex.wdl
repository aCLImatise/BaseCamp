version 1.0

task Radsex {
  input {
    String depth
    String distrib
    String freq
    String align_markers_genome
    String process
    String sign_if
    String subset
  }
  command <<<
    radsex \
      ~{depth} \
      ~{distrib} \
      ~{freq} \
      ~{align_markers_genome} \
      ~{process} \
      ~{sign_if} \
      ~{subset}
  >>>
  parameter_meta {
    depth: "Compute number of retained reads for each individual"
    distrib: "Compute the distribution of markers between group1 and group2"
    freq: "Compute marker frequencies in all individuals"
    align_markers_genome: "Align markers to a genome and compute metrics for each aligned marker"
    process: "Compute a table of marker depths from a set of demultiplexed reads files"
    sign_if: "Extract markers significantly associated with phenotypic group from a marker depths table"
    subset: "Extract a subset of a marker depths table"
  }
}