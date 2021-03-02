class: CommandLineTool
id: gatekeeper.cwl
inputs:
- id: in_append_existing_store
  doc: append to existing store
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_append_create_gkpstore
  doc: append to or create gkpStore
  type: string?
  inputBinding:
    prefix: -o
- id: in_check_minimum_length
  doc: do not check minimum length (for OBT)
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_fix_size_estimates
  doc: fix invalid insert size estimates
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_load_vector_clear
  doc: "load vector clear ranges into each read.\nMUST be done on an existing, complete\
    \ store.\nexample: -a -v vectorfile -o that.gkpStore\nformat: 'UID vec-clr-begin\
    \ vec-clr-end'"
  type: string?
  inputBinding:
    prefix: -v
- id: in_list_partition_fragiid
  doc: a list of (partition fragiid)
  type: File?
  inputBinding:
    prefix: -P
- id: in_dump_starting_read
  doc: dump starting at this library or read
  type: string?
  inputBinding:
    prefix: -b
- id: in_dump_stopping_iid
  doc: dump stopping after this iid
  type: string?
  inputBinding:
    prefix: -e
- id: in_uid
  doc: dump only objects listed in 'uid-file'
  type: File?
  inputBinding:
    prefix: -uid
- id: in_iid
  doc: dump only objects listed in 'iid-file'
  type: File?
  inputBinding:
    prefix: -iid
- id: in_random_mated
  doc: <lib> <n> pick n mates (2n frags) at random from library lib
  type: boolean?
  inputBinding:
    prefix: -randommated
- id: in_random_subset
  doc: <f> dump a random fraction f (0.0-1.0) of library lib
  type: double?
  inputBinding:
    prefix: -randomsubset
- id: in_random_length
  doc: "<l> dump a random fraction of library lib, fraction picked\nso that the untrimmed\
    \ length is close to l bp"
  type: long?
  inputBinding:
    prefix: -randomlength
- id: in_longest_over_min
  doc: <n> pick all reads longer than n bp from library lib
  type: string?
  inputBinding:
    prefix: -longestovermin
- id: in_longest_length
  doc: <lib> <n> pick longest reads from library lib to add up to n total bp
  type: boolean?
  inputBinding:
    prefix: -longestlength
- id: in_deterministic
  doc: use a constant seed for random subset dumps
  type: boolean?
  inputBinding:
    prefix: -deterministic
- id: in_tabular
  doc: "dump info, libraries or fragments in a tabular\nformat (for -dumpinfo, -dumplibraries,\n\
    and -dumpfragments, ignores -withsequence and -clear)"
  type: boolean?
  inputBinding:
    prefix: -tabular
- id: in_is_feature_set
  doc: "<X> sets exit value to 0 if feature X is set in library libID, 1 otherwise.\n\
    If libID == 0, check all libraries."
  type: long?
  inputBinding:
    prefix: -isfeatureset
- id: in_no_uid
  doc: dump info without including the read UID (for -dumpinfo, -dumplibraries, -dumpfragments)
  type: boolean?
  inputBinding:
    prefix: -nouid
- id: in_dump_info
  doc: print information on the store
  type: boolean?
  inputBinding:
    prefix: -dumpinfo
- id: in_last_frag_iid
  doc: just print the last IID in the store
  type: boolean?
  inputBinding:
    prefix: -lastfragiid
- id: in_dump_libraries
  doc: dump all library records
  type: boolean?
  inputBinding:
    prefix: -dumplibraries
- id: in_dump_fragments
  doc: dump fragment info, no sequence
  type: boolean?
  inputBinding:
    prefix: -dumpfragments
- id: in_with_sequence
  doc: '...and include sequence'
  type: boolean?
  inputBinding:
    prefix: -withsequence
- id: in_clear
  doc: '...in clear range <clr>, default=LATEST'
  type: string?
  inputBinding:
    prefix: -clear
- id: in_invert
  doc: '...invert'
  type: boolean?
  inputBinding:
    prefix: -invert
- id: in_dump_fast_a
  doc: dump fragment sequence and quality into <p.fasta> and <p.fasta.qual>
  type: string?
  inputBinding:
    prefix: -dumpfasta
- id: in_all_reads
  doc: '...all reads, regardless of deletion status (deleted are lowercase)'
  type: boolean?
  inputBinding:
    prefix: -allreads
- id: in_all_bases
  doc: '...all bases (lowercase for non-clear)'
  type: boolean?
  inputBinding:
    prefix: -allbases
- id: in_decoded
  doc: "...quality as integers ('20 21 19')"
  type: boolean?
  inputBinding:
    prefix: -decoded
- id: in_dump_frg
  doc: extract LIB, FRG and LKG messages
  type: boolean?
  inputBinding:
    prefix: -dumpfrg
- id: in_do_not_fix_mates
  doc: "...only extract the fragments given, do not add in\nmissing mated reads"
  type: boolean?
  inputBinding:
    prefix: -donotfixmates
- id: in_legacy_format
  doc: '...extract using frg format version 1 (legacy format, for compatibility)'
  type: boolean?
  inputBinding:
    prefix: -legacyformat
- id: in_dump_new_bler
  doc: "extract LIB, FRG and LKG messages, write in a\nformat appropriate for Newbler.\
    \  This will create\nfiles 'prefix.fna' and 'prefix.fna.qual'.  Options\n-donotfixmates\
    \ and -clear also apply."
  type: string?
  inputBinding:
    prefix: -dumpnewbler
- id: in_dump_fast_q
  doc: "extract LIB, FRG and LKG messages, write in FastQ format.  Currently\nthis\
    \ works only on a store with one library as all the mated reads\nare dumped into\
    \ a single file. This will create files 'prefix.paired.fastq',\n'prefix.1.fastq',\
    \ 'prefix.2.fastq' and 'prefix.unmated.fastq' for unmated\nreads. Options -donotfixmates\
    \ and -clear also apply."
  type: File?
  inputBinding:
    prefix: -dumpfastq
- id: in_with_libname
  doc: "For -dumpfasta, -dumpnewbler and -dumpfastq, embed the libraryname in the\n\
    created files, e.g., prefix.libname.1.fastq for fastq files."
  type: boolean?
  inputBinding:
    prefix: -withlibname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gatekeeper
