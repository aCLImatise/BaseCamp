class: CommandLineTool
id: gatekeeper.cwl
inputs:
- id: a
  doc: append to existing store
  type: boolean
  inputBinding:
    prefix: -a
- id: o
  doc: append to or create gkpStore
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: do not check minimum length (for OBT)
  type: boolean
  inputBinding:
    prefix: -T
- id: f
  doc: fix invalid insert size estimates
  type: boolean
  inputBinding:
    prefix: -F
- id: v
  doc: "load vector clear ranges into each read. MUST be done on an existing, complete\
    \ store. example: -a -v vectorfile -o that.gkpStore format: 'UID vec-clr-begin\
    \ vec-clr-end'"
  type: string
  inputBinding:
    prefix: -v
- id: p
  doc: a list of (partition fragiid)
  type: string
  inputBinding:
    prefix: -P
- id: dump_info
  doc: print information on the store
  type: boolean
  inputBinding:
    prefix: -dumpinfo
- id: last_frag_iid
  doc: just print the last IID in the store
  type: boolean
  inputBinding:
    prefix: -lastfragiid
- id: dump_libraries
  doc: dump all library records
  type: boolean
  inputBinding:
    prefix: -dumplibraries
- id: dump_fragments
  doc: dump fragment info, no sequence
  type: boolean
  inputBinding:
    prefix: -dumpfragments
- id: with_sequence
  doc: '...and include sequence'
  type: boolean
  inputBinding:
    prefix: -withsequence
- id: clear
  doc: '...in clear range <clr>, default=LATEST'
  type: string
  inputBinding:
    prefix: -clear
- id: invert
  doc: '...invert '
  type: boolean
  inputBinding:
    prefix: -invert
- id: dump_fast_a
  doc: dump fragment sequence and quality into <p.fasta> and <p.fasta.qual>
  type: string
  inputBinding:
    prefix: -dumpfasta
- id: all_reads
  doc: '...all reads, regardless of deletion status (deleted are lowercase)'
  type: boolean
  inputBinding:
    prefix: -allreads
- id: all_bases
  doc: '...all bases (lowercase for non-clear)'
  type: boolean
  inputBinding:
    prefix: -allbases
- id: decoded
  doc: "...quality as integers ('20 21 19')"
  type: boolean
  inputBinding:
    prefix: -decoded
- id: clear
  doc: '...in clear range <clr>, default=LATEST'
  type: string
  inputBinding:
    prefix: -clear
- id: dump_frg
  doc: extract LIB, FRG and LKG messages
  type: boolean
  inputBinding:
    prefix: -dumpfrg
- id: all_reads
  doc: '...all reads, regardless of deletion status'
  type: boolean
  inputBinding:
    prefix: -allreads
- id: do_not_fix_mates
  doc: '...only extract the fragments given, do not add in missing mated reads'
  type: boolean
  inputBinding:
    prefix: -donotfixmates
- id: clear
  doc: '...use clear range <clr>, default=LATEST'
  type: string
  inputBinding:
    prefix: -clear
- id: legacy_format
  doc: '...extract using frg format version 1 (legacy format, for compatibility)'
  type: boolean
  inputBinding:
    prefix: -legacyformat
- id: dump_new_bler
  doc: extract LIB, FRG and LKG messages, write in a format appropriate for Newbler.  This
    will create files 'prefix.fna' and 'prefix.fna.qual'.  Options -donotfixmates
    and -clear also apply.
  type: string
  inputBinding:
    prefix: -dumpnewbler
- id: dump_fast_q
  doc: extract LIB, FRG and LKG messages, write in FastQ format.  Currently this works
    only on a store with one library as all the mated reads are dumped into a single
    file. This will create files 'prefix.paired.fastq', 'prefix.1.fastq', 'prefix.2.fastq'
    and 'prefix.unmated.fastq' for unmated reads. Options -donotfixmates and -clear
    also apply.
  type: string
  inputBinding:
    prefix: -dumpfastq
- id: with_libname
  doc: For -dumpfasta, -dumpnewbler and -dumpfastq, embed the libraryname in the created
    files, e.g., prefix.libname.1.fastq for fastq files.
  type: boolean
  inputBinding:
    prefix: -withlibname
outputs: []
cwlVersion: v1.1
baseCommand:
- gatekeeper
