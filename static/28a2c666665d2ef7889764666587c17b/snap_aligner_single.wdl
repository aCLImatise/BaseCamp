version 1.0

task SnapalignerSingle {
  input {
    File? filename_output_alignments
    Boolean? maximum_edit_distance
    Boolean? number_seeds_use
    Boolean? sc
    Boolean? ms
    Boolean? number_threads_default
    Boolean? bind_thread_its
    Boolean? disables_cache_prefetching
    File? so
    Boolean? sm
    Boolean? explore_hits_overly
    Boolean? stop_first_match
    Boolean? filter_output_aaligned
    Boolean? alternate_fully_general
    Boolean? suppress_output_onlyiindex
    Boolean? ignore_ids_match
    String? cxx
    Boolean? indicates_strings_use
    Boolean? specify_gap_penalty
    Boolean? pf
    String? hp
    Boolean? specifies_extra_depth
    Boolean? rg
    Boolean? specify_entire_line
    Boolean? sa
    Boolean? om
    Int? omax
    Int? mpc
    Boolean? pc
    Boolean? xf
    String? hdp
    Int? mrl
    Int? file_mapping_load
    String? pre
    Boolean? lp
    Boolean? nu
    Boolean? no
    Boolean? nt
    Boolean? wbs
    Boolean? di
    Boolean? kts
    File? sid
    Boolean? pro
    String index_dir
  }
  command <<<
    snap_aligner single \
      ~{index_dir} \
      ~{if (filename_output_alignments) then "-o" else ""} \
      ~{if (maximum_edit_distance) then "-d" else ""} \
      ~{if (number_seeds_use) then "-n" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (ms) then "-ms" else ""} \
      ~{if (number_threads_default) then "-t" else ""} \
      ~{if (bind_thread_its) then "-b" else ""} \
      ~{if (disables_cache_prefetching) then "-P" else ""} \
      ~{if (so) then "-so" else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if (explore_hits_overly) then "-x" else ""} \
      ~{if (stop_first_match) then "-f" else ""} \
      ~{if (filter_output_aaligned) then "-F" else ""} \
      ~{if (alternate_fully_general) then "-E" else ""} \
      ~{if (suppress_output_onlyiindex) then "-S" else ""} \
      ~{if (ignore_ids_match) then "-I" else ""} \
      ~{if defined(cxx) then ("-Cxx " +  '"' + cxx + '"') else ""} \
      ~{if (indicates_strings_use) then "-M" else ""} \
      ~{if (specify_gap_penalty) then "-G" else ""} \
      ~{if (pf) then "-pf" else ""} \
      ~{if defined(hp) then ("--hp " +  '"' + hp + '"') else ""} \
      ~{if (specifies_extra_depth) then "-D" else ""} \
      ~{if (rg) then "-rg" else ""} \
      ~{if (specify_entire_line) then "-R" else ""} \
      ~{if (sa) then "-sa" else ""} \
      ~{if (om) then "-om" else ""} \
      ~{if defined(omax) then ("-omax " +  '"' + omax + '"') else ""} \
      ~{if defined(mpc) then ("-mpc " +  '"' + mpc + '"') else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (xf) then "-xf" else ""} \
      ~{if defined(hdp) then ("-hdp " +  '"' + hdp + '"') else ""} \
      ~{if defined(mrl) then ("-mrl " +  '"' + mrl + '"') else ""} \
      ~{if defined(file_mapping_load) then ("-map " +  '"' + file_mapping_load + '"') else ""} \
      ~{if defined(pre) then ("-pre " +  '"' + pre + '"') else ""} \
      ~{if (lp) then "-lp" else ""} \
      ~{if (nu) then "-nu" else ""} \
      ~{if (no) then "-no" else ""} \
      ~{if (nt) then "-nt" else ""} \
      ~{if (wbs) then "-wbs" else ""} \
      ~{if (di) then "-di" else ""} \
      ~{if (kts) then "-kts" else ""} \
      ~{if (sid) then "-sid" else ""} \
      ~{if (pro) then "-pro" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_output_alignments: "filename  output alignments to filename in SAM or BAM format, depending on the file extension or\\nexplicit type specifier (see below).  Use a dash with an explicit type specifier to write to\\nstdout, so for example -o -sam - would write SAM output to stdout"
    maximum_edit_distance: "maximum edit distance allowed per read or pair (default: 14)"
    number_seeds_use: "number of seeds to use per read"
    sc: "Seed coverage (i.e., readSize/seedSize).  Floating point.  Exclusive with -n.  (default uses -n)"
    ms: "minimum seed matches per location (default: 1)"
    number_threads_default: "number of threads (default is one per core)"
    bind_thread_its: "bind each thread to its processor (this is the default)"
    disables_cache_prefetching: "disables cache prefetching in the genome; may be helpful for machines\\nwith small caches or lots of cores/cache"
    so: "sort output file by alignment location"
    sm: "memory to use for sorting in Gb"
    explore_hits_overly: "explore some hits of overly popular seeds (useful for filtering)"
    stop_first_match: "stop on first match within edit distance limit (filtering mode)"
    filter_output_aaligned: "filter output (a=aligned only, s=single hit only (MAPQ >= 10), u=unaligned only, l=long enough to align (see -mrl))"
    alternate_fully_general: "an alternate (and fully general) way to specify filter options.  Emit only these types s = single hit (MAPQ >= 10), m = multiple hit (MAPQ < 10),\\nx = not long enough to align, u = unaligned, b = filter must apply to both ends of a paired-end read.  Combine the letters after\\n-E, so for example -E smu will emit all reads that aren't too short/have too many Ns (because it leaves off l).  -E smx is the same\\nas -F a, -E ux is the same as -F u, and so forth.\\nWhen filtering in paired-end mode (either with -F or -E) unless you specify the b flag a read will be emitted if it's mate pair passes the filter\\nEven if the read itself does not.  If you specify b mode, then a read will be emitted only if it and its partner both pass the filter."
    suppress_output_onlyiindex: "suppress additional processing (sorted BAM output only)\\ni=index, d=duplicate marking"
    ignore_ids_match: "ignore IDs that don't match in the paired-end aligner"
    cxx: "be followed by two + or - symbols saying whether to clip low-quality\\nbases from front and back of read respectively; default: back only (-C-+)"
    indicates_strings_use: "indicates that CIGAR strings in the generated SAM file should use M (alignment\\nmatch) rather than = and X (sequence (mis-)match).  This is the default"
    specify_gap_penalty: "specify a gap penalty to use when generating CIGAR strings"
    pf: "specify the name of a file to contain the run speed"
    hp: "not to use huge pages (this may speed up index load and slow down alignment)  This is the default"
    specifies_extra_depth: "Specifies the extra search depth (the edit distance beyond the best hit that SNAP uses to compute MAPQ).  Default 2"
    rg: "Specify the default read group if it is not specified in the input file"
    specify_entire_line: "Specify the entire read group line for the SAM/BAM output.  This must include an ID tag.  If it doesn't start with\\n'@RG' SNAP will add that.  Specify tabs by \\t.  Two backslashes will generate a single backslash.\\nbackslash followed by anything else is illegal.  So, '-R @RG\\tID:foo\\tDS:my data' would generate reads\\nwith defualt tag foo, and an @RG line that also included the DS:my data field."
    sa: "Include reads from SAM or BAM files with the secondary (0x100) or supplementary (0x800) flag set; default is to drop them."
    om: "Output multiple alignments.  Takes as a parameter the maximum extra edit distance relative to the best alignment\\nto allow for secondary alignments"
    omax: "the number of alignments per read generated by -om.  This means that if -om would generate more\\nthan -omax secondary alignments, SNAP will write out only the best -omax of them, where 'best' means\\n'with the lowest edit distance'.  Ties are broken arbitrarily."
    mpc: "the number of alignments generated by -om to this many per contig (chromosome/FASTA entry);\\n'mpc' means 'max per contig; default unlimited.  This filter is applied prior to -omax.  The primary alignment\\nis counted."
    pc: "Preserve the soft clipping for reads coming from SAM or BAM files"
    xf: "Increase expansion factor for BAM and GZ files (default 1.0)"
    hdp: "Hadoop-style prefixes (reporter:status:...) on error messages, and emit hadoop-style progress messages"
    mrl: "the minimum read length to align, reads shorter than this (after clipping) stay unaligned.  This should be\\na good bit bigger than the seed length or you might get some questionable alignments.  Default 50"
    file_mapping_load: "file mapping to load the index rather than reading it.  This might speed up index loading in cases\\nwhere SNAP is run repatedly on the same index, and the index is larger than half of the memory size\\nof the machine.  On some operating systems, loading an index with -map is much slower than without if the\\nindex is not in memory.  You might consider adding -pre to prefetch the index into system cache when loading\\nwith -map when you don't expect the index to be in cache."
    pre: "the index into system cache.  This is only meaningful with -map, and only helps if the index is not\\nalready in memory and your operating system is slow at reading mapped files (i.e., some versions of Linux,\\nbut not Windows)."
    lp: "Run SNAP at low scheduling priority (Only implemented on Windows)"
    nu: "No Ukkonen: don't reduce edit distance search based on prior candidates. This option is purely for\\nevaluating the performance effect of using Ukkonen's algorithm rather than Smith-Waterman, and specifying\\nit will slow down execution without improving the alignments."
    no: "No Ordering: don't order the evalutation of reads so as to select more likely candidates first.  This option\\nis purely for evaluating the performance effect of the read evaluation order, and specifying it will slow\\ndown execution without improving alignments."
    nt: "Don't truncate searches based on missed seed hits.  This option is purely for evaluating the performance effect\\nof candidate truncation, and specifying it will slow down execution without improving alignments."
    wbs: "Write buffer size in megabytes.  Don't specify this unless you've gotten an error message saying to make it bigger.  Default 16."
    di: "Drop the index after aligning and before sorting.  This frees up memory for the sort at the expense of not having the index loaded for your next run."
    kts: "Kill if too slow.  Monitor our progress and kill ourself if we're not moving fast enough.  This is intended for use on machines\\nwith limited memory, where some alignment tasks will push SNAP into paging, and take disproportinaltely long.  This allows the script\\nto move on to the next alignment.  Only works when generating output, and not during the sort phase.  If you're running out of memory\\nsorting, try using -di."
    sid: "Specifies the sort intermediate directory.  When SNAP is sorting, it aligns the reads in the order in which they come in, and writes\\nthe aligned reads in batches to a temporary file.  When the aligning is done, it does a merge sort from the temporary file into the\\nfinal output file.  By default, the intermediate file is in the same directory as the output file, but for performance or space\\nreasons, you might want to put it elsewhere.  If so, use this option."
    pro: "Profile alignment to give you an idea of how much time is spent aligning and how much waiting for IO"
    index_dir: ""
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_alignments = "${in_filename_output_alignments}"
    File out_so = "${in_so}"
    File out_sid = "${in_sid}"
  }
}