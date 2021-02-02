class: CommandLineTool
id: hint_tl.cwl
inputs:
- id: in_back_dir
  doc: '[-c CUTOFF] [-o OUTDIR]'
  type: string
  inputBinding:
    prefix: --backdir
- id: in_matrix_file
  doc: "The matrix compressed file contains 1Mb and 100kb\nresolutions Hi-C contact\
    \ matrix (.hic format), or 1Mb\nand 100kb resolution files seperate with ',',\
    \ like\n/path/to/data_1Mb.cool,/path/to/data_100kb.cool or the\ndirectory that\
    \ contain Hi-C interaction matrix in\nsparse or dense matrix format, interchromosomal\n\
    interaction matrices only. Absolute path is required"
  type: File
  inputBinding:
    prefix: --matrixfile
- id: in_ref_dir
  doc: "the reference directory that downloaded from dropbox\ndropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A\n\
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
  type: Directory
  inputBinding:
    prefix: --refdir
- id: in_enzyme
  doc: 'Enzyme used in Hi-C experiment, DEFAULT: MboI'
  type: string
  inputBinding:
    prefix: --enzyme
- id: in_format
  doc: 'Format for the output contact matrix, DEFAULT: cooler'
  type: string
  inputBinding:
    prefix: --format
- id: in_p_path
  doc: Path for pairix, use 'which pairix' to get the path
  type: File
  inputBinding:
    prefix: --ppath
- id: in_genome
  doc: "Specify your species, choose form hg38, hg19, and\nmm10. DEFAULT: hg19"
  type: string
  inputBinding:
    prefix: --genome
- id: in_chimeric
  doc: "Chimeric read pairs with .pairsam format. If no\nchimeric reads provided,\
    \ breakpoints in 100kb\nresolution will be output only"
  type: long
  inputBinding:
    prefix: --chimeric
- id: in_cut_off
  doc: "Cutoff of the rank product for chromosomal pairs to\nselect candidate translocated\
    \ chromosomal pairs,\ndefault = 0.05"
  type: double
  inputBinding:
    prefix: --cutoff
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
  doc: "Number of threads for running HiNT-tl translocation\nbreakpoints detection\
    \ part, DEFAULT: 16\n"
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
- tl
