version 1.0

task Gatekeeper {
  input {
    Boolean? append_existing_store
    String? append_to_create
    Boolean? check_minimum_length
    Boolean? fix_invalid_insert
    String? load_vector_clear
    File? list_partition_fragiid
    String? dump_starting_read
    String? dump_stopping_iid
    File? uid
    File? iid
    Boolean? random_mated
    Float? random_subset
    Int? random_length
    String? longest_over_min
    Boolean? longest_length
    Boolean? deterministic
    Boolean? tabular
    Int? is_feature_set
    Boolean? no_uid
    Boolean? dump_info
    Boolean? last_frag_iid
    Boolean? dump_libraries
    Boolean? dump_fragments
    Boolean? with_sequence
    String? clear
    Boolean? invert
    String? dump_fast_a
    Boolean? all_reads
    Boolean? all_bases
    Boolean? decoded
    Boolean? dump_frg
    Boolean? do_not_fix_mates
    Boolean? legacy_format
    String? dump_new_bler
    File? dump_fast_q
    Boolean? with_libname
  }
  command <<<
    gatekeeper \
      ~{if (append_existing_store) then "-a" else ""} \
      ~{if defined(append_to_create) then ("-o " +  '"' + append_to_create + '"') else ""} \
      ~{if (check_minimum_length) then "-T" else ""} \
      ~{if (fix_invalid_insert) then "-F" else ""} \
      ~{if defined(load_vector_clear) then ("-v " +  '"' + load_vector_clear + '"') else ""} \
      ~{if defined(list_partition_fragiid) then ("-P " +  '"' + list_partition_fragiid + '"') else ""} \
      ~{if defined(dump_starting_read) then ("-b " +  '"' + dump_starting_read + '"') else ""} \
      ~{if defined(dump_stopping_iid) then ("-e " +  '"' + dump_stopping_iid + '"') else ""} \
      ~{if defined(uid) then ("-uid " +  '"' + uid + '"') else ""} \
      ~{if defined(iid) then ("-iid " +  '"' + iid + '"') else ""} \
      ~{if (random_mated) then "-randommated" else ""} \
      ~{if defined(random_subset) then ("-randomsubset " +  '"' + random_subset + '"') else ""} \
      ~{if defined(random_length) then ("-randomlength " +  '"' + random_length + '"') else ""} \
      ~{if defined(longest_over_min) then ("-longestovermin " +  '"' + longest_over_min + '"') else ""} \
      ~{if (longest_length) then "-longestlength" else ""} \
      ~{if (deterministic) then "-deterministic" else ""} \
      ~{if (tabular) then "-tabular" else ""} \
      ~{if defined(is_feature_set) then ("-isfeatureset " +  '"' + is_feature_set + '"') else ""} \
      ~{if (no_uid) then "-nouid" else ""} \
      ~{if (dump_info) then "-dumpinfo" else ""} \
      ~{if (last_frag_iid) then "-lastfragiid" else ""} \
      ~{if (dump_libraries) then "-dumplibraries" else ""} \
      ~{if (dump_fragments) then "-dumpfragments" else ""} \
      ~{if (with_sequence) then "-withsequence" else ""} \
      ~{if defined(clear) then ("-clear " +  '"' + clear + '"') else ""} \
      ~{if (invert) then "-invert" else ""} \
      ~{if defined(dump_fast_a) then ("-dumpfasta " +  '"' + dump_fast_a + '"') else ""} \
      ~{if (all_reads) then "-allreads" else ""} \
      ~{if (all_bases) then "-allbases" else ""} \
      ~{if (decoded) then "-decoded" else ""} \
      ~{if (dump_frg) then "-dumpfrg" else ""} \
      ~{if (do_not_fix_mates) then "-donotfixmates" else ""} \
      ~{if (legacy_format) then "-legacyformat" else ""} \
      ~{if defined(dump_new_bler) then ("-dumpnewbler " +  '"' + dump_new_bler + '"') else ""} \
      ~{if defined(dump_fast_q) then ("-dumpfastq " +  '"' + dump_fast_q + '"') else ""} \
      ~{if (with_libname) then "-withlibname" else ""}
  >>>
  parameter_meta {
    append_existing_store: "append to existing store"
    append_to_create: "append to or create gkpStore"
    check_minimum_length: "do not check minimum length (for OBT)"
    fix_invalid_insert: "fix invalid insert size estimates"
    load_vector_clear: "load vector clear ranges into each read.\\nMUST be done on an existing, complete store.\\nexample: -a -v vectorfile -o that.gkpStore\\nformat: 'UID vec-clr-begin vec-clr-end'"
    list_partition_fragiid: "a list of (partition fragiid)"
    dump_starting_read: "dump starting at this library or read"
    dump_stopping_iid: "dump stopping after this iid"
    uid: "dump only objects listed in 'uid-file'"
    iid: "dump only objects listed in 'iid-file'"
    random_mated: "<lib> <n> pick n mates (2n frags) at random from library lib"
    random_subset: "<f> dump a random fraction f (0.0-1.0) of library lib"
    random_length: "<l> dump a random fraction of library lib, fraction picked\\nso that the untrimmed length is close to l bp"
    longest_over_min: "<n> pick all reads longer than n bp from library lib"
    longest_length: "<lib> <n> pick longest reads from library lib to add up to n total bp"
    deterministic: "use a constant seed for random subset dumps"
    tabular: "dump info, libraries or fragments in a tabular\\nformat (for -dumpinfo, -dumplibraries,\\nand -dumpfragments, ignores -withsequence and -clear)"
    is_feature_set: "<X> sets exit value to 0 if feature X is set in library libID, 1 otherwise.\\nIf libID == 0, check all libraries."
    no_uid: "dump info without including the read UID (for -dumpinfo, -dumplibraries, -dumpfragments)"
    dump_info: "print information on the store"
    last_frag_iid: "just print the last IID in the store"
    dump_libraries: "dump all library records"
    dump_fragments: "dump fragment info, no sequence"
    with_sequence: "...and include sequence"
    clear: "...in clear range <clr>, default=LATEST"
    invert: "...invert"
    dump_fast_a: "dump fragment sequence and quality into <p.fasta> and <p.fasta.qual>"
    all_reads: "...all reads, regardless of deletion status (deleted are lowercase)"
    all_bases: "...all bases (lowercase for non-clear)"
    decoded: "...quality as integers ('20 21 19')"
    dump_frg: "extract LIB, FRG and LKG messages"
    do_not_fix_mates: "...only extract the fragments given, do not add in\\nmissing mated reads"
    legacy_format: "...extract using frg format version 1 (legacy format, for compatibility)"
    dump_new_bler: "extract LIB, FRG and LKG messages, write in a\\nformat appropriate for Newbler.  This will create\\nfiles 'prefix.fna' and 'prefix.fna.qual'.  Options\\n-donotfixmates and -clear also apply."
    dump_fast_q: "extract LIB, FRG and LKG messages, write in FastQ format.  Currently\\nthis works only on a store with one library as all the mated reads\\nare dumped into a single file. This will create files 'prefix.paired.fastq',\\n'prefix.1.fastq', 'prefix.2.fastq' and 'prefix.unmated.fastq' for unmated\\nreads. Options -donotfixmates and -clear also apply."
    with_libname: "For -dumpfasta, -dumpnewbler and -dumpfastq, embed the libraryname in the\\ncreated files, e.g., prefix.libname.1.fastq for fastq files."
  }
  output {
    File out_stdout = stdout()
  }
}