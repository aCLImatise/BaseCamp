class: CommandLineTool
id: yara_mapper.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: verbose
  doc: Displays global statistics.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Displays extensive statistics for each batch of reads.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: output_file
  doc: 'Specify an output file. Default: write the file to standard output. Valid
    filetypes are: .sam[.*] and .bam, where * is any of the following extensions:
    gz, bz2, and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --output-file
- id: output_format
  doc: 'Specify an output format. Note: when specifying the option --output-file,
    the output format is taken from the filename extension. One of bam, sam, sam.bgzf,
    sam.gz, and sam.bz2. Default: sam.'
  type: string
  inputBinding:
    prefix: --output-format
- id: read_group
  doc: 'Specify a read group for all records in the SAM/BAM file. Default: none.'
  type: string
  inputBinding:
    prefix: --read-group
- id: secondary_matches
  doc: 'Specify whether to output secondary matches in the XA tag of the primary alignment,
    as separate secondary records, or to omit them. One of tag, record, and omit.
    Default: tag.'
  type: string
  inputBinding:
    prefix: --secondary-matches
- id: align_secondary
  doc: Compute and output co- and suboptimal match alignments. Ignored if '-sa omit'
    is set.
  type: boolean
  inputBinding:
    prefix: --align-secondary
- id: rabe_ma_alignments
  doc: Output alignments compatible with the Read Alignment BEnchMArk (RABEMA).
  type: boolean
  inputBinding:
    prefix: --rabema-alignments
- id: error_rate
  doc: 'Consider alignments within this percentual number of errors. Increase this
    threshold to increase the number of mapped reads. Decrease this threshold to decrease
    the runtime. In range [0..10]. Default: 5.'
  type: long
  inputBinding:
    prefix: --error-rate
- id: strata_rate
  doc: 'Consider suboptimal alignments within this percentual number of errors from
    the optimal alignment. Increase this threshold to increase the number of alternative
    alignments at the expense of runtime. In range [0..10]. Default: 0.'
  type: long
  inputBinding:
    prefix: --strata-rate
- id: strata_count
  doc: 'Consider suboptimal alignments within this absolute number of errors from
    the optimal alignment. Increase this threshold to increase the number of alternative
    alignments at the expense of runtime. In range [0..127]. Default: 0.'
  type: long
  inputBinding:
    prefix: --strata-count
- id: sensitivity
  doc: 'Sensitivity with respect to edit distance. Full sensitivity guarantees to
    find all considered alignments but increases runtime, low sensitivity decreases
    runtime by breaking such guarantee. One of low, high, and full. Default: high.'
  type: string
  inputBinding:
    prefix: --sensitivity
- id: library_length
  doc: 'Expected library length. Default: autodetected. In range [1..inf].'
  type: long
  inputBinding:
    prefix: --library-length
- id: library_deviation
  doc: 'Deviation from the expected library length. Default: autodetected. In range
    [1..inf].'
  type: long
  inputBinding:
    prefix: --library-deviation
- id: in_del_rate
  doc: 'Rescue unaligned ends within this percentual number of indels. In range [0..50].
    Default: 25.'
  type: long
  inputBinding:
    prefix: --indel-rate
- id: no_indels
  doc: Turn off the rescue of unaligned ends containing indels.
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: threads
  doc: 'Specify the number of threads to use. In range [1..2048]. Default: 8.'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- yara_mapper
