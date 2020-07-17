version 1.0

task SnapAlignerPaired {
  input {
    Boolean? lp
    Boolean? nu
    Boolean? no
    Boolean? nt
    Boolean? wbs
    String? additional_option_f
    Boolean? ku
    String index_dir
  }
  command <<<
    snap-aligner paired \
      ~{index_dir} \
      ~{true="-lp" false="" lp} \
      ~{true="-nu" false="" nu} \
      ~{true="-no" false="" no} \
      ~{true="-nt" false="" nt} \
      ~{true="-wbs" false="" wbs} \
      ~{if defined(additional_option_f) then ("-F " +  '"' + additional_option_f + '"') else ""} \
      ~{true="-ku" false="" ku}
  >>>
  parameter_meta {
    lp: "Run SNAP at low scheduling priority (Only implemented on Windows)"
    nu: "No Ukkonen: don't reduce edit distance search based on prior candidates. This option is purely for evaluating the performance effect of using Ukkonen's algorithm rather than Smith-Waterman, and specifying it will slow down execution without improving the alignments."
    no: "No Ordering: don't order the evalutation of reads so as to select more likely candidates first.  This option is purely for evaluating the performance effect of the read evaluation order, and specifying it will slow down execution without improving alignments."
    nt: "Don't truncate searches based on missed seed hits.  This option is purely for evaluating the performance effect of candidate truncation, and specifying it will slow down execution without improving alignments."
    wbs: "Write buffer size in megabytes.  Don't specify this unless you've gotten an error message saying to make it bigger.  Default 16."
    additional_option_f: "additional option to -F to require both mates to satisfy filter (default is just one) If you specify -F b together with one of the other -F options, -F b MUST be second"
    ku: "Keep unpaired-looking reads in SAM/BAM input.  Ordinarily, if a read doesn't specify mate information (RNEXT field is * and/or PNEXT is 0) then the code that matches reads will immdeiately discard it.  Specifying this flag may cause large memory usage for some input files, but may be necessary for some strangely formatted input files.  You'll also need to specify this flag for SAM/BAM files that were aligned by a single-end aligner."
    index_dir: ""
  }
}