class: CommandLineTool
id: yara_mapper.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_verbose
  doc: Displays global statistics.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Displays extensive statistics for each batch of reads.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: in_output_file
  doc: "Specify an output file. Default: write the file to standard output.\nValid\
    \ filetypes are: .sam[.*] and .bam, where * is any of the\nfollowing extensions:\
    \ gz, bz2, and bgzf for transparent\n(de)compression."
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_format
  doc: "Specify an output format. Note: when specifying the option\n--output-file,\
    \ the output format is taken from the filename\nextension. One of bam, sam, sam.bgzf,\
    \ sam.gz, and sam.bz2. Default:\nsam."
  type: File
  inputBinding:
    prefix: --output-format
- id: in_read_group
  doc: "Specify a read group for all records in the SAM/BAM file. Default:\nnone."
  type: File
  inputBinding:
    prefix: --read-group
- id: in_secondary_matches
  doc: "Specify whether to output secondary matches in the XA tag of the\nprimary\
    \ alignment, as separate secondary records, or to omit them.\nOne of tag, record,\
    \ and omit. Default: tag."
  type: string
  inputBinding:
    prefix: --secondary-matches
- id: in_align_secondary
  doc: "Compute and output co- and suboptimal match alignments. Ignored if\n'-sa omit'\
    \ is set."
  type: boolean
  inputBinding:
    prefix: --align-secondary
- id: in_rabe_ma_alignments
  doc: "Output alignments compatible with the Read Alignment BEnchMArk\n(RABEMA)."
  type: boolean
  inputBinding:
    prefix: --rabema-alignments
- id: in_error_rate
  doc: "Consider alignments within this percentual number of errors.\nIncrease this\
    \ threshold to increase the number of mapped reads.\nDecrease this threshold to\
    \ decrease the runtime. In range [0..10].\nDefault: 5."
  type: long
  inputBinding:
    prefix: --error-rate
- id: in_strata_rate
  doc: "Consider suboptimal alignments within this percentual number of\nerrors from\
    \ the optimal alignment. Increase this threshold to\nincrease the number of alternative\
    \ alignments at the expense of\nruntime. In range [0..10]. Default: 0."
  type: long
  inputBinding:
    prefix: --strata-rate
- id: in_strata_count
  doc: "Consider suboptimal alignments within this absolute number of errors\nfrom\
    \ the optimal alignment. Increase this threshold to increase the\nnumber of alternative\
    \ alignments at the expense of runtime. In range\n[0..127]. Default: 0."
  type: long
  inputBinding:
    prefix: --strata-count
- id: in_sensitivity
  doc: "Sensitivity with respect to edit distance. Full sensitivity\nguarantees to\
    \ find all considered alignments but increases runtime,\nlow sensitivity decreases\
    \ runtime by breaking such guarantee. One of\nlow, high, and full. Default: high."
  type: string
  inputBinding:
    prefix: --sensitivity
- id: in_library_length
  doc: 'Expected library length. Default: autodetected. In range [1..inf].'
  type: long
  inputBinding:
    prefix: --library-length
- id: in_library_deviation
  doc: "Deviation from the expected library length. Default: autodetected.\nIn range\
    \ [1..inf]."
  type: long
  inputBinding:
    prefix: --library-deviation
- id: in_in_del_rate
  doc: "Rescue unaligned ends within this percentual number of indels. In\nrange [0..50].\
    \ Default: 25."
  type: long
  inputBinding:
    prefix: --indel-rate
- id: in_no_indels
  doc: Turn off the rescue of unaligned ends containing indels.
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: in_threads
  doc: "Specify the number of threads to use. In range [1..2048]. Default:\n8."
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Specify an output file. Default: write the file to standard output.\nValid\
    \ filetypes are: .sam[.*] and .bam, where * is any of the\nfollowing extensions:\
    \ gz, bz2, and bgzf for transparent\n(de)compression."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_format
  doc: "Specify an output format. Note: when specifying the option\n--output-file,\
    \ the output format is taken from the filename\nextension. One of bam, sam, sam.bgzf,\
    \ sam.gz, and sam.bz2. Default:\nsam."
  type: File
  outputBinding:
    glob: $(inputs.in_output_format)
cwlVersion: v1.1
baseCommand:
- yara_mapper
