class: CommandLineTool
id: ScanIndel.py.cwl
inputs:
- id: in_setting_default_directory
  doc: :setting the output directory (default current working directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_setting_minalternatefraction_freebayes
  doc: :setting min-alternate-fraction for FreeBayes (default 0.2)
  type: boolean
  inputBinding:
    prefix: -F
- id: in_setting_minalternatecount_freebayes
  doc: :setting min-alternate-count for FreeBayes (default 2)
  type: boolean
  inputBinding:
    prefix: -C
- id: in_setting_mincoverage_freebayes
  doc: :setting min-coverage for Freebayes (default 0)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_setting__target
  doc: :setting --target for Freebayes to provide a BED file for analysis
  type: boolean
  inputBinding:
    prefix: -t
- id: in_softclipping_percentage_triggering
  doc: :softclipping percentage triggering BLAT re-alignment (default 0.2)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_min_percent_hq
  doc: :min percentage of high quality base in soft clipping reads, default 0.8
  type: boolean
  inputBinding:
    prefix: --min_percent_hq
- id: in_low_qual_cut_off
  doc: :low quality cutoff value, default 20
  type: boolean
  inputBinding:
    prefix: --lowqual_cutoff
- id: in_mapq_cut_off
  doc: :low mapping quality cutoff, default 1
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: in_blat_ident_pct_cut_off
  doc: :Blat sequence identity cutoff, default 0.8
  type: boolean
  inputBinding:
    prefix: --blat_ident_pct_cutoff
- id: in_gf_server_port
  doc: :gfServer service port number, default 50000
  type: boolean
  inputBinding:
    prefix: --gfServer_port
- id: in_hetero_factor
  doc: :The factor about the indel's heterogenirity and heterozygosity, default 0.1
  type: boolean
  inputBinding:
    prefix: --hetero_factor
- id: in_bam
  doc: :the input file is BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_rmd_up
  doc: :exccute duplicate removal step before realignment
  type: boolean
  inputBinding:
    prefix: --rmdup
- id: in_assembly_only
  doc: :only execute de novo assembly for indel calling without blat realignment (default
    False)
  type: boolean
  inputBinding:
    prefix: --assembly_only
- id: in_mapping_only
  doc: :only execute blat realignment withou de novo assembly for indel calling (default
    False)
  type: boolean
  inputBinding:
    prefix: --mapping_only
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_setting_default_directory
  doc: :setting the output directory (default current working directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_setting_default_directory)
cwlVersion: v1.1
baseCommand:
- ScanIndel.py
