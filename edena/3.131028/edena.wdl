version 1.0

task Edena {
  input {
    Int? n_threads
    Boolean? r
    File? single_end
    Boolean? dr_pairs
    File? paired
    Boolean? rd_pairs
    File? mate_pairs
    Boolean? p
    String? prefix
    Boolean? var_9
    Int? min_overlap
    Boolean? t
    Int? truncate
    Boolean? e
    File? eden_a_file
    Boolean? var_15
    Int? overlap_cut_off
    Boolean? c
    Int? min_contig_size
    Boolean? cc
    Boolean? contextual_cleaning
    Int? min_coverage
    Boolean? sph
    Int? short_pe_horizon
    Boolean? lph
    Int? long_pe_horizon
    Int? pe_horizon
    Int? trim_red
    Int? max_red
    Boolean? d
    Int? dead_ends
    Boolean? discard_non_usable
    Int? trim
    Boolean? shell
    Int length
  }
  command <<<
    edena \
      ~{length} \
      ~{if defined(n_threads) then ("-nThreads " +  '"' + n_threads + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(single_end) then ("-singleEnd " +  '"' + single_end + '"') else ""} \
      ~{if (dr_pairs) then "-DRpairs" else ""} \
      ~{if defined(paired) then ("-paired " +  '"' + paired + '"') else ""} \
      ~{if (rd_pairs) then "-RDpairs" else ""} \
      ~{if defined(mate_pairs) then ("-matePairs " +  '"' + mate_pairs + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (var_9) then "-M" else ""} \
      ~{if defined(min_overlap) then ("-minOverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(truncate) then ("-truncate " +  '"' + truncate + '"') else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if defined(eden_a_file) then ("-edenaFile " +  '"' + eden_a_file + '"') else ""} \
      ~{if (var_15) then "-m" else ""} \
      ~{if defined(overlap_cut_off) then ("-overlapCutoff " +  '"' + overlap_cut_off + '"') else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if defined(min_contig_size) then ("-minContigSize " +  '"' + min_contig_size + '"') else ""} \
      ~{if (cc) then "-cc" else ""} \
      ~{if (contextual_cleaning) then "-contextualCleaning" else ""} \
      ~{if defined(min_coverage) then ("-minCoverage " +  '"' + min_coverage + '"') else ""} \
      ~{if (sph) then "-sph" else ""} \
      ~{if defined(short_pe_horizon) then ("-shortPeHorizon " +  '"' + short_pe_horizon + '"') else ""} \
      ~{if (lph) then "-lph" else ""} \
      ~{if defined(long_pe_horizon) then ("-longPeHorizon " +  '"' + long_pe_horizon + '"') else ""} \
      ~{if defined(pe_horizon) then ("-peHorizon " +  '"' + pe_horizon + '"') else ""} \
      ~{if defined(trim_red) then ("-trimRed " +  '"' + trim_red + '"') else ""} \
      ~{if defined(max_red) then ("-maxRed " +  '"' + max_red + '"') else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if defined(dead_ends) then ("-deadEnds " +  '"' + dead_ends + '"') else ""} \
      ~{if (discard_non_usable) then "-discardNonUsable" else ""} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{if (shell) then "-shell" else ""}
  >>>
  parameter_meta {
    n_threads: "Number of threads to use. Default 2"
    r: ""
    single_end: "<file2> ...\\nReads file(s) in FASTA or FASTQ format.\\nSeveral files can be specified"
    dr_pairs: ""
    paired: "<file1_2> <file2_1> <file_2_2> ...\\nDirect-Reverse paired reads files. Several\\npairs of files can be specified."
    rd_pairs: ""
    mate_pairs: "<file1_2> <file2_1> <file_2_2> ...\\nReverse-Direct paired reads files. Several\\npairs of files can be specified."
    p: ""
    prefix: "Prefix for the output files. Default is \\\"out\\\"."
    var_9: ""
    min_overlap: "Minimum size of the overlaps to compute.\\nDefault is half of the reads length."
    t: ""
    truncate: "Truncate the 3' end of the reads TO the specified"
    e: ""
    eden_a_file: "Edena overlap (.ovl) file. Required."
    var_15: ""
    overlap_cut_off: "Only consider overlaps >= than the specified size.\\nThe optimal setting of this parameter depends on the\\ncoverage that was achieved by the sequencing run.\\nYou should therefore try different values in order\\nto get the optimal one."
    c: ""
    min_contig_size: "Minimum size of the contigs to output.\\nDefault is 1.5*readLength."
    cc: ""
    contextual_cleaning: "<yes/no>   Contextual cleaning of spurious edges."
    min_coverage: "Minimum required coverage for the contigs. This\\nvalue is automatically determined if not specified."
    sph: ""
    short_pe_horizon: "Maximum search distance for short >< paired-end\\nsampling. Default: 1000"
    lph: ""
    long_pe_horizon: "Maximum search distance for long <> paired-end\\nsampling. Default: 15000"
    pe_horizon: "obsolete: Maximum search distance for both short\\nand long paired-end reads sampling."
    trim_red: "By default, possible redundant sequences, caused by\\nunresolved repeats, are trimmed from contigs ends.\\nSetting this flag to 'no' allows keeping such\\nredundancies up to the length of the largest insert\\nsize (maxJump). !! setting this setting to 'no'\\nproduces an artificially increased assembly size !!"
    max_red: "Max ending redundancy length. Default: 0 (equivalent\\nto '-trimRed yes'. Overrides -trimRed."
    d: ""
    dead_ends: "Maximum length for dead-end paths removal.\\nDefault value is set to 2*readLength-1."
    discard_non_usable: "<yes/no>   Reads that are involved in orphan nodes smaller than\\n1.5*readLength are considered as \\\"non-usable\\\".\\nThis filter discards such nodes. Default: enabled"
    trim: "Coverage cutoff for contigs ends:\\nContig ends ending in a gap may contain errors due\\nto low coverage. This option trim a few bases from\\nthese ends until a minimum coverage is reached.\\nDefault is 4. Ends are not trimmed if set to 1."
    shell: "Interactive shell. Allows querying the assembly\\ngraph."
    length: "2) Assembler mode:"
  }
  output {
    File out_stdout = stdout()
  }
}