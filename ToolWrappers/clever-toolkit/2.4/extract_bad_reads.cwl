class: CommandLineTool
id: extract_bad_reads.cwl
inputs:
- id: in_extract_reads_instead
  doc: '[ --all ]                        Extract all reads instead of only "bad"'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_maximal_internal
  doc: "[ --max_span ] arg (=50000)      Maximal internal segment. Read pairs with\n\
    larger internal segment will be ignored."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=0)           Number of threads (default: 0 = strictly\n\
    single-threaded)."
  type: boolean
  inputBinding:
    prefix: -T
- id: in_arg_minimum_internal
  doc: "[ --min_insert_size ] arg (=-1)  Minimum internal segment size (excluding\n\
    reads) for a pair to be considered good\n(and thus not be extracted)."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_maximum_internal
  doc: "[ --max_insert_size ] arg (=-1)  Maximum internal segment size (excluding\n\
    reads) for a pair to be considered good\n(and thus not be extracted)."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_arg_minimum_mapping
  doc: "[ --min_mapq ] arg (=30)         Minimum mapping quality for good reads\n\
    (which are not to be extracted)."
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_arg_maximum_allowed
  doc: "[ --max_edit_distance ] arg (=3) Maximum allowed edit distance, reads with\n\
    larger distance will be extracted."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_filename_write
  doc: "[ --split_file ] arg             Filename to write (gzipped) split reads\n\
    to (FASTQ format)."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_arg_length_prefixsuffix
  doc: "[ --split_length ] arg (=35)     Length of prefix/suffix to be extracted\n\
    (if option -S is used)."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_encode_read_groups
  doc: "[ --read_groups ]                Encode read groups in read_names (as\n\"\
    <readgroup>_<name>\")."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_distribute_output
  doc: "[ --distribute_output ] arg (=0) Distribute output over multiple files\naccording\
    \ to [off|readgroup|sample]."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_also_use_clipped
  doc: "[ --use_hard_clipped ]           Also use hard clipped reads (default:\nignore\
    \ hard clipped reads).\n"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_ones_dot
  doc: '-u [ --unsorted ]                   Input is not sorted by position but '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract-bad-reads
