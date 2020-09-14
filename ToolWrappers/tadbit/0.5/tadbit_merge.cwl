class: CommandLineTool
id: ../../../tadbit_merge.cwl
inputs:
- id: in_workdir
  doc: path to a new output folder
  type: File
  inputBinding:
    prefix: --workdir
- id: in_workdir_one
  doc: path to working directory of the first HiC data sample to merge
  type: File
  inputBinding:
    prefix: --workdir1
- id: in_workdir_two
  doc: path to working directory of the second HiC data sample to merge
  type: File
  inputBinding:
    prefix: --workdir2
- id: in_bam_one
  doc: "path to the first TADbit-generated BAM file with all reads (other\nwise the\
    \ tool will guess from the working directory database)"
  type: File
  inputBinding:
    prefix: --bam1
- id: in_nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: in_bam_two
  doc: "path to the second TADbit-generated BAM file with all reads (other\nwise the\
    \ tool will guess from the working directory database)"
  type: File
  inputBinding:
    prefix: --bam2
- id: in_cpus
  doc: "[8] Maximum number of CPU cores available in the execution host. If\nhigher\
    \ than 1, tasks with multi-threading capabilities will enabled\n(if 0 all available)\
    \ cores will be used"
  type: long
  inputBinding:
    prefix: --cpus
- id: in_resolution
  doc: resolution at which to do the comparison, and generate the matrices.
  type: long
  inputBinding:
    prefix: --resolution
- id: in_skip_comparison
  doc: "skip the comparison between replicates (faster). Comparisons are\nperformed\
    \ at 3 levels 1- comparing first diagonals of each\nexperiment (and generating\
    \ SCC score and standard deviation see\nhttps://doi.org/10.1101/gr.220640.117)\
    \ 2- Comparing the first\neigenvectors of input experiments 3- Generates reproducibility\
    \ score\nusing function from https://doi.org/10.1093/bioinformatics/btx152"
  type: boolean
  inputBinding:
    prefix: --skip_comparison
- id: in_skip_merge
  doc: skip the merge of replicates (faster).
  type: boolean
  inputBinding:
    prefix: --skip_merge
- id: in_save
  doc: '[genome] save genomic or chromosomic matrix.'
  type: string[]
  inputBinding:
    prefix: --save
- id: in_jobid_one
  doc: "Use as input data generated by a job with a given jobid. Use tadbit\ndescribe\
    \ to find out which."
  type: long
  inputBinding:
    prefix: --jobid1
- id: in_jobid_two
  doc: "Use as input data generated by a job with a given jobid. Use tadbit\ndescribe\
    \ to find out which."
  type: long
  inputBinding:
    prefix: --jobid2
- id: in_force
  doc: overwrite previously run job
  type: boolean
  inputBinding:
    prefix: --force
- id: in_norm
  doc: compare normalized matrices
  type: boolean
  inputBinding:
    prefix: --norm
- id: in_biases_one
  doc: path to file with precalculated biases by columns
  type: File
  inputBinding:
    prefix: --biases1
- id: in_biases_two
  doc: path to file with precalculated biases by columns
  type: File
  inputBinding:
    prefix: --biases2
- id: in_filter
  doc: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid\npair of\
    \ reads e.g.: '--apply 1 2 3 4 8 9 10'. Where these\nnumberscorrespond to: 1:\
    \ self-circle, 2: dangling-end, 3: error, 4:\nextra dangling-end, 5: too close\
    \ from RES, 6: too short, 7: too\nlarge, 8: over-represented, 9: duplicated, 10:\
    \ random breaks, 11:\ntrans-chromosomic"
  type: long[]
  inputBinding:
    prefix: --filter
- id: in_sam_tools
  doc: path samtools binary
  type: File
  inputBinding:
    prefix: --samtools
- id: in_tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: path to a new output folder
  type: File
  outputBinding:
    glob: $(inputs.in_workdir)
cwlVersion: v1.1
baseCommand:
- tadbit
- merge