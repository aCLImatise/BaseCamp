class: CommandLineTool
id: PileOMeth_extract.cwl
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
- id: in_minimum_perbase_depth
  doc: Minimum per-base depth for reporting output. If you use
  type: long
  inputBinding:
    prefix: -d
- id: in_merge_context
  doc: ', this then applies to the merged CpG/CHG.'
  type: boolean
  inputBinding:
    prefix: --mergeContext
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
- id: in_op_ref
  doc: "Output filename prefix. CpG/CHG/CHH context metrics will be\noutput to STR_CpG.bedGraph\
    \ and so on."
  type: File
  inputBinding:
    prefix: --opref
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
- id: in_no_cpg
  doc: Do not output CpG context methylation metrics
  type: boolean
  inputBinding:
    prefix: --noCpG
- id: in_chg
  doc: Output CHG context methylation metrics
  type: boolean
  inputBinding:
    prefix: --CHG
- id: in_chh
  doc: Output CHH context methylation metrics
  type: boolean
  inputBinding:
    prefix: --CHH
- id: in_fraction
  doc: "Extract fractional methylation (only) at each position. This\nproduces a file\
    \ with a .meth.bedGraph extension."
  type: boolean
  inputBinding:
    prefix: --fraction
- id: in_counts
  doc: "Extract base counts (only) at each position. This produces a\nfile with a\
    \ .counts.bedGraph extension."
  type: boolean
  inputBinding:
    prefix: --counts
- id: in_log_it
  doc: "Extract logit(M/(M+U)) (only) at each position. This produces\na file with\
    \ a .logit.bedGraph extension."
  type: boolean
  inputBinding:
    prefix: --logit
- id: in_methyl_kit
  doc: "Output in the format required by methylKit. Note that this is\nincompatible\
    \ with --mergeContext, --fraction and --counts."
  type: boolean
  inputBinding:
    prefix: --methylKit
- id: in_ot
  doc: ",INT,INT,INT Inclusion bounds for methylation calls from reads/pairs\norigination\
    \ from the original top strand. Suggested values can\nbe obtained from the MBias\
    \ program. Each integer represents a\n1-based position on a read. For example\
    \ --OT A,B,C,D\ntranslates to, \"Include calls at positions from A through B\n\
    on read #1 and C through D on read #2\". If a 0 is used a any\nposition then that\
    \ is translated to mean start/end of the\nalignment, as appropriate. For example,\
    \ --OT 5,0,0,0 would\ninclude all but the first 4 bases on read #1. Users are\n\
    strongly advised to consult a methylation bias plot, for\nexample by using the\
    \ MBias program."
  type: long
  inputBinding:
    prefix: --OT
- id: in_ob
  doc: ',INT,INT,INT'
  type: long
  inputBinding:
    prefix: --OB
- id: in_c_tot
  doc: ',INT,INT,INT'
  type: long
  inputBinding:
    prefix: --CTOT
- id: in_cto_b
  doc: ",INT,INT,INT As with --OT, but for the original bottom, complementary\nto\
    \ the original top, and complementary to the original bottom\nstrands, respectively."
  type: long
  inputBinding:
    prefix: --CTOB
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
- id: out_op_ref
  doc: "Output filename prefix. CpG/CHG/CHH context metrics will be\noutput to STR_CpG.bedGraph\
    \ and so on."
  type: File
  outputBinding:
    glob: $(inputs.in_op_ref)
cwlVersion: v1.1
baseCommand:
- PileOMeth
- extract
