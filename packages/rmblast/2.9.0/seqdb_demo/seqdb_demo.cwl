class: CommandLineTool
id: seqdb_demo.cwl
inputs:
- id: in_get_sequence
  doc: ":\nGetSequence() provides a basic interface to fetch\na sequence from a SeqDB\
    \ object given an OID."
  type: boolean
  inputBinding:
    prefix: -get-sequence
- id: in_iteration_chunk
  doc: ":\nGetNextOIDChunk() provides versatile iteration meant\nfor multithreaded\
    \ applications.  Each thread fetches\na set of OIDs to work with, only returning\
    \ for more\nwhen done with that set.  SeqDB guarantees that all\nOIDs will be\
    \ assigned, and no OID will be returned\nmore than once.\nThe data will be returned\
    \ in one of two forms, either\nas a pair of numbers representing a range of OIDs,\
    \ or\nin a vector.  The number of OIDs desired is indicated\nby setting the size\
    \ of the vector on input."
  type: boolean
  inputBinding:
    prefix: -iteration-chunk
- id: in_iteration_simple
  doc: ":\nCheckOrFindOID() provides a simple OID based iteration\nover the database.\
    \  The method works well as the test\nclause of a for loop.  This example counts\
    \ the number\nof sequences in the \"swissprot\" database, displaying\nthe count\
    \ and the combined length of the first 1000."
  type: boolean
  inputBinding:
    prefix: -iteration-simple
- id: in_iteration_threaded
  doc: ":\nGetNextOIDChunk() provides versatile iteration meant\nfor multithreaded\
    \ applications.  Each thread fetches\na set of OIDs to work with, only returning\
    \ for more\nwhen done with that set.  SeqDB guarantees that all\nOIDs will be\
    \ assigned, and no OID will be returned\nmore than once.\nThe data will be returned\
    \ in one of two forms, either\nas a pair of numbers representing a range of OIDs,\
    \ or\nin a vector.  The number of OIDs desired is indicated\nby setting the size\
    \ of the vector on input."
  type: boolean
  inputBinding:
    prefix: -iteration-threaded
- id: in_seq_id_to_bio_seq
  doc: ":\nSeqidToBioseq() provides a basic interface to fetch\nsequences from a SeqDB\
    \ object.  Given a Seq-id, the\nmethod returns the first matching CBioseq found\
    \ in\nthe database.\n"
  type: boolean
  inputBinding:
    prefix: -seqid-to-bioseq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqdb_demo
