class: CommandLineTool
id: overlapInCore.cwl
inputs:
- id: in_contig_mode_specify
  doc: in contig mode, specify the output file
  type: File?
  inputBinding:
    prefix: -b
- id: in_contig_mode_stores
  doc: "contig mode.  Use 2 frag stores.  First is\nfor reads; second is for contigs"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_do_partial_overlaps
  doc: do partial overlaps
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_specify_fragments_put
  doc: "to specify fragments to put in hash table\nImplies LSF mode (no changes to\
    \ frag store)"
  type: string?
  inputBinding:
    prefix: -h
- id: in_designate_file_limit
  doc: "designate a file of frag iids to limit olaps to\n(Contig mode only)"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_one_two_digits
  doc: "if one or two digits, the length of a kmer, otherwise\nthe filename containing\
    \ a list of kmers to ignore in\nthe hash table"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_specify_maximum_number
  doc: "specify the maximum number of overlaps per\nfragment-end per batch of fragments."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_allow_multiple_overlaps
  doc: allow multiple overlaps per oriented fragment pair
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_specify_memory_size
  doc: "specify memory size.  Valid values are '8GB', '4GB',\n'2GB', '1GB', '256MB'.\
    \  (Not for Contig mode)"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_specify_output_name
  doc: specify output file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_protoio_output
  doc: write protoIO output (if not -G)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_specify_old_fragments
  doc: specify old fragments to overlap
  type: string?
  inputBinding:
    prefix: -r
- id: in_ignore_screen_information
  doc: ignore screen information with fragments
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_use_parallel_threads
  doc: use <n> parallel threads
  type: string?
  inputBinding:
    prefix: -t
- id: in_allow_only_overlap
  doc: allow only 1 overlap per oriented fragment pair
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_only_output_overlaps
  doc: only output overlaps of <n> or more bases
  type: string?
  inputBinding:
    prefix: -v
- id: in_filter_overlaps_too
  doc: filter out overlaps with too many errors in a window
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_ignore_clear_ranges
  doc: "ignore the clear ranges on reads and use the\nfull sequence"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_skip_hopeless_check
  doc: skip the hopeless check
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_hash_bits
  doc: Use n bits for the hash mask.
  type: string?
  inputBinding:
    prefix: --hashbits
- id: in_hash_strings
  doc: Load at most n strings into the hash table at one time.
  type: string?
  inputBinding:
    prefix: --hashstrings
- id: in_hash_datalen
  doc: Load at most n bytes into the hash table at one time.
  type: string?
  inputBinding:
    prefix: --hashdatalen
- id: in_hash_load
  doc: Load to at most 0.0 < f < 1.0 capacity (default 0.7).
  type: double?
  inputBinding:
    prefix: --hashload
- id: in_max_read_len
  doc: "For batches with all short reads, pack bits differently to\nprocess more reads\
    \ per batch.\nall reads must be shorter than n\n--hashstrings limited to 2^(30-m)\n\
    Common values:\nmaxreadlen 2048 -> hashstrings  524288 (default)\nmaxreadlen \
    \ 512 -> hashstrings 2097152\nmaxreadlen  128 -> hashstrings 8388608"
  type: long?
  inputBinding:
    prefix: --maxreadlen
- id: in_reads_per_batch
  doc: Force batch size to n.
  type: long?
  inputBinding:
    prefix: --readsperbatch
- id: in_reads_per_thread
  doc: Force each thread to process n reads.
  type: string?
  inputBinding:
    prefix: --readsperthread
- id: in_gkp_storepath
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_contig_mode_specify
  doc: in contig mode, specify the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_contig_mode_specify)
- id: out_specify_output_name
  doc: specify output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_name)
hints: []
cwlVersion: v1.1
baseCommand:
- overlapInCore
