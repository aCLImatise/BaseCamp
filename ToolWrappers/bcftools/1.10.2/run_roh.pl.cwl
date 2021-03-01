class: CommandLineTool
id: run_roh.pl.cwl
inputs:
- id: in_af_an_not_s
  doc: Allele frequency annotations [1000GP-AFs/AFs.tab.gz]
  type: File?
  inputBinding:
    prefix: --af-annots
- id: in_in_dir
  doc: Input directory with VCF files
  type: Directory?
  inputBinding:
    prefix: --indir
- id: in_include
  doc: Select sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: Exclude sites for which the epxression is true
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_min_length
  doc: Filter input regions shorter than this [1e6]
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_gen_map
  doc: Directory with genetic map in IMPUTE2 format (optional)
  type: Directory?
  inputBinding:
    prefix: --genmap
- id: in_rec_rate
  doc: constant recombination rate per bp (optional)
  type: double?
  inputBinding:
    prefix: --rec-rate
- id: in_min_markers
  doc: Filter input regions with fewer marker than this [100]
  type: long?
  inputBinding:
    prefix: --min-markers
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_min_qual
  doc: Filter input regions with quality smaller than this [10]
  type: long?
  inputBinding:
    prefix: --min-qual
- id: in_roh_args
  doc: Extra arguments to pass to bcftools roh
  type: string?
  inputBinding:
    prefix: --roh-args
- id: in_silent
  doc: Quiet output, do not print commands
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- run-roh.pl
