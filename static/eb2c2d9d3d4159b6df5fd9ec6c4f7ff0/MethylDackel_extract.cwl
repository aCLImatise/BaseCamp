class: CommandLineTool
id: MethylDackel_extract.cwl
inputs:
- id: in_minimum_mapq_threshold
  doc: Minimum MAPQ threshold to include an alignment (default 10)
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_phred_threshold
  doc: "Minimum Phred threshold to include a base (default 5). This\nmust be >0."
  type: long?
  inputBinding:
    prefix: -p
- id: in_ignored_kept_only
  doc: Ignored, kept only for backward compatibility.
  type: long?
  inputBinding:
    prefix: -D
- id: in_minimum_perbase_depth
  doc: Minimum per-base depth for reporting output. If you use
  type: long?
  inputBinding:
    prefix: -d
- id: in_merge_context
  doc: ', this then applies to the merged CpG/CHG.'
  type: boolean?
  inputBinding:
    prefix: --mergeContext
- id: in_region_string_extract
  doc: Region string in which to extract methylation
  type: string?
  inputBinding:
    prefix: -r
- id: in_bed_file_listing
  doc: A BED file listing regions for inclusion.
  type: File?
  inputBinding:
    prefix: -l
- id: in_keep_strand
  doc: "If a BED file is specified, then this option will cause the\nstrand column\
    \ (column 6) to be utilized, if present. Thus, if\na region has a '+' in this\
    \ column, then only metrics from the\ntop strand will be output. Note that the\
    \ -r option can be used\nto limit the regions of -l."
  type: File?
  inputBinding:
    prefix: --keepStrand
- id: in_mapp_ability
  doc: "A bigWig file containing mappability data for\nfiltering reads."
  type: File?
  inputBinding:
    prefix: --mappability
- id: in_mapp_ability_threshold
  doc: "If a bigWig file is provided, this sets the\nthreshold mappability value above\
    \ which a base is considered\nmappable (default 0.01)."
  type: double?
  inputBinding:
    prefix: --mappabilityThreshold
- id: in_min_mappable_bases
  doc: "If a bigWig file is provided, this sets the\nnumber of mappable bases needed\
    \ for a read to be considered\nmappable (default 15)."
  type: long?
  inputBinding:
    prefix: --minMappableBases
- id: in_output_bb_file
  doc: "If this is specified, a Binary Bismap (.bbm) file will\nbe written with the\
    \ same base name as the provided bigWig file,\nbut with the .bbm extension. Neither\
    \ this option nor -N have any\neffect if a bigWig is not specified with -M."
  type: boolean?
  inputBinding:
    prefix: --outputBBFile
- id: in_output_bb_filename
  doc: "If this is specified, a Binary Bismap (.bbm) file will\nbe written at the\
    \ provided filename. Neither this option nor -O\nhave any effect if a bigWig is\
    \ not specified with -M."
  type: File?
  inputBinding:
    prefix: --outputBBFileName
- id: in_mapp_ability_bb
  doc: "A .bbm file containing mappability data for\nfiltering reads."
  type: File?
  inputBinding:
    prefix: --mappabilityBB
- id: in_at
  doc: The number of threads to use, the default 1
  type: long?
  inputBinding:
    prefix: -@
- id: in_chunksize
  doc: "The size of the genome processed by a single thread at a time.\nThe default\
    \ is 1000000 bases. This value MUST be at least 1."
  type: long?
  inputBinding:
    prefix: --chunkSize
- id: in_op_ref
  doc: "Output filename prefix. CpG/CHG/CHH context metrics will be\noutput to STR_CpG.bedGraph\
    \ and so on."
  type: File?
  inputBinding:
    prefix: --opref
- id: in_keep_dupes
  doc: "By default, any alignment marked as a duplicate is ignored.\nThis option causes\
    \ them to be incorporated. This will unset\nbit 0x400 in --ignoreFlags."
  type: boolean?
  inputBinding:
    prefix: --keepDupes
- id: in_keep_singleton
  doc: "By default, if only one read in a pair aligns (a singleton)\nthen it's ignored."
  type: boolean?
  inputBinding:
    prefix: --keepSingleton
- id: in_keep_discordant
  doc: "default, paired-end alignments with the properly-paired bit\nunset in the\
    \ FLAG field are ignored. Note that the definition\nof concordant and discordant\
    \ is based on your aligner\nsettings."
  type: string?
  inputBinding:
    prefix: --keepDiscordant
- id: in_ignore_flags
  doc: "By default, any alignment marked as secondary (bit 0x100),\nfailing QC (bit\
    \ 0x200), a PCR/optical duplicate (0x400) or\nsupplemental (0x800) is ignored.\
    \ This equates to a value of\n0xF00 or 3840 in decimal. If you would like to change\
    \ that,\nyou can specify a new value here.\nignored. Specifying this causes them\
    \ to be included."
  type: boolean?
  inputBinding:
    prefix: --ignoreFlags
- id: in_require_flags
  doc: "Require each alignment to have all bits in this value\npresent, or else the\
    \ alignment is ignored. This is equivalent\nto the -f option in samtools. The\
    \ default is 0, which\nincludes all alignments."
  type: boolean?
  inputBinding:
    prefix: --requireFlags
- id: in_no_cpg
  doc: Do not output CpG context methylation metrics
  type: boolean?
  inputBinding:
    prefix: --noCpG
- id: in_chg
  doc: Output CHG context methylation metrics
  type: boolean?
  inputBinding:
    prefix: --CHG
- id: in_chh
  doc: Output CHH context methylation metrics
  type: boolean?
  inputBinding:
    prefix: --CHH
- id: in_fraction
  doc: "Extract fractional methylation (only) at each position. This\nproduces a file\
    \ with a .meth.bedGraph extension."
  type: boolean?
  inputBinding:
    prefix: --fraction
- id: in_counts
  doc: "Extract base counts (only) at each position. This produces a\nfile with a\
    \ .counts.bedGraph extension."
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_log_it
  doc: "Extract logit(M/(M+U)) (only) at each position. This produces\na file with\
    \ a .logit.bedGraph extension."
  type: boolean?
  inputBinding:
    prefix: --logit
- id: in_min_opposite_depth
  doc: "If you would like to exclude sites that likely contain\nSNPs, then specifying\
    \ a value greater than 0 here will\nindicate the minimum depth required on the\
    \ strand opposite of\na C to look for A/T/C bases. The fraction of these necessary\n\
    to exclude a position from methylation extraction is specified\nby the --maxVariantFrac\
    \ parameter. The default is 0, which\nmeans that no positions will be excluded.\
    \ Note that the -p and\n-q apply here as well. Note further that if you use\n\
    --mergeContext that a merged site will be excluded if either\nof its individual\
    \ Cs would be excluded."
  type: boolean?
  inputBinding:
    prefix: --minOppositeDepth
- id: in_max_variant_frac
  doc: "maximum fraction of A/T/C base calls on the strand\nopposite of a C to allow\
    \ before a position is declared a\nvariant (thereby being excluded from output).\
    \ The default is\n0.0. See also --minOppositeDepth."
  type: double?
  inputBinding:
    prefix: --maxVariantFrac
- id: in_methyl_kit
  doc: "Output in the format required by methylKit. Note that this is\nincompatible\
    \ with --mergeContext, --fraction and --counts."
  type: boolean?
  inputBinding:
    prefix: --methylKit
- id: in_cytosine_report
  doc: "A per-base exhaustive report comparable to that produced\nwith the same option\
    \ in Bismark's methylation extractor. The\noutput is a tab-separated file with\
    \ the following columns:\nchromosome, position (1-based), strand, number of alignments\n\
    supporting methylation, number of alignments supporting\nunmethylation, CG/CHG/CHH,\
    \ trinucleotide context. This is not\ncompatible with --fraction, --counts, --methylKit,\
    \ or\n--mergeContext. The produces a single file with a\n.cytosine_report.txt\
    \ extension. Note that even bases with no\ncoverage will be included in the output."
  type: boolean?
  inputBinding:
    prefix: --cytosine_report
- id: in_ot
  doc: ",INT,INT,INT Inclusion bounds for methylation calls from reads/pairs\noriginating\
    \ from the original top strand. Suggested values can\nbe obtained from the MBias\
    \ program. Each integer represents a\n1-based position on a read. For example\
    \ --OT A,B,C,D\ntranslates to, \"Include calls at positions from A through B\n\
    on read #1 and C through D on read #2\". If a 0 is used a any\nposition then that\
    \ is translated to mean start/end of the\nalignment, as appropriate. For example,\
    \ --OT 5,0,0,0 would\ninclude all but the first 4 bases on read #1. Users are\n\
    strongly advised to consult a methylation bias plot, for\nexample by using the\
    \ MBias program."
  type: long?
  inputBinding:
    prefix: --OT
- id: in_ob
  doc: ',INT,INT,INT'
  type: long?
  inputBinding:
    prefix: --OB
- id: in_c_tot
  doc: ',INT,INT,INT'
  type: long?
  inputBinding:
    prefix: --CTOT
- id: in_cto_b
  doc: ",INT,INT,INT As with --OT, but for the original bottom, complementary\nto\
    \ the original top, and complementary to the original bottom\nstrands, respectively."
  type: long?
  inputBinding:
    prefix: --CTOB
- id: in_not
  doc: ",INT,INT,INT Like --OT, but always exclude INT bases from a given end\nfrom\
    \ inclusion,regardless of the length of an alignment. This\nis useful in cases\
    \ where reads may have already been trimmed\nto different lengths, but still none-the-less\
    \ contain a\ncertain length bias at one or more ends."
  type: long?
  inputBinding:
    prefix: --nOT
- id: in_nob
  doc: ',INT,INT,INT'
  type: long?
  inputBinding:
    prefix: --nOB
- id: in_nc_tot
  doc: ',INT,INT,INT'
  type: long?
  inputBinding:
    prefix: --nCTOT
- id: in_nc_tob
  doc: ",INT,INT,INT As with --nOT, but for the original bottom,\ncomplementary to\
    \ the original top, and complementary to the\noriginal bottom strands, respectively."
  type: long?
  inputBinding:
    prefix: --nCTOB
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
- id: out_keep_strand
  doc: "If a BED file is specified, then this option will cause the\nstrand column\
    \ (column 6) to be utilized, if present. Thus, if\na region has a '+' in this\
    \ column, then only metrics from the\ntop strand will be output. Note that the\
    \ -r option can be used\nto limit the regions of -l."
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_strand)
- id: out_op_ref
  doc: "Output filename prefix. CpG/CHG/CHH context metrics will be\noutput to STR_CpG.bedGraph\
    \ and so on."
  type: File?
  outputBinding:
    glob: $(inputs.in_op_ref)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/methyldackel:0.5.2--h7435645_0
cwlVersion: v1.1
baseCommand:
- MethylDackel
- extract
