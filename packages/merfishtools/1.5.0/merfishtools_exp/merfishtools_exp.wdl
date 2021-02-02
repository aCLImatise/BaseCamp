version 1.0

task MerfishtoolsExp {
  input {
    File? estimate
    File? stats
    Int? seed
    Float? pzero
    Float? p_one
    String? cells
    Boolean? pm_f_window_width
    Int? threads
    String codebook_dot
    String cell
    String hamming_dist
    String cell_position_y
    String rna_position_y
  }
  command <<<
    merfishtools exp \
      ~{codebook_dot} \
      ~{cell} \
      ~{hamming_dist} \
      ~{cell_position_y} \
      ~{rna_position_y} \
      ~{if defined(estimate) then ("--estimate " +  '"' + estimate + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(pzero) then ("--p0 " +  '"' + pzero + '"') else ""} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(cells) then ("--cells " +  '"' + cells + '"') else ""} \
      ~{if (pm_f_window_width) then "--pmf-window-width" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    estimate: "Path to write expected value and standard deviation estimates of expression to.\\nOutput is formatted into columns: cell, feature, expected value, standard deviation"
    stats: "Path to write global statistics per cell to.\\nOutput is formatted into columns: cell, noise-rate"
    seed: "Seed for shuffling that occurs in EM algorithm."
    pzero: "...              Prior probability of 0->1 error [default: 0.04]"
    p_one: "...              Prior probability of 1->0 error [default: 0.1]"
    cells: "Regular expression to select cells from cell column (see above). [default: .*]"
    pm_f_window_width: "<INT,>    Width of the window to calculate PMF for. [default: 100]"
    threads: "Number of threads to use. [default: 1]"
    codebook_dot: "<READOUTS>        Raw readout data containing molecule assignments to positions."
    cell: "feature"
    hamming_dist: "cell_position_x"
    cell_position_y: "rna_position_x"
    rna_position_y: "Otherwise, the official MERFISH binary format is expected."
  }
  output {
    File out_stdout = stdout()
    File out_estimate = "${in_estimate}"
    File out_stats = "${in_stats}"
  }
}