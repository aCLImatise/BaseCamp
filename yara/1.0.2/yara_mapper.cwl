#!/usr/bin/env cwl-runner

baseCommand:
- yara_mapper
class: CommandLineTool
cwlVersion: v1.0
id: yara_mapper
inputs:
- doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  id: version_check
  inputBinding:
    prefix: --version-check
  type: boolean
- doc: Displays global statistics.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Displays extensive statistics for each batch of reads.
  id: very_verbose
  inputBinding:
    prefix: --very-verbose
  type: boolean
- doc: 'Specify an output file. Default: write the file to standard output. Valid
    filetypes are: .sam[.*] and .bam, where * is any of the following extensions:
    gz, bz2, and bgzf for transparent (de)compression.'
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: 'Specify an output format. Note: when specifying the option --output-file,
    the output format is taken from the filename extension. One of bam, sam, sam.bgzf,
    sam.gz, and sam.bz2. Default: sam.'
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: 'Specify a read group for all records in the SAM/BAM file. Default: none.'
  id: read_group
  inputBinding:
    prefix: --read-group
  type: string
- doc: 'Specify whether to output secondary matches in the XA tag of the primary alignment,
    as separate secondary records, or to omit them. One of tag, record, and omit.
    Default: tag.'
  id: secondary_matches
  inputBinding:
    prefix: --secondary-matches
  type: string
- doc: Compute and output co- and suboptimal match alignments. Ignored if '-sa omit'
    is set.
  id: align_secondary
  inputBinding:
    prefix: --align-secondary
  type: boolean
- doc: Output alignments compatible with the Read Alignment BEnchMArk (RABEMA).
  id: rabe_ma_alignments
  inputBinding:
    prefix: --rabema-alignments
  type: boolean
- doc: 'Consider alignments within this percentual number of errors. Increase this
    threshold to increase the number of mapped reads. Decrease this threshold to decrease
    the runtime. In range [0..10]. Default: 5.'
  id: error_rate
  inputBinding:
    prefix: --error-rate
  type: long
- doc: 'Consider suboptimal alignments within this percentual number of errors from
    the optimal alignment. Increase this threshold to increase the number of alternative
    alignments at the expense of runtime. In range [0..10]. Default: 0.'
  id: strata_rate
  inputBinding:
    prefix: --strata-rate
  type: long
- doc: 'Consider suboptimal alignments within this absolute number of errors from
    the optimal alignment. Increase this threshold to increase the number of alternative
    alignments at the expense of runtime. In range [0..127]. Default: 0.'
  id: strata_count
  inputBinding:
    prefix: --strata-count
  type: long
- doc: 'Sensitivity with respect to edit distance. Full sensitivity guarantees to
    find all considered alignments but increases runtime, low sensitivity decreases
    runtime by breaking such guarantee. One of low, high, and full. Default: high.'
  id: sensitivity
  inputBinding:
    prefix: --sensitivity
  type: string
- doc: 'Expected library length. Default: autodetected. In range [1..inf].'
  id: library_length
  inputBinding:
    prefix: --library-length
  type: long
- doc: 'Deviation from the expected library length. Default: autodetected. In range
    [1..inf].'
  id: library_deviation
  inputBinding:
    prefix: --library-deviation
  type: long
- doc: 'Rescue unaligned ends within this percentual number of indels. In range [0..50].
    Default: 25.'
  id: in_del_rate
  inputBinding:
    prefix: --indel-rate
  type: long
- doc: Turn off the rescue of unaligned ends containing indels.
  id: no_indels
  inputBinding:
    prefix: --no-indels
  type: boolean
- doc: 'Specify the number of threads to use. In range [1..2048]. Default: 8.'
  id: threads
  inputBinding:
    prefix: --threads
  type: long
