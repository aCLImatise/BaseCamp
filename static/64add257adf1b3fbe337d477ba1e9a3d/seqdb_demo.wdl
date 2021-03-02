version 1.0

task SeqdbDemo {
  input {
    Boolean? get_sequence
    Boolean? iteration_chunk
    Boolean? iteration_simple
    Boolean? iteration_threaded
    Boolean? seq_id_to_bio_seq
  }
  command <<<
    seqdb_demo \
      ~{if (get_sequence) then "-get-sequence" else ""} \
      ~{if (iteration_chunk) then "-iteration-chunk" else ""} \
      ~{if (iteration_simple) then "-iteration-simple" else ""} \
      ~{if (iteration_threaded) then "-iteration-threaded" else ""} \
      ~{if (seq_id_to_bio_seq) then "-seqid-to-bioseq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get_sequence: ":\\nGetSequence() provides a basic interface to fetch\\na sequence from a SeqDB object given an OID."
    iteration_chunk: ":\\nGetNextOIDChunk() provides versatile iteration meant\\nfor multithreaded applications.  Each thread fetches\\na set of OIDs to work with, only returning for more\\nwhen done with that set.  SeqDB guarantees that all\\nOIDs will be assigned, and no OID will be returned\\nmore than once.\\nThe data will be returned in one of two forms, either\\nas a pair of numbers representing a range of OIDs, or\\nin a vector.  The number of OIDs desired is indicated\\nby setting the size of the vector on input."
    iteration_simple: ":\\nCheckOrFindOID() provides a simple OID based iteration\\nover the database.  The method works well as the test\\nclause of a for loop.  This example counts the number\\nof sequences in the \\\"swissprot\\\" database, displaying\\nthe count and the combined length of the first 1000."
    iteration_threaded: ":\\nGetNextOIDChunk() provides versatile iteration meant\\nfor multithreaded applications.  Each thread fetches\\na set of OIDs to work with, only returning for more\\nwhen done with that set.  SeqDB guarantees that all\\nOIDs will be assigned, and no OID will be returned\\nmore than once.\\nThe data will be returned in one of two forms, either\\nas a pair of numbers representing a range of OIDs, or\\nin a vector.  The number of OIDs desired is indicated\\nby setting the size of the vector on input."
    seq_id_to_bio_seq: ":\\nSeqidToBioseq() provides a basic interface to fetch\\nsequences from a SeqDB object.  Given a Seq-id, the\\nmethod returns the first matching CBioseq found in\\nthe database.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}