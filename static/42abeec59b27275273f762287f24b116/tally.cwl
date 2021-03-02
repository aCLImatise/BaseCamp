class: CommandLineTool
id: tally.cwl
inputs:
- id: in_input_stream_gzipped
  doc: input stream (gzipped file allowed) (default STDIN)
  type: File?
  inputBinding:
    prefix: -i
- id: in_gzipped_stream_default
  doc: (gzipped!) output stream (default out.tally.gz)
  type: string?
  inputBinding:
    prefix: -o
- id: in_fast_a_in
  doc: expect FASTA format (same as -record-format '>%I%#%R%n')
  type: boolean?
  inputBinding:
    prefix: --fasta-in
- id: in_fast_a_out
  doc: write FASTA format (same as -format '>trn_%I%s%C%n%R%n')
  type: boolean?
  inputBinding:
    prefix: --fasta-out
- id: in_with_quality
  doc: pass quality scores along, collate by taking per-base max
  type: boolean?
  inputBinding:
    prefix: --with-quality
- id: in_no_auto
  doc: do not peek in input file and set memory parameters automatically
  type: boolean?
  inputBinding:
    prefix: --no-auto
- id: in_peek
  doc: peek in input file and output estimated memory parameters
  type: boolean?
  inputBinding:
    prefix: --peek
- id: in_zip_factor
  doc: assume compression factor <num> (use 1.0 for uncompressed files
  type: long?
  inputBinding:
    prefix: -zip-factor
- id: in_l
  doc: require read length >= <int>
  type: long?
  inputBinding:
    prefix: -l
- id: in_u
  doc: require read length <= <int>
  type: long?
  inputBinding:
    prefix: -u
- id: in_tri
  doc: required tri-nucleotide score <= <int>
  type: long?
  inputBinding:
    prefix: -tri
- id: in_si
  doc: strip <int> bases from start of read before uniquifying
  type: long?
  inputBinding:
    prefix: -si
- id: in_dsi
  doc: as -si but after uniquifying (degenerate sequence insert)
  type: long?
  inputBinding:
    prefix: -dsi
- id: in_sum_stat
  doc: <fname> output file with counts of discarded categories
  type: File?
  inputBinding:
    prefix: -sumstat
- id: in_second_paired_end
  doc: "second paired end input stream\n-> (requires -record-format with %J or --fastqx-in\
    \ or --fastax-in)"
  type: string?
  inputBinding:
    prefix: -j
- id: in_gzipped_second_stream
  doc: (gzipped!) second output stream for second paired end (cf -j)
  type: string?
  inputBinding:
    prefix: -p
- id: in_fast_a_x_in
  doc: expect reaper --fastax-out format (same as -record-format '>%I%brecno=%J%#%R%n')
  type: boolean?
  inputBinding:
    prefix: --fastax-in
- id: in_fast_qx_in
  doc: "expect reaper --fastqx-out format (same as -record-format '@%I%brecno=%J%#%R%n+%#%Q%n')\n\
    -> these two options are for re-pairing individually processed paired-end files"
  type: boolean?
  inputBinding:
    prefix: --fastqx-in
- id: in_hsd
  doc: '[1,-1,2,-2]  increase or decrease hash size relative to default'
  type: boolean?
  inputBinding:
    prefix: -hsd
- id: in_dsd
  doc: '[1,-1,2,-2]  increase or decrease data size relative to default'
  type: boolean?
  inputBinding:
    prefix: -dsd
- id: in_hs
  doc: k in 14..32 specifies hash size 2 ** k
  type: long?
  inputBinding:
    prefix: -hs
- id: in_ds
  doc: k in 14..31 specifies storage size 2 ** k
  type: long?
  inputBinding:
    prefix: -ds
- id: in_unsorted
  doc: do not sort output sequences
  type: boolean?
  inputBinding:
    prefix: --unsorted
- id: in_cx
  doc: "do not compress sequence (unit testing)\nNOTE with --cx output will not be\
    \ sorted in the same way\nbecause hash values change. To compare, sort outputs"
  type: boolean?
  inputBinding:
    prefix: --cx
- id: in_no_put
  doc: do not output uniquified sequences
  type: boolean?
  inputBinding:
    prefix: --noput
- id: in_turn_paired_end
  doc: "turn on verbosity settings\ncmp         with cmp paired end identifier mismatches\
    \ will be reported"
  type: string?
  inputBinding:
    prefix: -v
- id: in_record_format
  doc: "specify input format\nThe same syntax as documented under reaper --record-format,\n\
    Additionally %J is accepted and assumes a numerical ID that\nwill be strictly\
    \ increasing.\nIf -j is used this ID is required and will be used to match reads.\n\
    This can be used in conjunction with the reaper %J format directive."
  type: boolean?
  inputBinding:
    prefix: -record-format
- id: in_format
  doc: "output format specification, syntax below\n%R  read\n%L  length\n%C  number\
    \ of occurrences\n%T  trinucleotide score\n%I  read identifier - numerical identifier\
    \ constructed on output\nCAVEAT read identifier could differ between runs depending\
    \ on options\nCAVEAT read identifier is not tied to the read sequence\n%t  tab\n\
    %s  tab\n%n  newline\n%%  percentage character"
  type: long?
  inputBinding:
    prefix: -format
- id: in_no_tally
  doc: "reads are output as they are processed (use --with-quality to retain quality)\n\
    This can be useful for matching up paired-end files with missing reads.\nIt works\
    \ only if record offset information was preserved and is read back in using %J\n\
    The supported output directives (besides %n %s %t and %%) are these:\n%R  read\n\
    %Q  quality\n%I  identifier\n%J  output offset\nFilter options such as -tri and\
    \ -si are NOT active"
  type: boolean?
  inputBinding:
    prefix: --no-tally
- id: in_pair_by_offset
  doc: "assume the -i and -j input files match record-by-record\nWith this option\
    \ the %J directive is not needed\n"
  type: boolean?
  inputBinding:
    prefix: --pair-by-offset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sum_stat
  doc: <fname> output file with counts of discarded categories
  type: File?
  outputBinding:
    glob: $(inputs.in_sum_stat)
hints: []
cwlVersion: v1.1
baseCommand:
- tally
