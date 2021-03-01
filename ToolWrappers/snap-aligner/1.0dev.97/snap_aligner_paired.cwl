class: CommandLineTool
id: snap_aligner_paired.cwl
inputs:
- id: in_filename_output_alignments
  doc: "filename  output alignments to filename in SAM or BAM format, depending on\
    \ the file extension or\nexplicit type specifier (see below).  Use a dash with\
    \ an explicit type specifier to write to\nstdout, so for example -o -sam - would\
    \ write SAM output to stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_maximum_edit_distance
  doc: 'maximum edit distance allowed per read or pair (default: 15)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_number_seeds_use
  doc: number of seeds to use per read
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_sc
  doc: Seed coverage (i.e., readSize/seedSize).  Floating point.  Exclusive with -n.  (default
    uses -n)
  type: boolean?
  inputBinding:
    prefix: -sc
- id: in_ms
  doc: 'minimum seed matches per location (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -ms
- id: in_number_threads_default
  doc: number of threads (default is one per core)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_bind_thread_its
  doc: bind each thread to its processor (this is the default)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_disables_cache_prefetching
  doc: "disables cache prefetching in the genome; may be helpful for machines\nwith\
    \ small caches or lots of cores/cache"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_so
  doc: sort output file by alignment location
  type: File?
  inputBinding:
    prefix: -so
- id: in_sm
  doc: memory to use for sorting in Gb
  type: boolean?
  inputBinding:
    prefix: -sm
- id: in_explore_hits_overly
  doc: explore some hits of overly popular seeds (useful for filtering)
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_stop_first_match
  doc: stop on first match within edit distance limit (filtering mode)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_filter_output_aaligned
  doc: filter output (a=aligned only, s=single hit only (MAPQ >= 10), u=unaligned
    only, l=long enough to align (see -mrl))
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_alternate_fully_general
  doc: "an alternate (and fully general) way to specify filter options.  Emit only\
    \ these types s = single hit (MAPQ >= 10), m = multiple hit (MAPQ < 10),\nx =\
    \ not long enough to align, u = unaligned, b = filter must apply to both ends\
    \ of a paired-end read.  Combine the letters after\n-E, so for example -E smu\
    \ will emit all reads that aren't too short/have too many Ns (because it leaves\
    \ off l).  -E smx is the same\nas -F a, -E ux is the same as -F u, and so forth.\n\
    When filtering in paired-end mode (either with -F or -E) unless you specify the\
    \ b flag a read will be emitted if it's mate pair passes the filter\nEven if the\
    \ read itself does not.  If you specify b mode, then a read will be emitted only\
    \ if it and its partner both pass the filter."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_suppress_output_onlyiindex
  doc: "suppress additional processing (sorted BAM output only)\ni=index, d=duplicate\
    \ marking"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ignore_ids_match
  doc: ignore IDs that don't match in the paired-end aligner
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_cxx
  doc: "be followed by two + or - symbols saying whether to clip low-quality\nbases\
    \ from front and back of read respectively; default: back only (-C-+)"
  type: string?
  inputBinding:
    prefix: -Cxx
- id: in_indicates_strings_use
  doc: "indicates that CIGAR strings in the generated SAM file should use M (alignment\n\
    match) rather than = and X (sequence (mis-)match).  This is the default"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_specify_gap_penalty
  doc: specify a gap penalty to use when generating CIGAR strings
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_pf
  doc: specify the name of a file to contain the run speed
  type: boolean?
  inputBinding:
    prefix: -pf
- id: in_hp
  doc: not to use huge pages (this may speed up index load and slow down alignment)  This
    is the default
  type: string?
  inputBinding:
    prefix: --hp
- id: in_specifies_extra_depth
  doc: Specifies the extra search depth (the edit distance beyond the best hit that
    SNAP uses to compute MAPQ).  Default 2
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_rg
  doc: Specify the default read group if it is not specified in the input file
  type: boolean?
  inputBinding:
    prefix: -rg
- id: in_specify_entire_line
  doc: "Specify the entire read group line for the SAM/BAM output.  This must include\
    \ an ID tag.  If it doesn't start with\n'@RG' SNAP will add that.  Specify tabs\
    \ by \\t.  Two backslashes will generate a single backslash.\nbackslash followed\
    \ by anything else is illegal.  So, '-R @RG\\tID:foo\\tDS:my data' would generate\
    \ reads\nwith defualt tag foo, and an @RG line that also included the DS:my data\
    \ field."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_sa
  doc: Include reads from SAM or BAM files with the secondary (0x100) or supplementary
    (0x800) flag set; default is to drop them.
  type: boolean?
  inputBinding:
    prefix: -sa
- id: in_om
  doc: "Output multiple alignments.  Takes as a parameter the maximum extra edit distance\
    \ relative to the best alignment\nto allow for secondary alignments"
  type: boolean?
  inputBinding:
    prefix: -om
- id: in_omax
  doc: "the number of alignments per read generated by -om.  This means that if -om\
    \ would generate more\nthan -omax secondary alignments, SNAP will write out only\
    \ the best -omax of them, where 'best' means\n'with the lowest edit distance'.\
    \  Ties are broken arbitrarily."
  type: long?
  inputBinding:
    prefix: -omax
- id: in_mpc
  doc: "the number of alignments generated by -om to this many per contig (chromosome/FASTA\
    \ entry);\n'mpc' means 'max per contig; default unlimited.  This filter is applied\
    \ prior to -omax.  The primary alignment\nis counted."
  type: long?
  inputBinding:
    prefix: -mpc
- id: in_pc
  doc: Preserve the soft clipping for reads coming from SAM or BAM files
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_xf
  doc: Increase expansion factor for BAM and GZ files (default 1.0)
  type: boolean?
  inputBinding:
    prefix: -xf
- id: in_hdp
  doc: Hadoop-style prefixes (reporter:status:...) on error messages, and emit hadoop-style
    progress messages
  type: string?
  inputBinding:
    prefix: -hdp
- id: in_mrl
  doc: "the minimum read length to align, reads shorter than this (after clipping)\
    \ stay unaligned.  This should be\na good bit bigger than the seed length or you\
    \ might get some questionable alignments.  Default 50"
  type: long?
  inputBinding:
    prefix: -mrl
- id: in_map
  doc: "file mapping to load the index rather than reading it.  This might speed up\
    \ index loading in cases\nwhere SNAP is run repatedly on the same index, and the\
    \ index is larger than half of the memory size\nof the machine.  On some operating\
    \ systems, loading an index with -map is much slower than without if the\nindex\
    \ is not in memory.  You might consider adding -pre to prefetch the index into\
    \ system cache when loading\nwith -map when you don't expect the index to be in\
    \ cache."
  type: long?
  inputBinding:
    prefix: -map
- id: in_pre
  doc: "the index into system cache.  This is only meaningful with -map, and only\
    \ helps if the index is not\nalready in memory and your operating system is slow\
    \ at reading mapped files (i.e., some versions of Linux,\nbut not Windows)."
  type: string?
  inputBinding:
    prefix: -pre
- id: in_lp
  doc: Run SNAP at low scheduling priority (Only implemented on Windows)
  type: boolean?
  inputBinding:
    prefix: -lp
- id: in_nu
  doc: "No Ukkonen: don't reduce edit distance search based on prior candidates. This\
    \ option is purely for\nevaluating the performance effect of using Ukkonen's algorithm\
    \ rather than Smith-Waterman, and specifying\nit will slow down execution without\
    \ improving the alignments."
  type: boolean?
  inputBinding:
    prefix: -nu
- id: in_no
  doc: "No Ordering: don't order the evalutation of reads so as to select more likely\
    \ candidates first.  This option\nis purely for evaluating the performance effect\
    \ of the read evaluation order, and specifying it will slow\ndown execution without\
    \ improving alignments."
  type: boolean?
  inputBinding:
    prefix: -no
- id: in_nt
  doc: "Don't truncate searches based on missed seed hits.  This option is purely\
    \ for evaluating the performance effect\nof candidate truncation, and specifying\
    \ it will slow down execution without improving alignments."
  type: boolean?
  inputBinding:
    prefix: -nt
- id: in_wbs
  doc: Write buffer size in megabytes.  Don't specify this unless you've gotten an
    error message saying to make it bigger.  Default 16.
  type: boolean?
  inputBinding:
    prefix: -wbs
- id: in_di
  doc: Drop the index after aligning and before sorting.  This frees up memory for
    the sort at the expense of not having the index loaded for your next run.
  type: boolean?
  inputBinding:
    prefix: -di
- id: in_kts
  doc: "Kill if too slow.  Monitor our progress and kill ourself if we're not moving\
    \ fast enough.  This is intended for use on machines\nwith limited memory, where\
    \ some alignment tasks will push SNAP into paging, and take disproportinaltely\
    \ long.  This allows the script\nto move on to the next alignment.  Only works\
    \ when generating output, and not during the sort phase.  If you're running out\
    \ of memory\nsorting, try using -di."
  type: boolean?
  inputBinding:
    prefix: -kts
- id: in_sid
  doc: "Specifies the sort intermediate directory.  When SNAP is sorting, it aligns\
    \ the reads in the order in which they come in, and writes\nthe aligned reads\
    \ in batches to a temporary file.  When the aligning is done, it does a merge\
    \ sort from the temporary file into the\nfinal output file.  By default, the intermediate\
    \ file is in the same directory as the output file, but for performance or space\n\
    reasons, you might want to put it elsewhere.  If so, use this option."
  type: File?
  inputBinding:
    prefix: -sid
- id: in_pro
  doc: Profile alignment to give you an idea of how much time is spent aligning and
    how much waiting for IO
  type: boolean?
  inputBinding:
    prefix: -pro
- id: in_min_max_spacing
  doc: 'min and max spacing to allow between paired ends (default: 50 1000).'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_fs
  doc: force spacing to lie between min and max.
  type: boolean?
  inputBinding:
    prefix: -fs
- id: in_max_hits_intersecting
  doc: 'max hits for intersecting aligner (default: 2000).'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_mcp
  doc: "the maximum candidate pool size (An internal data structure.\nOnly increase\
    \ this if you get an error message saying to do so. If you're running\nout of\
    \ memory, you may want to reduce it.  Default: 1000000)"
  type: long?
  inputBinding:
    prefix: -mcp
- id: in_ku
  doc: "Keep unpaired-looking reads in SAM/BAM input.  Ordinarily, if a read doesn't\
    \ specify\nmate information (RNEXT field is * and/or PNEXT is 0) then the code\
    \ that matches reads will immdeiately\ndiscard it.  Specifying this flag may cause\
    \ large memory usage for some input files,\nbut may be necessary for some strangely\
    \ formatted input files.  You'll also need to specify this\nflag for SAM/BAM files\
    \ that were aligned by a single-end aligner.\n"
  type: boolean?
  inputBinding:
    prefix: -ku
- id: in_index_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_output_alignments
  doc: "filename  output alignments to filename in SAM or BAM format, depending on\
    \ the file extension or\nexplicit type specifier (see below).  Use a dash with\
    \ an explicit type specifier to write to\nstdout, so for example -o -sam - would\
    \ write SAM output to stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_filename_output_alignments)
- id: out_so
  doc: sort output file by alignment location
  type: File?
  outputBinding:
    glob: $(inputs.in_so)
- id: out_sid
  doc: "Specifies the sort intermediate directory.  When SNAP is sorting, it aligns\
    \ the reads in the order in which they come in, and writes\nthe aligned reads\
    \ in batches to a temporary file.  When the aligning is done, it does a merge\
    \ sort from the temporary file into the\nfinal output file.  By default, the intermediate\
    \ file is in the same directory as the output file, but for performance or space\n\
    reasons, you might want to put it elsewhere.  If so, use this option."
  type: File?
  outputBinding:
    glob: $(inputs.in_sid)
hints: []
cwlVersion: v1.1
baseCommand:
- snap-aligner
- paired
