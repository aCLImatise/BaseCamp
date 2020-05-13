class: CommandLineTool
id: hichipper.cwl
inputs:
- id: out
  doc: Output directory name; must not be already existing [Required]  [required]
  type: string
  inputBinding:
    prefix: --out
- id: keep_temp_files
  doc: Keep temporary files?
  type: boolean
  inputBinding:
    prefix: --keep-temp-files
- id: input_vi
  doc: Comma-separted list of interactions files for loop calling; option valid only
    in `call` mode
  type: string
  inputBinding:
    prefix: --input-vi
- id: restriction_frags
  doc: Filepath to restriction fragment files; will overwrite specification of this
    file when a .yaml is supplied for mode
  type: string
  inputBinding:
    prefix: --restriction-frags
- id: peaks
  doc: Either 1 of 4 peak logic strings or a valid filepath to a .bed (or similary
    formatted) file; defers to what is in the .yaml
  type: string
  inputBinding:
    prefix: --peaks
- id: keep_samples
  doc: Comma separated list of sample names to keep; ALL (special string) by default
  type: string
  inputBinding:
    prefix: --keep-samples
- id: ignore_samples
  doc: Comma separated list of sample names to ignore; NONE (special string) by default
  type: string
  inputBinding:
    prefix: --ignore-samples
- id: read_length
  doc: Length of reads from sequencing runs; default = 75
  type: string
  inputBinding:
    prefix: --read-length
- id: min_dist
  doc: Minimum distance for loop calls; default = 5000
  type: string
  inputBinding:
    prefix: --min-dist
- id: max_dist
  doc: Maximum distance for loop calls; default = 2000000
  type: string
  inputBinding:
    prefix: --max-dist
- id: macs2_string
  doc: String of arguments to pass to MACS2; only is called when peaks are set to
    be called; default = "-q 0.01 --extsize 147 --nomodel"
  type: string
  inputBinding:
    prefix: --macs2-string
- id: macs2_genome
  doc: Argument to pass to the -g variable in MACS2 (mm for mouse genome; hs for human
    genome); default = "hs"
  type: string
  inputBinding:
    prefix: --macs2-genome
- id: peak_pad
  doc: Peak padding width (applied on both left and right); default = 500
  type: string
  inputBinding:
    prefix: --peak-pad
- id: merge_gap
  doc: Merge nearby peaks (after all padding is complete; default = 500
  type: string
  inputBinding:
    prefix: --merge-gap
- id: no_merge
  doc: Completely skip anchor merging; will affect summary statistics. Not recommended
    unless understood what is happening.
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: skip_res_frag_pad
  doc: Skip restriction fragment aware padding
  type: boolean
  inputBinding:
    prefix: --skip-resfrag-pad
- id: skip_background_correction
  doc: Skip restriction fragment aware background correction?
  type: boolean
  inputBinding:
    prefix: --skip-background-correction
- id: make_ucsc
  doc: Make additional output files that can support viewing in UCSC genome browser;
    requires tabix and bgzip; does the same thing as --make-washu.
  type: boolean
  inputBinding:
    prefix: --make-ucsc
- id: make_washu
  doc: Make additional output files that can support viewing in WashU genome browser;
    requires tabix and bgzip; does the same thing as --make-ucsc.
  type: boolean
  inputBinding:
    prefix: --make-washu
- id: basic_qc
  doc: Create a simple QC report without Pandoc
  type: boolean
  inputBinding:
    prefix: --basic-qc
- id: skip_diff_loop
  doc: Skip analyses in diffloop (e.g. Mango loop calling; .rds generation)
  type: boolean
  inputBinding:
    prefix: --skip-diffloop
- id: bed_tools_path
  doc: Path to bedtools; by default, assumes that bedtools is in PATH
  type: string
  inputBinding:
    prefix: --bedtools-path
- id: macs2_path
  doc: Path to macs2; by default, assumes that macs2 is in PATH
  type: string
  inputBinding:
    prefix: --macs2-path
- id: tab_ix_path
  doc: Path to samtools; by default, assumes that tabix is in PATH
  type: string
  inputBinding:
    prefix: --tabix-path
- id: b_gzip_path
  doc: Path to macs2; by default, assumes that bgzip is in PATH
  type: string
  inputBinding:
    prefix: --bgzip-path
- id: r_path
  doc: Path to R; by default, assumes that R is in PATH
  type: string
  inputBinding:
    prefix: --r-path
outputs: []
cwlVersion: v1.1
baseCommand:
- hichipper
