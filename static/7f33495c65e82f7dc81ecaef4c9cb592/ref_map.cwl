class: CommandLineTool
id: ref_map.pl.cwl
inputs:
- id: samples
  doc: ': path to the directory containing the samples BAM (or SAM) alignment files.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: pop_map
  doc: ': path to a population map file (format is "<name> TAB <pop>", one sample
    per line).'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: s
  doc: ": spacer for file names: by default this is empty and the program looks for\
    \ files named 'SAMPLE_NAME.bam'; if this option is given the program looks for\
    \ files named 'SAMPLE_NAME.SPACER.bam'."
  type: boolean
  inputBinding:
    prefix: -s
- id: out_path
  doc: ': path to an output directory.'
  type: boolean
  inputBinding:
    prefix: --out-path
- id: x
  doc: ': additional options for specific pipeline components, e.g. -X "populations:
    -p 3 -r 0.50"'
  type: boolean
  inputBinding:
    prefix: -X
- id: t
  doc: ': the number of threads/CPUs to use (default: 1).'
  type: boolean
  inputBinding:
    prefix: -T
- id: d
  doc: ': Dry run. Do not actually execute anything, just print the individual pipeline
    commands that would be executed.'
  type: boolean
  inputBinding:
    prefix: -d
- id: var_alpha
  doc: ': significance level at which to call variant sites (for gstacks; default:
    0.05).'
  type: boolean
  inputBinding:
    prefix: --var-alpha
- id: gt_alpha
  doc: ': significance level at which to call genotypes (for gstacks; default: 0.05).'
  type: boolean
  inputBinding:
    prefix: --gt-alpha
- id: rm_pcr_duplicates
  doc: ': remove all but one copy of read pairs of the same sample that have the same
    insert length.'
  type: boolean
  inputBinding:
    prefix: --rm-pcr-duplicates
- id: ignore_pe_reads
  doc: ': ignore paired-end reads even if present in the input'
  type: boolean
  inputBinding:
    prefix: --ignore-pe-reads
- id: unpaired
  doc: ": ignore read pairing (for paired-end GBS; treat READ2's as if they were READ1's)"
  type: boolean
  inputBinding:
    prefix: --unpaired
- id: min_samples_per_pop
  doc: ': minimum percentage of individuals in a population required to process a
    locus for that population (for populations; default: 0)'
  type: boolean
  inputBinding:
    prefix: --min-samples-per-pop
- id: min_populations
  doc: ': minimum number of populations a locus must be present in to process a locus
    (for populations; default: 1)'
  type: boolean
  inputBinding:
    prefix: --min-populations
- id: time_components
  doc: (for benchmarking)
  type: boolean
  inputBinding:
    prefix: --time-components
outputs: []
cwlVersion: v1.1
baseCommand:
- ref_map.pl
