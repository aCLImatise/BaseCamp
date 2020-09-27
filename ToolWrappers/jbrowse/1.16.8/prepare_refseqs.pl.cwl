class: CommandLineTool
id: prepare_refseqs.pl.cwl
inputs:
- id: in_no_sort
  doc: "If using GFF or FASTA input, preserve the order of the reference\nsequences\
    \ (sorts alphabetically by default)."
  type: boolean
  inputBinding:
    prefix: --noSort
- id: in_conf
  doc: "biodb-to-json.pl configuration file that defines a database from\nwhich to\
    \ get reference sequence information."
  type: File
  inputBinding:
    prefix: --conf
- id: in_out
  doc: Optional directory to write to. Defaults to data/.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_no_seq
  doc: "Do not store the actual sequence bases, just the sequence metadata\n(name,\
    \ length, and so forth)."
  type: boolean
  inputBinding:
    prefix: --noseq
- id: in_refs
  doc: Output only the sequences with the given names.
  type: string
  inputBinding:
    prefix: --refs
- id: in_compress
  doc: "If passed, compress the reference sequences with gzip, making the\nchunks\
    \ be .txt.gz. NOTE: this requires a bit of additional web\nserver configuration\
    \ to be served correctly."
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_chunksize
  doc: "Size of sequence chunks to make, in base pairs. Default 20kb. This\nis multiplied\
    \ by 4 if --compress is passed, so that the compressed\nsequence files are still\
    \ approximately this size."
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_no_hash
  doc: "Store sequences in a flat seq/$seqname/$chunk.txt structure, instead\nof the\
    \ new (more scalable) /seq/hash/hash/hash/$seqname-$chunk.txt\nstructure."
  type: boolean
  inputBinding:
    prefix: --nohash
- id: in_track_label
  doc: The unique name of the sequence track, default 'DNA'.
  type: string
  inputBinding:
    prefix: --trackLabel
- id: in_key
  doc: "The displayed name of the sequence track, defaults to 'Reference\nsequence'."
  type: string
  inputBinding:
    prefix: --key
- id: in_seqtype
  doc: "The Name of the alphabet used for these reference sequences, usually\neither\
    \ 'dna', 'rna', or 'protein'."
  type: string
  inputBinding:
    prefix: --seqType
- id: in_track_config
  doc: "'{ JSON-format extra configuration for this track }'\nAdditional top-level\
    \ configuration for the client, in JSON syntax.\nExample:\n--trackConfig '{ \"\
    glyph\": \"ProcessedTranscript\" }'"
  type: boolean
  inputBinding:
    prefix: --trackConfig
- id: in_used_dot
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Optional directory to write to. Defaults to data/.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- prepare-refseqs.pl
