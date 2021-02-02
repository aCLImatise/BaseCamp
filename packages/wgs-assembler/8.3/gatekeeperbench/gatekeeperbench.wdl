version 1.0

task Gatekeeperbench {
  input {
    Boolean? gkpstorename_createreadwrite_store
    Boolean? seed
    Int? create
    Boolean? mates
    Boolean? reads
    String? very_useful_benchmark
    String? possibly_most_brutal
    String? presumed_majority_accesses
    String? opts
  }
  command <<<
    gatekeeperbench \
      ~{opts} \
      ~{if (gkpstorename_createreadwrite_store) then "-g" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(create) then ("-create " +  '"' + create + '"') else ""} \
      ~{if (mates) then "-mates" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if defined(very_useful_benchmark) then ("-n " +  '"' + very_useful_benchmark + '"') else ""} \
      ~{if defined(possibly_most_brutal) then ("-m " +  '"' + possibly_most_brutal + '"') else ""} \
      ~{if defined(presumed_majority_accesses) then ("-r " +  '"' + presumed_majority_accesses + '"') else ""}
  >>>
  parameter_meta {
    gkpstorename_createreadwrite_store: "gkpStoreName    create/read/write the store called 'gkpStoreName'"
    seed: "s               use random seed s"
    create: "add numFrags random fragments"
    mates: "numMates        update numMates random mated fragments"
    reads: "numReads        read numReads random fragments"
    very_useful_benchmark: "not a very useful benchmark.  It is somewhat CPU bound, and simply writes"
    possibly_most_brutal: "possibly the most brutal test.  It reads and writes randomly to a moderately"
    presumed_majority_accesses: "(presumed to be) the majority of accesses made by the assembler.  It reads a"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}