#!/usr/bin/env cwl-runner

baseCommand:
- hichipper
class: CommandLineTool
cwlVersion: v1.0
id: hichipper
inputs:
- doc: Output directory name; must not be already existing [Required]  [required]
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: Keep temporary files?
  id: keep_temp_files
  inputBinding:
    prefix: --keep-temp-files
  type: boolean
- doc: Comma-separted list of interactions files for loop calling; option valid only
    in `call` mode
  id: input_vi
  inputBinding:
    prefix: --input-vi
  type: string
- doc: Filepath to restriction fragment files; will overwrite specification of this
    file when a .yaml is supplied for mode
  id: restriction_frags
  inputBinding:
    prefix: --restriction-frags
  type: string
- doc: Either 1 of 4 peak logic strings or a valid filepath to a .bed (or similary
    formatted) file; defers to what is in the .yaml
  id: peaks
  inputBinding:
    prefix: --peaks
  type: string
- doc: Comma separated list of sample names to keep; ALL (special string) by default
  id: keep_samples
  inputBinding:
    prefix: --keep-samples
  type: string
- doc: Comma separated list of sample names to ignore; NONE (special string) by default
  id: ignore_samples
  inputBinding:
    prefix: --ignore-samples
  type: string
- doc: Length of reads from sequencing runs; default = 75
  id: read_length
  inputBinding:
    prefix: --read-length
  type: string
- doc: Minimum distance for loop calls; default = 5000
  id: min_dist
  inputBinding:
    prefix: --min-dist
  type: string
- doc: Maximum distance for loop calls; default = 2000000
  id: max_dist
  inputBinding:
    prefix: --max-dist
  type: string
- doc: String of arguments to pass to MACS2; only is called when peaks are set to
    be called; default = "-q 0.01 --extsize 147 --nomodel"
  id: macs2_string
  inputBinding:
    prefix: --macs2-string
  type: string
- doc: Argument to pass to the -g variable in MACS2 (mm for mouse genome; hs for human
    genome); default = "hs"
  id: macs2_genome
  inputBinding:
    prefix: --macs2-genome
  type: string
- doc: Peak padding width (applied on both left and right); default = 500
  id: peak_pad
  inputBinding:
    prefix: --peak-pad
  type: string
- doc: Merge nearby peaks (after all padding is complete; default = 500
  id: merge_gap
  inputBinding:
    prefix: --merge-gap
  type: string
- doc: Completely skip anchor merging; will affect summary statistics. Not recommended
    unless understood what is happening.
  id: no_merge
  inputBinding:
    prefix: --no-merge
  type: boolean
- doc: Skip restriction fragment aware padding
  id: skip_res_frag_pad
  inputBinding:
    prefix: --skip-resfrag-pad
  type: boolean
- doc: Skip restriction fragment aware background correction?
  id: skip_background_correction
  inputBinding:
    prefix: --skip-background-correction
  type: boolean
- doc: Make additional output files that can support viewing in UCSC genome browser;
    requires tabix and bgzip; does the same thing as --make-washu.
  id: make_ucsc
  inputBinding:
    prefix: --make-ucsc
  type: boolean
- doc: Make additional output files that can support viewing in WashU genome browser;
    requires tabix and bgzip; does the same thing as --make-ucsc.
  id: make_washu
  inputBinding:
    prefix: --make-washu
  type: boolean
- doc: Create a simple QC report without Pandoc
  id: basic_qc
  inputBinding:
    prefix: --basic-qc
  type: boolean
- doc: Skip analyses in diffloop (e.g. Mango loop calling; .rds generation)
  id: skip_diff_loop
  inputBinding:
    prefix: --skip-diffloop
  type: boolean
- doc: Path to bedtools; by default, assumes that bedtools is in PATH
  id: bed_tools_path
  inputBinding:
    prefix: --bedtools-path
  type: string
- doc: Path to macs2; by default, assumes that macs2 is in PATH
  id: macs2_path
  inputBinding:
    prefix: --macs2-path
  type: string
- doc: Path to samtools; by default, assumes that tabix is in PATH
  id: tab_ix_path
  inputBinding:
    prefix: --tabix-path
  type: string
- doc: Path to macs2; by default, assumes that bgzip is in PATH
  id: b_gzip_path
  inputBinding:
    prefix: --bgzip-path
  type: string
- doc: Path to R; by default, assumes that R is in PATH
  id: r_path
  inputBinding:
    prefix: --r-path
  type: string
