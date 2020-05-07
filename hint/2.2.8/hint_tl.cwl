class: CommandLineTool
id: hint_tl.cwl
inputs:
- id: matrix_file
  doc: The matrix compressed file contains 1Mb and 100kb resolutions Hi-C contact
    matrix (.hic format), or 1Mb and 100kb resolution files seperate with ',', like
    /path/to/data_1Mb.cool,/path/to/data_100kb.cool or the directory that contain
    Hi-C interaction matrix in sparse or dense matrix format, interchromosomal interaction
    matrices only. Absolute path is required
  type: string
  inputBinding:
    prefix: --matrixfile
- id: ref_dir
  doc: the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)
  type: string
  inputBinding:
    prefix: --refdir
- id: enzyme
  doc: 'Enzyme used in Hi-C experiment, DEFAULT: MboI'
  type: string
  inputBinding:
    prefix: --enzyme
- id: format
  doc: 'Format for the output contact matrix, DEFAULT: cooler'
  type: string
  inputBinding:
    prefix: --format
- id: p_path
  doc: Path for pairix, use 'which pairix' to get the path
  type: string
  inputBinding:
    prefix: --ppath
- id: genome
  doc: 'Specify your species, choose form hg38, hg19, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --genome
- id: chimeric
  doc: Chimeric read pairs with .pairsam format. If no chimeric reads provided, breakpoints
    in 100kb resolution will be output only
  type: string
  inputBinding:
    prefix: --chimeric
- id: back_dir
  doc: Path to the directory of backgroundInterchromMatrixDir, can be downloaded from  https://www.dropbox.com/sh/2ufsyu4wvrboxxp/AABk5-_Fwy7
    jdM_t0vIsgYf4a?dl=0., named as backgroundMatrices, e,g. path_to_/backgroundMatrices/genome
  type: string
  inputBinding:
    prefix: --backdir
- id: cut_off
  doc: Cutoff of the rank product for chromosomal pairs to select candidate translocated
    chromosomal pairs, default = 0.05
  type: string
  inputBinding:
    prefix: --cutoff
- id: outdir
  doc: Path to the output directory, where you want to store all the output files,
    if not set, the current directory will be used
  type: string
  inputBinding:
    prefix: --outdir
- id: name
  doc: Prefix for the result files. If not set, 'NA' will be used instead
  type: string
  inputBinding:
    prefix: --name
- id: threads
  doc: 'Number of threads for running HiNT-tl translocation breakpoints detection
    part, DEFAULT: 16'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hint
- tl
