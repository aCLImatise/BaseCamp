class: CommandLineTool
id: denovo_map.pl.cwl
inputs:
- id: samples
  doc: ': path to the directory containing the samples reads files.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: pop_map
  doc: ': path to a population map file (format is "<name> TAB <pop>", one sample
    per line).'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: out_path
  doc: ': path to an output directory.'
  type: boolean
  inputBinding:
    prefix: --out-path
- id: x
  doc: ': additional options for specific pipeline components, e.g. -X "populations:
    --min-maf 0.05".'
  type: boolean
  inputBinding:
    prefix: -X
- id: threads
  doc: ': the number of threads/CPUs to use (default: 1).'
  type: boolean
  inputBinding:
    prefix: --threads
- id: dry_run
  doc: ': dry run. Do not actually execute anything, just print the commands that
    would be executed.'
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: resume
  doc: ': resume executing the pipeline from a previous run.'
  type: boolean
  inputBinding:
    prefix: --resume
- id: m
  doc: ': number of mismatches allowed between stacks within individuals (for ustacks).'
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: ': number of mismatches allowed between stacks between individuals (for cstacks;
    default 1; suggested: set to ustacks -M).'
  type: boolean
  inputBinding:
    prefix: -n
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
- id: paired
  doc: ': after assembling RAD loci, assemble mini-contigs with paired-end reads.'
  type: boolean
  inputBinding:
    prefix: --paired
- id: rm_pcr_duplicates
  doc: ': remove all but one set of read pairs of the same sample that have the same
    insert length.'
  type: boolean
  inputBinding:
    prefix: --rm-pcr-duplicates
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
- denovo_map.pl
