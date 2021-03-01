class: CommandLineTool
id: extract_sv_reads.cwl
inputs:
- id: in_only_useful_is
  doc: only useful when the input file is a CRAM.
  type: File?
  inputBinding:
    prefix: -T
- id: in__output_version
  doc: '[ --version ]               output the version'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_input_bamcramsam
  doc: "[ --input ] arg (=-)        input BAM/CRAM/SAM. Use '-' for stdin if using\n\
    positional arguments"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_split
  doc: "[ --splitter ] arg          output split reads to this file in BAM format\n\
    (Required)"
  type: File?
  inputBinding:
    prefix: -s
- id: in_arg_output_discordant
  doc: "[ --discordant ] arg        output discordant reads to this file in BAM\n\
    format (Required)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_exclude_duplicate_reads
  doc: '[ --exclude-dups ]          exclude duplicate reads from output'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_remove_sequences_qualities
  doc: '[ --reduce-output-bams ]    remove sequences and qualities from output'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_max_unmapped_bases
  doc: "(=50) maximum number of unaligned bases between two\nalignments to be included\
    \ in the splitter file"
  type: long?
  inputBinding:
    prefix: --max-unmapped-bases
- id: in_min_in_del_size
  doc: "(=50)     minimum structural variant feature size for\nsplit alignments to\
    \ be included in the\nsplitter file"
  type: long?
  inputBinding:
    prefix: --min-indel-size
- id: in_min_non_overlap
  doc: "(=20)    minimum number of non-overlapping base pairs\nbetween two alignments\
    \ for a read to be\nincluded in the splitter file"
  type: long?
  inputBinding:
    prefix: --min-non-overlap
- id: in_threads
  doc: (=1)             number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_bams
  doc: '-n [ --with-nm ]               ensure NM tag is present in output if reading '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_split
  doc: "[ --splitter ] arg          output split reads to this file in BAM format\n\
    (Required)"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_split)
- id: out_arg_output_discordant
  doc: "[ --discordant ] arg        output discordant reads to this file in BAM\n\
    format (Required)"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_discordant)
hints: []
cwlVersion: v1.1
baseCommand:
- extract-sv-reads
