class: CommandLineTool
id: MethylDackel_mbias.cwl
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
- id: in_maximum_perbase_depth
  doc: Maximum per-base depth (default 2000)
  type: long?
  inputBinding:
    prefix: -D
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
- id: in_keep_dupes
  doc: "By default, any alignment marked as a duplicate is ignored.\nThis option causes\
    \ them to be incorporated."
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
  doc: "By deault, any alignment marked as secondary (bit 0x100),\nfailing QC (bit\
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
- id: in_txt
  doc: "Output tab separated metrics to the screen. These can be\nimported into R\
    \ or another program for manual plotting and\nanalysis. Note that coordinates\
    \ are 1-based."
  type: boolean?
  inputBinding:
    prefix: --txt
- id: in_no_svg
  doc: "Don't produce the SVG files. This option implies --txt. Note\nthat an output\
    \ prefix is no longer required with this option."
  type: boolean?
  inputBinding:
    prefix: --noSVG
- id: in_no_cpg
  doc: Do not output CpG methylation metrics
  type: boolean?
  inputBinding:
    prefix: --noCpG
- id: in_chg
  doc: Output CHG methylation metrics
  type: boolean?
  inputBinding:
    prefix: --CHG
- id: in_chh
  doc: Output CHH methylation metrics
  type: boolean?
  inputBinding:
    prefix: --CHH
- id: in_not
  doc: ",INT,INT,INT Inclusion bound for methylation calls from reads/pairs\noriginating\
    \ from the original top strand. Each integer\nrepresents a 1-based position from\
    \ the end of a read. For\nexample \"--nOT A,B,C,D\" translates to, \"Include calls\
    \ from\nposition A through the Bth read from the end on read #1 and\nCth through\
    \ the Dth from the end base on read #2\". In other\nwords \"--nOT 5,10,0,0\" for\
    \ a 100 base long read would result\nin bases 5 through 90 being used. If a 0\
    \ is used in any\nposition then that is translated to mean start/end of the\n\
    alignment, as appropriate. For example, --nOT 5,0,0,0 would\ninclude all but the\
    \ first 4 bases on read #1."
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
  doc: ",INT,INT,INT As with --nOT, but for the original bottom, complementary\nto\
    \ the original top, and complementary to the original bottom\nstrands, respectively."
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
- id: in_output_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
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
hints: []
cwlVersion: v1.1
baseCommand:
- MethylDackel
- mbias
