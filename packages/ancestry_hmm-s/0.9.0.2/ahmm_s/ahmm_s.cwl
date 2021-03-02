class: CommandLineTool
id: ahmm_s.cwl
inputs:
- id: in_input_file_name
  doc: "[string]\ninput file name"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sample_i_d
  doc: "[string]\nsample id and ploidy file"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_ancestry_pulse_format
  doc: "[int] [int] [float]\nancestry pulse with format, ancestral population, time,\n\
    and proportion of final ancestry from this pulse"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_ne
  doc: "[int]\neffective population size of the admixed population"
  type: boolean?
  inputBinding:
    prefix: --ne
- id: in_gss
  doc: "[int] [int] [int] [float] [float]\ngolden section search for optimal selection\
    \ coeffient at each site.\nparameters: chromosomal position start, stop, step,\
    \ selection coefficient start, stop"
  type: boolean?
  inputBinding:
    prefix: --gss
- id: in_grid
  doc: "[int] [int] [int] [float] [float] [float]\ncalculate likelihood ratios in\
    \ a grid.\nparameters: chromosomal position start, stop, step, selection coefficient\
    \ start, stop, step."
  type: boolean?
  inputBinding:
    prefix: --grid
- id: in_site
  doc: "[int] [float]\ncalculate likelihood ratios for a single value of s at a single\
    \ site.\nparameters: chromosomal position, selective coeffient"
  type: boolean?
  inputBinding:
    prefix: --site
- id: in_samples_specified_read
  doc: samples are specified with genotypes rather than read counts
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_chr
  doc: "[string]\nspecify chromosome that will be analyzed\n(only necessary when there\
    \ are multiple chromosomes in input file)"
  type: boolean?
  inputBinding:
    prefix: --chr
- id: in_chr_win
  doc: "[int] [int]\nlimit region on chromosome that will be analyzed"
  type: boolean?
  inputBinding:
    prefix: --chr_win
- id: in_gss_precision
  doc: "[float]\nspecify precision in finding optimal value of s using golden section\
    \ search. default: 1e-5"
  type: boolean?
  inputBinding:
    prefix: --gss_precision
- id: in_unit_coords
  doc: "unit for start and stop position in grid and gss search can be defined as\
    \ chromosome\ncoordinates rather than as line number in input file. default off"
  type: boolean?
  inputBinding:
    prefix: --unit_coords
- id: in_window
  doc: "[string] [float]\nspecify size of Markov chain in percent or Morgans.\n\"\
    p 10\" extends the markov chain 10% of chromosome length on each side of selected\
    \ site.\n\"m 0.1\" extends the windows 0.1 Morgan on each side of the selected\
    \ site.\ndefault: \"p 100\""
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_t_raj
  doc: "[int]\nchange algorithm for generating selection trajectories.\n4: 4-point\
    \ approximation, 3: 3-point approximation (legacy option, not recommended).\n\
    default: forward iteration."
  type: boolean?
  inputBinding:
    prefix: --traj
- id: in_stochastic
  doc: "enables the stochastic method for generation selection trajectory.\n(Experimental.\
    \ Slow. Use for small values of s.)"
  type: boolean?
  inputBinding:
    prefix: --stochastic
- id: in_stochastic_reps
  doc: "[int]\nspecifies number of simulations for the stochastic trajectory algorithm.\n\
    default: 10000"
  type: boolean?
  inputBinding:
    prefix: --stochastic_reps
- id: in_full_selection_space
  doc: "turns off optimization of the selection coeffient search space. (Experimental)\n"
  type: boolean?
  inputBinding:
    prefix: --full_selection_space
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ancestry_hmm-s:0.9.0.2--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- ahmm-s
