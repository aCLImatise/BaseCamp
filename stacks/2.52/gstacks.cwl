class: CommandLineTool
id: gstacks.cwl
inputs:
- id: p
  doc: ": input directory containg '*.matches.bam' files created by the de novo Stacks\
    \ pipeline, ustacks-cstacks-sstacks-tsv2bam"
  type: boolean
  inputBinding:
    prefix: -P
- id: m
  doc: ': path to a population map giving the list of samples'
  type: boolean
  inputBinding:
    prefix: -M
- id: o
  doc: ': output directory (default: none with -B; with -P same as the input directory)'
  type: boolean
  inputBinding:
    prefix: -O
- id: threads
  doc: ': number of threads to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: model
  doc: ': model to use to call variants and genotypes; one of marukilow (default),
    marukihigh, or snp'
  type: boolean
  inputBinding:
    prefix: --model
- id: var_alpha
  doc: ': alpha threshold for discovering SNPs (default: 0.01 for marukilow)'
  type: boolean
  inputBinding:
    prefix: --var-alpha
- id: gt_alpha
  doc: ': alpha threshold for calling genotypes (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --gt-alpha
- id: rm_pcr_duplicates
  doc: ': remove all but one set ofread pairs of the same sample that  have the same
    insert length (implies --rm-unpaired-reads)'
  type: boolean
  inputBinding:
    prefix: --rm-pcr-duplicates
- id: rm_unpaired_reads
  doc: ': discard unpaired reads'
  type: boolean
  inputBinding:
    prefix: --rm-unpaired-reads
- id: ignore_pe_reads
  doc: ': ignore paired-end reads even if present in the input'
  type: boolean
  inputBinding:
    prefix: --ignore-pe-reads
- id: unpaired
  doc: ": ignore read pairing (only for paired-end GBS; treat READ2's as if they were\
    \ READ1's)"
  type: boolean
  inputBinding:
    prefix: --unpaired
outputs: []
cwlVersion: v1.1
baseCommand:
- gstacks
