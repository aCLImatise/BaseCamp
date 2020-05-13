class: CommandLineTool
id: samplot_vcf.cwl
inputs:
- id: vcf
  doc: 'VCF file containing structural variants (default: None)'
  type: string
  inputBinding:
    prefix: --vcf
- id: out_dir
  doc: 'path to write output PNGs (default: samplot-out)'
  type: string
  inputBinding:
    prefix: --out-dir
- id: ped
  doc: 'path ped (or .fam) file (default: None)'
  type: string
  inputBinding:
    prefix: --ped
- id: dn_only
  doc: 'plots only putative de novo variants (PED file required) (default: False)'
  type: boolean
  inputBinding:
    prefix: --dn_only
- id: min_call_rate
  doc: 'only plot variants with at least this call-rate (default: 0.95)'
  type: long
  inputBinding:
    prefix: --min_call_rate
- id: filter
  doc: "simple filter that samples must meet. Join multiple filters with '&' and specify\
    \ --filter multiple times for 'or' e.g. DHFFC < 0.7 & SVTYPE = 'DEL' (default:\
    \ [])"
  type: string
  inputBinding:
    prefix: --filter
- id: output_type
  doc: 'type of output figure (default: png)'
  type: string
  inputBinding:
    prefix: --output_type
- id: max_he_ts
  doc: 'only plot variants with at most this many heterozygotes (default: None)'
  type: long
  inputBinding:
    prefix: --max_hets
- id: min_entries
  doc: 'try to include homref samples as controls to get this many samples in plot
    (default: 6)'
  type: long
  inputBinding:
    prefix: --min_entries
- id: max_entries
  doc: 'only plot at most this many heterozygotes (default: 10)'
  type: long
  inputBinding:
    prefix: --max_entries
- id: max_mb
  doc: 'skip variants longer than this many megabases (default: 1)'
  type: long
  inputBinding:
    prefix: --max_mb
- id: min_bp
  doc: 'skip variants shorter than this many bases (default: 20)'
  type: long
  inputBinding:
    prefix: --min_bp
- id: important_regions
  doc: 'only report variants that overlap regions in this bed file (default: None)'
  type: string
  inputBinding:
    prefix: --important_regions
- id: bams
  doc: 'Space-delimited list of BAM/CRAM file names (default: None)'
  type: string[]
  inputBinding:
    prefix: --bams
- id: sample_ids
  doc: 'Space-delimited list of sample IDs, must have same order as BAM/CRAM file
    names. BAM RG tag required if this is omitted. (default: None)'
  type: string[]
  inputBinding:
    prefix: --sample_ids
- id: command_file
  doc: 'store commands in this file. (default: samplot_vcf_cmds.tmp)'
  type: string
  inputBinding:
    prefix: --command_file
- id: format
  doc: 'comma separated list of FORMAT fields to include in sample plot title (default:
    AS,AP,DHFFC)'
  type: string
  inputBinding:
    prefix: --format
- id: gff
  doc: 'genomic regions (.gff with .tbi in same directory) used when building HTML
    table and table filters (default: None)'
  type: string
  inputBinding:
    prefix: --gff
- id: down_sample
  doc: 'Number of normal reads/pairs to plot (default: 1)'
  type: string
  inputBinding:
    prefix: --downsample
- id: manual_run
  doc: "don't auto-run the samplot plot commands (command_file will be deleted) (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --manual_run
outputs: []
cwlVersion: v1.1
baseCommand:
- samplot
- vcf
