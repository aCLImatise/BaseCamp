class: CommandLineTool
id: quasirecomb.cwl
inputs:
- id: i
  doc: ': Alignment file in BAM or SAM format.'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ': Path to the output directory (default: current directory).'
  type: File
  inputBinding:
    prefix: -o
- id: k
  doc: 'or INT-INT     : The interval or fixed number of sequence generators, i.e.
    1-4 or 2 In a grid enviroment the $SGE_TASK_ID. In case of no input, K will be
    incremented as long as max BIC has not been reached, but will stop at K=5.'
  type: long
  inputBinding:
    prefix: -K
- id: m
  doc: ': The number of EM restarts during model selection (default: 5).'
  type: long
  inputBinding:
    prefix: -m
- id: t
  doc: ': The number of EM restarts for best K to find optimum (default: 50).'
  type: long
  inputBinding:
    prefix: -t
- id: r
  doc: ': Only reconstruct a specific region.'
  type: long
  inputBinding:
    prefix: -r
- id: no_recomb
  doc: ': Do not allow recombination.'
  type: boolean
  inputBinding:
    prefix: -noRecomb
- id: quality
  doc: ': Account phred quality scores (slower runtime).'
  type: boolean
  inputBinding:
    prefix: -quality
- id: print_alignment
  doc: ': Save alignment.txt in a human readable format.'
  type: boolean
  inputBinding:
    prefix: -printAlignment
- id: sample_proteins
  doc: ': Sample full-length protein sequences in three reading frames.'
  type: boolean
  inputBinding:
    prefix: -sampleProteins
- id: coverage
  doc: ': If your dataset only contains a single region of interest,  regions with
    a minimum coverage of 100x, 500x, 1,000x and 10,000x are reported.'
  type: boolean
  inputBinding:
    prefix: -coverage
- id: refine
  doc: ': Can only be used after QuasiRecomb has been executed once before on the
    same dataset in the same directory. Thins the number of haplotypes.'
  type: boolean
  inputBinding:
    prefix: -refine
- id: nogaps
  doc: ': Ignore gaps; useful if data is 454 and gaps are only technical errors.'
  type: boolean
  inputBinding:
    prefix: -noGaps
- id: conservative
  doc: ': Use this if the major haplotypes are only of interest.'
  type: boolean
  inputBinding:
    prefix: -conservative
- id: max_del
  doc: ': Remove reads with more than INT consecutive deletions.'
  type: long
  inputBinding:
    prefix: -maxDel
- id: max_perc_del
  doc: ': Remove reads with more than DOUBLE ratio of deletions, between 0.0 - 1.0'
  type: string
  inputBinding:
    prefix: -maxPercDel
- id: unpaired
  doc: ': If read names are not unique and reads are single-end, prevent pairing and
    merging.'
  type: boolean
  inputBinding:
    prefix: -unpaired
- id: xx
  doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  type: boolean
  inputBinding:
    prefix: -XX
- id: xmx10g
  doc: ': Increase heap space.'
  type: boolean
  inputBinding:
    prefix: -Xmx10G
- id: xx
  doc: ':+UseParallelGC    : Enhances performance on multicore systems.'
  type: boolean
  inputBinding:
    prefix: -XX
- id: xx
  doc: ':+UseNUMA          : Enhances performance on multi-CPU systems.'
  type: boolean
  inputBinding:
    prefix: -XX
outputs: []
cwlVersion: v1.1
baseCommand:
- quasirecomb
