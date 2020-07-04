version 1.0

task MugsyWGA {
  input {
    Boolean? _version_print
    Boolean? _seq_fasta
    Boolean? al
    Boolean? _outfile_filename
    Boolean? distance
    Boolean? minlength
    Boolean? unique
    Boolean? duplications
    Boolean? _format_output
    Boolean? anchor_win
    Boolean? allow_nested_l_cbs
    Boolean? refine
    Boolean? segmentation
    Boolean? block_file
    Boolean? _gop_int
    Boolean? _gex_int
    Boolean? ma
    Boolean? ms
    Boolean? mm
    Boolean? _build_tree
    Boolean? _infile_fasta
    String? seq
    String? aln
    String? other
  }
  command <<<
    mugsyWGA \
      ~{other} \
      ~{true="-V" false="" _version_print} \
      ~{true="-s" false="" _seq_fasta} \
      ~{true="-al" false="" al} \
      ~{true="-o" false="" _outfile_filename} \
      ~{true="-distance" false="" distance} \
      ~{true="-minlength" false="" minlength} \
      ~{true="-unique" false="" unique} \
      ~{true="-duplications" false="" duplications} \
      ~{true="-f" false="" _format_output} \
      ~{true="-anchorwin" false="" anchor_win} \
      ~{true="--allownestedlcbs" false="" allow_nested_l_cbs} \
      ~{true="-refine" false="" refine} \
      ~{true="-segmentation" false="" segmentation} \
      ~{true="-blockfile" false="" block_file} \
      ~{true="-g" false="" _gop_int} \
      ~{true="-e" false="" _gex_int} \
      ~{true="-ma" false="" ma} \
      ~{true="-ms" false="" ms} \
      ~{true="-mm" false="" mm} \
      ~{true="-b" false="" _build_tree} \
      ~{true="-i" false="" _infile_fasta} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(aln) then ("-aln " +  '"' + aln + '"') else ""}
  >>>
  parameter_meta {
    _version_print: ",               --version                          print version information"
    _seq_fasta: ",               --seq <FASTA Sequence File>        multi-FASTA file with all input sequences. For draft genomes, FASTA headers should be in the form >seqname genomename."
    al: ",              --aln <File1>,<File2>,...          Library of pairwise alignments. Aligned multi-FASTA format (XMFA)"
    _outfile_filename: ",               --outfile <Filename>               output filename prefix (default outfile)"
    distance: ",        --distance <String>                LCB chaining distance (default 1000)"
    minlength: ",       --minlength <Int>                  Minimum LCB segment span (default 100)"
    unique: ",          --unique [true|false]              Report unique regions (default true)"
    duplications: ",    --duplications [true|false]        Report duplications. Requires a second alignment file of pairwise duplications is passed to --aln.  (default false)"
    _format_output: ",               --format [maf | msf]               output format (default maf)"
    anchor_win: ",       --anchorwin <Int>                  bp window to consider for collapsing anchors (default 0)"
    allow_nested_l_cbs: "[true|false]     allow anchors to contribute to multiple LCBs. Default=false (default false)"
    refine: ",          --refine <String>                  refinement method: mugsy,fsa,pecan,mlagan"
    segmentation: ",    --segmentation <String>            Segmentation method. mugsy,enredo,mercator"
    block_file: ",       --blockfile <String>               Bypass segmentation and use this output file from synchain-mugsy"
    _gop_int: ",               --gop <Int>                        gap open penalty (default -13)"
    _gex_int: ",               --gex <Int>                        gap extension penalty (default -1)"
    ma: ",              --matrix <Matrix file>. Ignored.   score matrix (default Blosum62)"
    ms: ",              --msc <Int>                        match score (default 5)"
    mm: ",              --mmsc <Int>                       mismatch penalty (default -4)"
    _build_tree: ",               --build [nj, min, max, avg, wavg]  tree building method for progressive aln (default nj) nj = Neighbor-joining min = UPGMA single linkage max = UPGMA complete linkage avg = UPGMA average linkage wavg = UPGMA weighted average linkage Neighbor-joining creates an unrooted tree. We root that tree at the last joined pair."
    _infile_fasta: ",               --infile <FASTA alignment file>    alignment file"
    seq: ""
    aln: ""
    other: ""
  }
}