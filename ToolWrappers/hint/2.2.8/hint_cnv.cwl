class: CommandLineTool
id: hint_cnv.cwl
inputs:
- id: in_matrix_file
  doc: "The matrix compressed file contains single or multiple\nresolutions Hi-C contact\
    \ matrix files (multi-cool, or\nhic file), resolution should be set via parameter\
    \ -r;\nor a sparse | dense format matrix file whole genome\nwidely (not suggest\
    \ when using a high resolution)"
  type: File
  inputBinding:
    prefix: --matrixfile
- id: in_ref_dir
  doc: "the reference directory that downloaded from dropbox\ndropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A\n\
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
  type: Directory
  inputBinding:
    prefix: --refdir
- id: in_map_track
  doc: "Choose which ENCODE mappability track should be used\nfor regression. See\
    \ more details\nhttp://genome.ucsc.edu/cgi-\nbin/hgTrackUi?db=hg18&g=wgEncodeMapability.\
    \ DEFAULT:\n50mer"
  type: string
  inputBinding:
    prefix: --maptrack
- id: in_bic_seq
  doc: /path/to/bicseqDir/
  type: File
  inputBinding:
    prefix: --bicseq
- id: in_do_iter
  doc: "If this switch is on, HiNT will do the iterative\nregression model by removing\
    \ copy numer variated\nregions, DEFAULT=False"
  type: boolean
  inputBinding:
    prefix: --doiter
- id: in_format
  doc: 'Format for the output contact matrix, DEFAULT: cooler'
  type: string
  inputBinding:
    prefix: --format
- id: in_enzyme
  doc: "enzyme used for the Hi-C experiments, will be used to\ncalculate enzyme sites"
  type: string
  inputBinding:
    prefix: --enzyme
- id: in_resolution
  doc: "Resolution for the Hi-C contact matrix used for the\nCNV detection, unit:\
    \ kb, DEFAULT: 50kb"
  type: long
  inputBinding:
    prefix: --resolution
- id: in_genome
  doc: "Specify your species, choose form hg38, hg19, and\nmm10. DEFAULT: hg19"
  type: string
  inputBinding:
    prefix: --genome
- id: in_outdir
  doc: "Path to the output directory, where you want to store\nall the output files,\
    \ if not set, the current\ndirectory will be used"
  type: File
  inputBinding:
    prefix: --outdir
- id: in_name
  doc: "Prefix for the result files. If not set, 'NA' will be\nused instead"
  type: string
  inputBinding:
    prefix: --name
- id: in_threads
  doc: "Number of threads for running HiNT-cnv, DEFAULT: 16\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Path to the output directory, where you want to store\nall the output files,\
    \ if not set, the current\ndirectory will be used"
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hint
- cnv
