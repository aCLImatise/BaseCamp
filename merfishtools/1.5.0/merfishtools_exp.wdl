version 1.0

task MerfishtoolsExp {
  input {
    String? estimate
    String? stats
    Int? seed
    Float? pzero
    Float? p_one
    String? cells
    Boolean? pm_f_window_width
    Int? threads
    String codebook_tsv
    String readouts
  }
  command <<<
    merfishtools exp \
      ~{codebook_tsv} \
      ~{readouts} \
      ~{if defined(estimate) then ("--estimate " +  '"' + estimate + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(pzero) then ("--p0 " +  '"' + pzero + '"') else ""} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(cells) then ("--cells " +  '"' + cells + '"') else ""} \
      ~{true="--pmf-window-width" false="" pm_f_window_width} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    estimate: "Path to write expected value and standard deviation estimates of expression to. Output is formatted into columns: cell, feature, expected value, standard deviation"
    stats: "Path to write global statistics per cell to. Output is formatted into columns: cell, noise-rate"
    seed: "Seed for shuffling that occurs in EM algorithm."
    pzero: "...              Prior probability of 0->1 error [default: 0.04]"
    p_one: "...              Prior probability of 1->0 error [default: 0.1]"
    cells: "Regular expression to select cells from cell column (see above). [default: .*]"
    pm_f_window_width: "<INT,>    Width of the window to calculate PMF for. [default: 100]"
    threads: "Number of threads to use. [default: 1]"
    codebook_tsv: ""
    readouts: ""
  }
}