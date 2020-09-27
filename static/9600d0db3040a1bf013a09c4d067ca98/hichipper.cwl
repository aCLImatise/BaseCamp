class: CommandLineTool
id: hichipper.cwl
inputs:
- id: in_out
  doc: "Output directory name; must not be already\nexisting [Required]  [required]"
  type: Directory
  inputBinding:
    prefix: --out
- id: in_keep_temp_files
  doc: Keep temporary files?
  type: boolean
  inputBinding:
    prefix: --keep-temp-files
- id: in_input_vi
  doc: "Comma-separted list of interactions files for\nloop calling; option valid\
    \ only in `call`\nmode"
  type: string
  inputBinding:
    prefix: --input-vi
- id: in_restriction_frags
  doc: "Filepath to restriction fragment files; will\noverwrite specification of this\
    \ file when a\n.yaml is supplied for mode"
  type: File
  inputBinding:
    prefix: --restriction-frags
- id: in_peaks
  doc: "Either 1 of 4 peak logic strings or a valid\nfilepath to a .bed (or similary\
    \ formatted)\nfile; defers to what is in the .yaml"
  type: File
  inputBinding:
    prefix: --peaks
- id: in_keep_samples
  doc: "Comma separated list of sample names to keep;\nALL (special string) by default"
  type: string
  inputBinding:
    prefix: --keep-samples
- id: in_ignore_samples
  doc: "Comma separated list of sample names to\nignore; NONE (special string) by\
    \ default"
  type: string
  inputBinding:
    prefix: --ignore-samples
- id: in_read_length
  doc: "Length of reads from sequencing runs; default\n= 75"
  type: long
  inputBinding:
    prefix: --read-length
- id: in_min_dist
  doc: Minimum distance for loop calls; default =
  type: long
  inputBinding:
    prefix: --min-dist
- id: in_macs_two_genome
  doc: "Argument to pass to the -g variable in MACS2\n(mm for mouse genome; hs for\
    \ human genome);\ndefault = \"hs\""
  type: long
  inputBinding:
    prefix: --macs2-genome
- id: in_peak_pad
  doc: "Peak padding width (applied on both left and\nright); default = 500"
  type: long
  inputBinding:
    prefix: --peak-pad
- id: in_merge_gap
  doc: "Merge nearby peaks (after all padding is\ncomplete; default = 500"
  type: long
  inputBinding:
    prefix: --merge-gap
- id: in_no_merge
  doc: "Completely skip anchor merging; will affect\nsummary statistics. Not recommended\
    \ unless\nunderstood what is happening."
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: in_skip_res_frag_pad
  doc: Skip restriction fragment aware padding
  type: boolean
  inputBinding:
    prefix: --skip-resfrag-pad
- id: in_skip_background_correction
  doc: "Skip restriction fragment aware background\ncorrection?"
  type: boolean
  inputBinding:
    prefix: --skip-background-correction
- id: in_make_ucsc
  doc: "Make additional output files that can support\nviewing in UCSC genome browser;\
    \ requires\ntabix and bgzip; does the same thing as\n--make-washu."
  type: boolean
  inputBinding:
    prefix: --make-ucsc
- id: in_make_washu
  doc: "Make additional output files that can support\nviewing in WashU genome browser;\
    \ requires\ntabix and bgzip; does the same thing as\n--make-ucsc."
  type: boolean
  inputBinding:
    prefix: --make-washu
- id: in_basic_qc
  doc: Create a simple QC report without Pandoc
  type: boolean
  inputBinding:
    prefix: --basic-qc
- id: in_skip_diff_loop
  doc: "Skip analyses in diffloop (e.g. Mango loop\ncalling; .rds generation)"
  type: boolean
  inputBinding:
    prefix: --skip-diffloop
- id: in_bed_tools_path
  doc: "Path to bedtools; by default, assumes that\nbedtools is in PATH"
  type: File
  inputBinding:
    prefix: --bedtools-path
- id: in_macs_two_path
  doc: "Path to macs2; by default, assumes that macs2\nis in PATH"
  type: File
  inputBinding:
    prefix: --macs2-path
- id: in_tab_ix_path
  doc: "Path to samtools; by default, assumes that\ntabix is in PATH"
  type: File
  inputBinding:
    prefix: --tabix-path
- id: in_b_gzip_path
  doc: "Path to macs2; by default, assumes that bgzip\nis in PATH"
  type: File
  inputBinding:
    prefix: --bgzip-path
- id: in_r_path
  doc: Path to R; by default, assumes that R is in
  type: File
  inputBinding:
    prefix: --r-path
- id: in_ma__maxdist
  doc: -ma, --max-dist TEXT           Maximum distance for loop calls; default =
  type: long
  inputBinding:
    position: 0
- id: in__macsstring_text
  doc: --macs2-string TEXT            String of arguments to pass to MACS2; only is
  type: long
  inputBinding:
    position: 1
- id: in_path
  doc: --help                         Show this message and exit.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output directory name; must not be already\nexisting [Required]  [required]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- hichipper
