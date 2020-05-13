class: CommandLineTool
id: ScanIndel.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scan_in_delpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: o
  doc: :setting the output directory (default current working directory)
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: :setting min-alternate-fraction for FreeBayes (default 0.2)
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: :setting min-alternate-count for FreeBayes (default 2)
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: :setting min-coverage for Freebayes (default 0)
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: :setting --target for Freebayes to provide a BED file for analysis
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: :softclipping percentage triggering BLAT re-alignment (default 0.2)
  type: boolean
  inputBinding:
    prefix: -s
- id: min_percent_hq
  doc: :min percentage of high quality base in soft clipping reads, default 0.8
  type: boolean
  inputBinding:
    prefix: --min_percent_hq
- id: low_qual_cut_off
  doc: :low quality cutoff value, default 20
  type: boolean
  inputBinding:
    prefix: --lowqual_cutoff
- id: mapq_cut_off
  doc: :low mapping quality cutoff, default 1
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: blat_ident_pct_cut_off
  doc: :Blat sequence identity cutoff, default 0.8
  type: boolean
  inputBinding:
    prefix: --blat_ident_pct_cutoff
- id: gf_server_port
  doc: :gfServer service port number, default 50000
  type: boolean
  inputBinding:
    prefix: --gfServer_port
- id: hetero_factor
  doc: :The factor about the indel's heterogenirity and heterozygosity, default 0.1
  type: boolean
  inputBinding:
    prefix: --hetero_factor
- id: bam
  doc: :the input file is BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: rmd_up
  doc: :exccute duplicate removal step before realignment
  type: boolean
  inputBinding:
    prefix: --rmdup
- id: assembly_only
  doc: :only execute de novo assembly for indel calling without blat realignment (default
    False)
  type: boolean
  inputBinding:
    prefix: --assembly_only
- id: mapping_only
  doc: :only execute blat realignment withou de novo assembly for indel calling (default
    False)
  type: boolean
  inputBinding:
    prefix: --mapping_only
outputs: []
cwlVersion: v1.1
baseCommand:
- ScanIndel.py
