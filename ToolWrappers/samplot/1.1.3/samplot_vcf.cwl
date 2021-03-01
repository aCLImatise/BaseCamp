class: CommandLineTool
id: samplot_vcf.cwl
inputs:
- id: in_vcf
  doc: "VCF file containing structural variants (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_out_dir
  doc: 'path to write output PNGs (default: samplot-out)'
  type: File?
  inputBinding:
    prefix: --out-dir
- id: in_ped
  doc: 'path ped (or .fam) file (default: None)'
  type: File?
  inputBinding:
    prefix: --ped
- id: in_dn_only
  doc: "plots only putative de novo variants (PED file\nrequired) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --dn_only
- id: in_min_call_rate
  doc: "only plot variants with at least this call-rate\n(default: 0.95)"
  type: long?
  inputBinding:
    prefix: --min_call_rate
- id: in_filter
  doc: "simple filter that samples must meet. Join multiple\nfilters with '&' and\
    \ specify --filter multiple times\nfor 'or' e.g. DHFFC < 0.7 & SVTYPE = 'DEL'\
    \ (default:\n[])"
  type: double?
  inputBinding:
    prefix: --filter
- id: in_output_type
  doc: 'type of output figure (default: png)'
  type: string?
  inputBinding:
    prefix: --output_type
- id: in_max_he_ts
  doc: "only plot variants with at most this many\nheterozygotes (default: None)"
  type: long?
  inputBinding:
    prefix: --max_hets
- id: in_min_entries
  doc: "try to include homref samples as controls to get this\nmany samples in plot\
    \ (default: 6)"
  type: long?
  inputBinding:
    prefix: --min_entries
- id: in_max_entries
  doc: "only plot at most this many heterozygotes (default:\n10)"
  type: long?
  inputBinding:
    prefix: --max_entries
- id: in_max_mb
  doc: "skip variants longer than this many megabases\n(default: None)"
  type: long?
  inputBinding:
    prefix: --max_mb
- id: in_min_bp
  doc: "skip variants shorter than this many bases (default:\n20)"
  type: long?
  inputBinding:
    prefix: --min_bp
- id: in_important_regions
  doc: "only report variants that overlap regions in this bed\nfile (default: None)"
  type: File?
  inputBinding:
    prefix: --important_regions
- id: in_bams
  doc: "Space-delimited list of BAM/CRAM file names (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --bams
- id: in_sample_ids
  doc: "Space-delimited list of sample IDs, must have same\norder as BAM/CRAM file\
    \ names. BAM RG tag required if\nthis is omitted. (default: None)"
  type: string[]
  inputBinding:
    prefix: --sample_ids
- id: in_command_file
  doc: "store commands in this file. (default:\nsamplot_vcf_cmds.tmp)"
  type: File?
  inputBinding:
    prefix: --command_file
- id: in_format
  doc: "comma separated list of FORMAT fields to include in\nsample plot title (default:\
    \ AS,AP,DHFFC)"
  type: string?
  inputBinding:
    prefix: --format
- id: in_gff_three
  doc: "genomic regions (.gff with .tbi in same directory)\nused when building HTML\
    \ table and table filters\n(default: None)"
  type: long?
  inputBinding:
    prefix: --gff3
- id: in_down_sample
  doc: 'Number of normal reads/pairs to plot (default: 1)'
  type: long?
  inputBinding:
    prefix: --downsample
- id: in_manual_run
  doc: "don't auto-run the samplot plot commands (command_file\nwill be deleted) (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --manual_run
- id: in_debug
  doc: "prints out the reason each skipped variant entry is\nskipped (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'path to write output PNGs (default: samplot-out)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samplot:1.1.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- samplot
- vcf
