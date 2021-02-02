class: CommandLineTool
id: PileOMeth_mbias.cwl
inputs:
- id: in_minimum_mapq_threshold
  doc: Minimum MAPQ threshold to include an alignment (default 10)
  type: long
  inputBinding:
    prefix: -q
- id: in_minimum_phred_threshold
  doc: "Minimum Phred threshold to include a base (default 5). This\nmust be >0."
  type: long
  inputBinding:
    prefix: -p
- id: in_maximum_perbase_depth
  doc: Maximum per-base depth (default 2000)
  type: long
  inputBinding:
    prefix: -D
- id: in_region_string_extract
  doc: Region string in which to extract methylation
  type: string
  inputBinding:
    prefix: -r
- id: in_bed_file_listing
  doc: "A BED file listing regions for inclusion. Note that unlike\nsamtools mpileup,\
    \ this option will utilize the strand column\n(column 6) if present. Thus, if\
    \ a region has a '+' in this\ncolumn, then only metrics from the top strand will\
    \ be\noutput. Note that the -r option can be used to limit the\nregions of -l."
  type: File
  inputBinding:
    prefix: -l
- id: in_keep_dupes
  doc: "By default, any alignment marked as a duplicate is ignored.\nThis option causes\
    \ them to be incorporated."
  type: boolean
  inputBinding:
    prefix: --keepDupes
- id: in_keep_singleton
  doc: "By default, if only one read in a pair aligns (a singleton)\nthen it's ignored."
  type: boolean
  inputBinding:
    prefix: --keepSingleton
- id: in_keep_discordant
  doc: "default, paired-end alignments with the properly-paired bit\nunset in the\
    \ FLAG field are ignored. Note that the definition\nof concordant and discordant\
    \ is based on your aligner\nsettings."
  type: string
  inputBinding:
    prefix: --keepDiscordant
- id: in_ignore_flags
  doc: "By deault, any alignment marked as secondary (bit 0x100),\nfailing QC (bit\
    \ 0x200), a PCR/optical duplicate (0x400) or\nsupplemental (0x800) is ignored.\
    \ This equates to a value of\n0xF00 or 3840 in decimal. If you would like to change\
    \ that,\nyou can specify a new value here.\nignored. Specifying this causes them\
    \ to be included."
  type: boolean
  inputBinding:
    prefix: --ignoreFlags
- id: in_txt
  doc: "Output tab separated metrics to the screen. These can be\nimported into R\
    \ or another program for manual plotting and\nanalysis."
  type: boolean
  inputBinding:
    prefix: --txt
- id: in_no_svg
  doc: "Don't produce the SVG files. This option implies --txt. Note\nthat an output\
    \ prefix is no longer required with this option."
  type: boolean
  inputBinding:
    prefix: --noSVG
- id: in_no_cpg
  doc: Do not output CpG methylation metrics
  type: boolean
  inputBinding:
    prefix: --noCpG
- id: in_chg
  doc: Output CHG methylation metrics
  type: boolean
  inputBinding:
    prefix: --CHG
- id: in_chh
  doc: Output CHH methylation metrics
  type: boolean
  inputBinding:
    prefix: --CHH
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sorted_alignments_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed_file_listing
  doc: "A BED file listing regions for inclusion. Note that unlike\nsamtools mpileup,\
    \ this option will utilize the strand column\n(column 6) if present. Thus, if\
    \ a region has a '+' in this\ncolumn, then only metrics from the top strand will\
    \ be\noutput. Note that the -r option can be used to limit the\nregions of -l."
  type: File
  outputBinding:
    glob: $(inputs.in_bed_file_listing)
cwlVersion: v1.1
baseCommand:
- PileOMeth
- mbias
