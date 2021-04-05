class: CommandLineTool
id: SmartMap.cwl
inputs:
- id: in_genome_length_file
  doc: ': Genome length file listing all chromosomes and lengths. Chromosomes will
    appear in this order in output file.'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_output_prefix_used
  doc: ': Output prefix used for output bedgraph and log files.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_number_iterations_default
  doc: ': Number of iterations. Default 1.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_maximum_number_alignments
  doc: ': Maximum number of alignments for a read to be processed. Default 50.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_score_bowtie
  doc: ': Minimum score for Bowtie2 display. Default 0 (unscored).'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_n_nfold_crossvalidation
  doc: ': N for N-fold cross-validation. Default 1 (no cross-validation).'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_flag_continuous_output
  doc: ': Flag for continuous output bedgraphs. Default off.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_flag_mode_default
  doc: ': Flag for strand-specific mode. Default off.'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_flag_read_output
  doc: ': Flag for read output mode with weights. Default off.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_rate_fitting_reweighting
  doc: ': Rate of fitting in reweighting. Default 1.'
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smartmap:1.0.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- SmartMap
