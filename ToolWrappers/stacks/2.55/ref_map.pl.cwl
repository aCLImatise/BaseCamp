class: CommandLineTool
id: ref_map.pl.cwl
inputs:
- id: in_samples
  doc: ': path to the directory containing the samples BAM (or SAM) alignment files.'
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_pop_map
  doc: ': path to a population map file (format is "<name> TAB <pop>", one sample
    per line).'
  type: boolean?
  inputBinding:
    prefix: --popmap
- id: in_spacer_file_names
  doc: ": spacer for file names: by default this is empty and the program looks for\
    \ files\nnamed 'SAMPLE_NAME.bam'; if this option is given the program looks for\
    \ files\nnamed 'SAMPLE_NAME.SPACER.bam'."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_out_path
  doc: ': path to an output directory.'
  type: File?
  inputBinding:
    prefix: --out-path
- id: in_additional_options_specific
  doc: ': additional options for specific pipeline components, e.g. -X "populations:
    -p 3 -r 0.50"'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_number_use_default
  doc: ': the number of threads/CPUs to use (default: 1).'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_dry_run_actually
  doc: ": Dry run. Do not actually execute anything, just print the individual pipeline\
    \ commands\nthat would be executed."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_var_alpha
  doc: ': significance level at which to call variant sites (for gstacks; default:
    0.05).'
  type: boolean?
  inputBinding:
    prefix: --var-alpha
- id: in_gt_alpha
  doc: ': significance level at which to call genotypes (for gstacks; default: 0.05).'
  type: boolean?
  inputBinding:
    prefix: --gt-alpha
- id: in_rm_pcr_duplicates
  doc: ": remove all but one copy of read pairs of the same sample that have\nthe\
    \ same insert length."
  type: boolean?
  inputBinding:
    prefix: --rm-pcr-duplicates
- id: in_ignore_pe_reads
  doc: ': ignore paired-end reads even if present in the input'
  type: boolean?
  inputBinding:
    prefix: --ignore-pe-reads
- id: in_unpaired
  doc: ": ignore read pairing (for paired-end GBS; treat READ2's as if they were READ1's)"
  type: boolean?
  inputBinding:
    prefix: --unpaired
- id: in_min_samples_per_pop
  doc: ': minimum percentage of individuals in a population required to process a
    locus for that population (for populations; default: 0)'
  type: boolean?
  inputBinding:
    prefix: --min-samples-per-pop
- id: in_min_populations
  doc: ': minimum number of populations a locus must be present in to process a locus
    (for populations; default: 1)'
  type: boolean?
  inputBinding:
    prefix: --min-populations
- id: in_time_components
  doc: (for benchmarking)
  type: boolean?
  inputBinding:
    prefix: --time-components
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: ': path to an output directory.'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- ref_map.pl
