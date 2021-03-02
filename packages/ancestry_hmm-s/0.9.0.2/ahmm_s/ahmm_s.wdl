version 1.0

task Ahmms {
  input {
    Boolean? input_file_name
    Boolean? sample_i_d
    Boolean? ancestry_pulse_format
    Boolean? ne
    Boolean? gss
    Boolean? grid
    Boolean? site
    Boolean? samples_specified_read
    Boolean? chr
    Boolean? chr_win
    Boolean? gss_precision
    Boolean? unit_coords
    Boolean? window
    Boolean? t_raj
    Boolean? stochastic
    Boolean? stochastic_reps
    Boolean? full_selection_space
  }
  command <<<
    ahmm_s \
      ~{if (input_file_name) then "-i" else ""} \
      ~{if (sample_i_d) then "-s" else ""} \
      ~{if (ancestry_pulse_format) then "-p" else ""} \
      ~{if (ne) then "--ne" else ""} \
      ~{if (gss) then "--gss" else ""} \
      ~{if (grid) then "--grid" else ""} \
      ~{if (site) then "--site" else ""} \
      ~{if (samples_specified_read) then "-g" else ""} \
      ~{if (chr) then "--chr" else ""} \
      ~{if (chr_win) then "--chr_win" else ""} \
      ~{if (gss_precision) then "--gss_precision" else ""} \
      ~{if (unit_coords) then "--unit_coords" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (t_raj) then "--traj" else ""} \
      ~{if (stochastic) then "--stochastic" else ""} \
      ~{if (stochastic_reps) then "--stochastic_reps" else ""} \
      ~{if (full_selection_space) then "--full_selection_space" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ancestry_hmm-s:0.9.0.2--hc9558a2_0"
  }
  parameter_meta {
    input_file_name: "[string]\\ninput file name"
    sample_i_d: "[string]\\nsample id and ploidy file"
    ancestry_pulse_format: "[int] [int] [float]\\nancestry pulse with format, ancestral population, time,\\nand proportion of final ancestry from this pulse"
    ne: "[int]\\neffective population size of the admixed population"
    gss: "[int] [int] [int] [float] [float]\\ngolden section search for optimal selection coeffient at each site.\\nparameters: chromosomal position start, stop, step, selection coefficient start, stop"
    grid: "[int] [int] [int] [float] [float] [float]\\ncalculate likelihood ratios in a grid.\\nparameters: chromosomal position start, stop, step, selection coefficient start, stop, step."
    site: "[int] [float]\\ncalculate likelihood ratios for a single value of s at a single site.\\nparameters: chromosomal position, selective coeffient"
    samples_specified_read: "samples are specified with genotypes rather than read counts"
    chr: "[string]\\nspecify chromosome that will be analyzed\\n(only necessary when there are multiple chromosomes in input file)"
    chr_win: "[int] [int]\\nlimit region on chromosome that will be analyzed"
    gss_precision: "[float]\\nspecify precision in finding optimal value of s using golden section search. default: 1e-5"
    unit_coords: "unit for start and stop position in grid and gss search can be defined as chromosome\\ncoordinates rather than as line number in input file. default off"
    window: "[string] [float]\\nspecify size of Markov chain in percent or Morgans.\\n\\\"p 10\\\" extends the markov chain 10% of chromosome length on each side of selected site.\\n\\\"m 0.1\\\" extends the windows 0.1 Morgan on each side of the selected site.\\ndefault: \\\"p 100\\\""
    t_raj: "[int]\\nchange algorithm for generating selection trajectories.\\n4: 4-point approximation, 3: 3-point approximation (legacy option, not recommended).\\ndefault: forward iteration."
    stochastic: "enables the stochastic method for generation selection trajectory.\\n(Experimental. Slow. Use for small values of s.)"
    stochastic_reps: "[int]\\nspecifies number of simulations for the stochastic trajectory algorithm.\\ndefault: 10000"
    full_selection_space: "turns off optimization of the selection coeffient search space. (Experimental)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}