class: CommandLineTool
id: ../../../overlapInCore.cwl
inputs:
- id: in_contig_mode_specify
  doc: in contig mode, specify the output file
  type: File
  inputBinding:
    prefix: -b
- id: in_contig_mode_use
  doc: "contig mode.  Use 2 frag stores.  First is\nfor reads; second is for contigs"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_partial
  doc: do partial overlaps
  type: boolean
  inputBinding:
    prefix: -partial
- id: in_specify_fragments_put
  doc: "to specify fragments to put in hash table\nImplies LSF mode (no changes to\
    \ frag store)"
  type: string
  inputBinding:
    prefix: -h
- id: in_designate_file_limit
  doc: "designate a file of frag iids to limit olaps to\n(Contig mode only)"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_one_two_digits
  doc: "if one or two digits, the length of a kmer, otherwise\nthe filename containing\
    \ a list of kmers to ignore in\nthe hash table"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_specify_maximum_number
  doc: "specify the maximum number of overlaps per\nfragment-end per batch of fragments."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_allow_multiple_overlaps
  doc: allow multiple overlaps per oriented fragment pair
  type: boolean
  inputBinding:
    prefix: -m
- id: in_specify_memory_size
  doc: "specify memory size.  Valid values are '8GB', '4GB',\n'2GB', '1GB', '256MB'.\
    \  (Not for Contig mode)"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_specify_output_file
  doc: specify output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_write_protoio_output
  doc: write protoIO output (if not -partial)
  type: boolean
  inputBinding:
    prefix: -P
- id: in_specify_old_fragments
  doc: specify old fragments to overlap
  type: string
  inputBinding:
    prefix: -r
- id: in_use_parallel_threads
  doc: use <n> parallel threads
  type: string
  inputBinding:
    prefix: -t
- id: in_allow_only_overlap
  doc: allow only 1 overlap per oriented fragment pair
  type: boolean
  inputBinding:
    prefix: -u
- id: in_skip_check_skipped
  doc: skip the hopeless check (also skipped at > 0.06)
  type: boolean
  inputBinding:
    prefix: -z
- id: in_max_erate
  doc: only output overlaps with fraction <n> or less error (e.g., 0.06 == 6%)
  type: double
  inputBinding:
    prefix: --maxerate
- id: in_minlength
  doc: only output overlaps of <n> or more bases
  type: string
  inputBinding:
    prefix: --minlength
- id: in_hash_bits
  doc: Use n bits for the hash mask.
  type: string
  inputBinding:
    prefix: --hashbits
- id: in_hash_datalen
  doc: Load at most n bytes into the hash table at one time.
  type: string
  inputBinding:
    prefix: --hashdatalen
- id: in_hash_load
  doc: Load to at most 0.0 < f < 1.0 capacity (default 0.7).
  type: double
  inputBinding:
    prefix: --hashload
- id: in_reads_per_batch
  doc: Force batch size to n.
  type: long
  inputBinding:
    prefix: --readsperbatch
- id: in_reads_per_thread
  doc: Force each thread to process n reads.
  type: string
  inputBinding:
    prefix: --readsperthread
- id: in_seq_storepath
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
  type: File
  outputBinding:
    glob: $(inputs.in_contig_mode_specify)
- id: out_specify_output_file
  doc: specify output file name
  type: File
  outputBinding:
    glob: $(inputs.in_specify_output_file)
cwlVersion: v1.1
baseCommand:
- overlapInCore
