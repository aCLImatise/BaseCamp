class: CommandLineTool
id: createSuperReadsForDirectory.perl.cwl
inputs:
- id: in_length_kmer_use
  doc: ': the length of the k-mer to use for the calculations (31)'
  type: long
  inputBinding:
    prefix: -l
- id: in_size_when_running
  doc: ': the size of the table when running jellyfish (2,000,000,000)'
  type: long
  inputBinding:
    prefix: -s
- id: in_number_run_jellyfish
  doc: ': the number of processors to run jellyfish and create_k_unitigs (16)'
  type: long
  inputBinding:
    prefix: -t
- id: in_k_unit_igs_file
  doc: ': a user-given k-unitigs file; otherwise we calculate'
  type: File
  inputBinding:
    prefix: -kunitigsfile
- id: in_mean_and_stdev_by_prefix_file
  doc: ": a file giving mate info about each\nlibrary. Each line is the 2-letter prefix\
    \ for the reads\nin the library followed by its mean and stdev. This\nfile is\
    \ mandatory unless -jumplibraryreads is specified"
  type: File
  inputBinding:
    prefix: -mean-and-stdev-by-prefix-file
- id: in_num_stdev_s_allowed
  doc: ': max stdevs allowed for joinKUnitigs (5)'
  type: long
  inputBinding:
    prefix: -num-stdevs-allowed
- id: in_m_ku_disr
  doc: ': max base diffs between overlapping k-unitigs in super-reads (0)'
  type: long
  inputBinding:
    prefix: -mkudisr
- id: in_min_reads_in_super_read
  doc: ": super-reads containing fewer than numReads\nreads will be eliminated (2)"
  type: long
  inputBinding:
    prefix: -minreadsinsuperread
- id: in_merged_unit_ig_data_prefix
  doc: ": the prefix for the filenames relating to\nmerged unitig data. We assume\
    \ that the k-unitig sequence\nis in  'prefix'.fasta, and the map file from orig\
    \ to\nmerged k-unitigs is in 'prefix'.map."
  type: File
  inputBinding:
    prefix: -merged-unitig-data-prefix
- id: in_output_join_result_for_each_join
  doc: ": Now does nothing; kept so other programs\nwon't break"
  type: boolean
  inputBinding:
    prefix: -output-join-result-for-each-join
- id: in_stop_after
  doc: ": Stop the run after one of the following \"target\" names:\ncreateLengthStatisticsFiles\n\
    createKUnitigHashTable\naddMissingMates\nfindReadKUnitigMatches\ncreateLengthStatisticsForMergedKUnitigsFiles\n\
    createKUnitigMaxOverlaps\njoinKUnitigs\ngetSuperReadInsertCounts\ncreateFastaSuperReadSequences\n\
    reduceSuperReads\ncreateFinalReadPlacementFile\ncreateFinalSuperReadFastaSequences"
  type: string
  inputBinding:
    prefix: --stopAfter
- id: in_no_clean
  doc: ": don't clean up the files afterwards"
  type: boolean
  inputBinding:
    prefix: -noclean
- id: in_mike_debug
  doc: ": don't kill off intermediate results"
  type: boolean
  inputBinding:
    prefix: -mikedebug
- id: in_jump_library_reads
  doc: ": we are generating for jump-library reads; a k-unitigs\nfile must be specified"
  type: boolean
  inputBinding:
    prefix: -jumplibraryreads
- id: in_keep_k_unit_igs_in_super_read_names
  doc: ": Use the super-read names which have the\nk-unitig numbers in them; otherwise\
    \ use numeric names\n(lower numbers correspond to shorter super-reads)"
  type: boolean
  inputBinding:
    prefix: -keep-kunitigs-in-superread-names
- id: in_extend_super_reads
  doc: ": extend the super-reads if the ending unitigs have\nunique continuations"
  type: boolean
  inputBinding:
    prefix: -extend-super-reads
- id: in_close_gaps
  doc: ': this is from a closeGaps.perl run, so some filesizes may be 0'
  type: boolean
  inputBinding:
    prefix: -closegaps
- id: in_time
  doc: ': time the commands'
  type: boolean
  inputBinding:
    prefix: -time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- createSuperReadsForDirectory.perl
