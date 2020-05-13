class: CommandLineTool
id: bam2svg.sh.cwl
inputs:
- id: filter
  doc: "A filter expression. Reads matching the expression will be filtered-out. \
    \ Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\
    \  for a complete syntax. Default: Accept All/ Filter out nothing"
  type: boolean
  inputBinding:
    prefix: --filter
- id: group_by
  doc: 'Group Reads by. Data partitioning using the SAM Read Group (see  https://gatkforums.broadinstitute.org/gatk/discussion/6472/
    ) . It can  be any combination of sample, library.... Default: sample Possible
    Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center,
    sample_by_platform_by_center, any]'
  type: boolean
  inputBinding:
    prefix: --groupby
- id: help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean
  inputBinding:
    prefix: --helpFormat
- id: output
  doc: 'Output file. Optional . Default: stdout'
  type: boolean
  inputBinding:
    prefix: --output
- id: reference
  doc: Indexed fasta Reference file. This file must be indexed with samtools  faidx
    and with picard CreateSequenceDictionary
  type: boolean
  inputBinding:
    prefix: --reference
- id: show_clipping
  doc: 'Show clipping Default: false'
  type: boolean
  inputBinding:
    prefix: --showclipping
- id: vcf
  doc: "add VCF indexed with tabix. Optinal. the Samples's name must be the same \
    \ than in the BAM Default: []"
  type: boolean
  inputBinding:
    prefix: --vcf
- id: width
  doc: 'Page width Default: 1000'
  type: boolean
  inputBinding:
    prefix: --width
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2svg.sh
