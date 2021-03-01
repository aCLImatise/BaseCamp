class: CommandLineTool
id: quasirecomb.cwl
inputs:
- id: in_alignment_file_format
  doc: ': Alignment file in BAM or SAM format.'
  type: File?
  inputBinding:
    prefix: -i
- id: in_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File?
  inputBinding:
    prefix: -o
- id: in_intint_interval_number
  doc: "or INT-INT     : The interval or fixed number of sequence generators, i.e.\
    \ 1-4 or 2\nIn a grid enviroment the $SGE_TASK_ID.\nIn case of no input, K will\
    \ be incremented as long as max BIC has not been reached, but will stop at K=5."
  type: long?
  inputBinding:
    prefix: -K
- id: in_during_model_default
  doc: ': The number of EM restarts during model selection (default: 5).'
  type: long?
  inputBinding:
    prefix: -m
- id: in_for_best_k
  doc: ': The number of EM restarts for best K to find optimum (default: 50).'
  type: long?
  inputBinding:
    prefix: -t
- id: in_only_reconstruct_region
  doc: ': Only reconstruct a specific region.'
  type: string?
  inputBinding:
    prefix: -r
- id: in_no_recomb
  doc: ': Do not allow recombination.'
  type: boolean?
  inputBinding:
    prefix: -noRecomb
- id: in_quality
  doc: ': Account phred quality scores (slower runtime).'
  type: boolean?
  inputBinding:
    prefix: -quality
- id: in_print_alignment
  doc: ': Save alignment.txt in a human readable format.'
  type: boolean?
  inputBinding:
    prefix: -printAlignment
- id: in_sample_proteins
  doc: ': Sample full-length protein sequences in three reading frames.'
  type: boolean?
  inputBinding:
    prefix: -sampleProteins
- id: in_coverage
  doc: ": If your dataset only contains a single region of interest,\nregions with\
    \ a minimum coverage of 100x, 500x, 1,000x and 10,000x are reported."
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_refine
  doc: ": Can only be used after QuasiRecomb has been executed once before on the\
    \ same dataset in the same directory.\nThins the number of haplotypes."
  type: boolean?
  inputBinding:
    prefix: -refine
- id: in_nogaps
  doc: ': Ignore gaps; useful if data is 454 and gaps are only technical errors.'
  type: boolean?
  inputBinding:
    prefix: -noGaps
- id: in_conservative
  doc: ': Use this if the major haplotypes are only of interest.'
  type: boolean?
  inputBinding:
    prefix: -conservative
- id: in_max_del
  doc: ': Remove reads with more than INT consecutive deletions.'
  type: long?
  inputBinding:
    prefix: -maxDel
- id: in_max_perc_del
  doc: ': Remove reads with more than DOUBLE ratio of deletions, between 0.0 - 1.0'
  type: double?
  inputBinding:
    prefix: -maxPercDel
- id: in_unpaired
  doc: ': If read names are not unique and reads are single-end, prevent pairing and
    merging.'
  type: boolean?
  inputBinding:
    prefix: -unpaired
- id: in_xx
  doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  type: boolean?
  inputBinding:
    prefix: -XX
- id: in_x_mx_one_zero_g
  doc: ': Increase heap space.'
  type: boolean?
  inputBinding:
    prefix: -Xmx10G
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- quasirecomb
