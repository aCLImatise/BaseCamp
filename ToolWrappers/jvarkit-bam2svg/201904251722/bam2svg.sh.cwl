class: CommandLineTool
id: bam2svg.sh.cwl
inputs:
- id: in_filter
  doc: "A filter expression. Reads matching the expression will be filtered-out.\n\
    Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\n\
    for a complete syntax.\nDefault: Accept All/ Filter out nothing"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_group_by
  doc: "Group Reads by. Data partitioning using the SAM Read Group (see\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/\
    \ ) . It can\nbe any combination of sample, library....\nDefault: sample\nPossible\
    \ Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,\
    \ sample_by_platform_by_center, any]"
  type: boolean?
  inputBinding:
    prefix: --groupby
- id: in_help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean?
  inputBinding:
    prefix: --helpFormat
- id: in_output
  doc: 'Output file. Optional . Default: stdout'
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Indexed fasta Reference file. This file must be indexed with samtools\nfaidx\
    \ and with picard CreateSequenceDictionary"
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_show_clipping
  doc: "Show clipping\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: --showclipping
- id: in_vcf
  doc: "add VCF indexed with tabix. Optinal. the Samples's name must be the same\n\
    than in the BAM\nDefault: []"
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_width
  doc: "Page width\nDefault: 1000\n"
  type: boolean?
  inputBinding:
    prefix: --width
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Optional . Default: stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bam2svg.sh
