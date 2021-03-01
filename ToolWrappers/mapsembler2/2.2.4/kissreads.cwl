class: CommandLineTool
id: kissreads.cwl
inputs:
- id: in_use_seeds_length
  doc: ': will use seeds of length size_seed. Default: 25.'
  type: long?
  inputBinding:
    prefix: -k
- id: in_read_mapped_is
  doc: ': a read can be mapped if its overlap is a least "minimal_read_overlap". Default:
    k'
  type: string?
  inputBinding:
    prefix: -O
- id: in_sequence_covered_at
  doc: ': a sequence is covered by at least min_coverage coherent reads. Default:
    2'
  type: long?
  inputBinding:
    prefix: -c
- id: in_maximal_number_allowed
  doc: ': Maximal number of substitutions authorized between a read and a fragment.
    Note that no substitution is allowed on the central position while anaylizing
    the kissnp output. Default: 1.'
  type: long?
  inputBinding:
    prefix: -d
- id: in_write_readcoherent_outputs
  doc: ': write read-coherent outputs. Default: standard output'
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_unreadcoherent_outputs
  doc: ': write unread-coherent outputs. Default: standard output'
  type: File?
  inputBinding:
    prefix: -u
- id: in_input_file_tocheckfasta_kissnp
  doc: "input file (toCheck.fasta) is a kissnp output (incompatible with -I option)\n\
    in this case: 1/ only the upper characters are considered (no mapping done on\
    \ the extensions) and 2/ the central position (where the SNP occurs) is strictly\
    \ mapped, no subsitution is authorized on this position."
  type: File?
  inputBinding:
    prefix: -n
- id: in_input_file_tocheckfasta_intl
  doc: input file (toCheck.fasta) is an Intl output (incompatible with -n option)
  type: File?
  inputBinding:
    prefix: -I
- id: in_int_value_heuristic
  doc: (int value). This is a heuristic for limiting the memory footprint. Instead
    of indexing each kmer of the sequences contained into the toCheck.fasta, kissreads
    indexes kmers occurring each "index_stride" position. Default = 1 (no heuristic)
  type: long?
  inputBinding:
    prefix: -i
- id: in_number_threads_also
  doc: number of threads (also limited by number of input files)
  type: long?
  inputBinding:
    prefix: -t
- id: in_write_file_alignfile
  doc: ', write a file of reads mapped to sequences in file align_file'
  type: File?
  inputBinding:
    prefix: -m
- id: in_mode
  doc: mode
  type: string?
  inputBinding:
    prefix: -s
- id: in_coherent_events_standard
  doc: coherent events in a standard fasta file format
  type: File?
  inputBinding:
    prefix: -f
- id: in_this_message_exit
  doc: this message and exit
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kissreads
