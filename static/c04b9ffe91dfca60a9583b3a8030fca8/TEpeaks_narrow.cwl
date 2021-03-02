class: CommandLineTool
id: TEpeaks_narrow.cwl
inputs:
- id: in_treatment
  doc: IP sample ( BAM )
  type: string?
  inputBinding:
    prefix: --treatment
- id: in_control
  doc: Control IP samples ( BAM )
  type: string?
  inputBinding:
    prefix: --control
- id: in_output_dir
  doc: Directory to write output to
  type: Directory?
  inputBinding:
    prefix: --outputdir
- id: in_fra_glen
  doc: "Fragment size (default: 200)\n--keepDup=STRING          How to deal with duplicate\
    \ reads. The valid values are 'auto', 'all', or 1 (default: auto)\n--shift=INT\
    \               Shift reads towards 3' end, if positive, or 5' end if negative.\
    \ (default: 0)\n--lmfold=INT              Lower limit of fold ratio against background\
    \ to build model (default: 10)\n--hmfold=INT              Higher limit of fold\
    \ ratio against background to build model (default: 30)"
  type: long?
  inputBinding:
    prefix: --fraglen
- id: in_prj_name
  doc: 'Name of the prject (default: NONAME)'
  type: string?
  inputBinding:
    prefix: --prjname
- id: in_pval
  doc: "P-value cutoff (default: 1e-5)\n--fdr=DOUBLE              False discovery\
    \ rate cutoff (default: 0.05)\n--toLarge                 Scale library size to\
    \ large sample (default: off)"
  type: long?
  inputBinding:
    prefix: --pval
- id: in_species
  doc: 'Species e.g., hs (Human hg19),  mm (Mouse mm9). (default: hs)'
  type: long?
  inputBinding:
    prefix: --species
- id: in_g_size
  doc: "Effective genome size (default: human genome 2.7e9)\n--threads=INT       \
    \      Number of threads to use (default: 1)\n--pileup=INT              The minuim\
    \ pileup required for peaks with multi-reads (default: 20)\n--fe=DOUBLE      \
    \         The minuim fold enrichment required for peaks with multi-reads (default:\
    \ 3)"
  type: long?
  inputBinding:
    prefix: --gsize
- id: in_num_it_r
  doc: 'Number of iterations (default: 50)'
  type: long?
  inputBinding:
    prefix: --numItr
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- TEpeaks
- narrow
