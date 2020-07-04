version 1.0

task SnapAlignerSingle {
  input {
    Boolean? lp
    Boolean? nu
    Boolean? no
    Boolean? nt
    Boolean? wbs
    String index_dir
  }
  command <<<
    snap-aligner single \
      ~{index_dir} \
      ~{true="-lp" false="" lp} \
      ~{true="-nu" false="" nu} \
      ~{true="-no" false="" no} \
      ~{true="-nt" false="" nt} \
      ~{true="-wbs" false="" wbs}
  >>>
  parameter_meta {
    lp: "Run SNAP at low scheduling priority (Only implemented on Windows)"
    nu: "No Ukkonen: don't reduce edit distance search based on prior candidates. This option is purely for evaluating the performance effect of using Ukkonen's algorithm rather than Smith-Waterman, and specifying it will slow down execution without improving the alignments."
    no: "No Ordering: don't order the evalutation of reads so as to select more likely candidates first.  This option is purely for evaluating the performance effect of the read evaluation order, and specifying it will slow down execution without improving alignments."
    nt: "Don't truncate searches based on missed seed hits.  This option is purely for evaluating the performance effect of candidate truncation, and specifying it will slow down execution without improving alignments."
    wbs: "Write buffer size in megabytes.  Don't specify this unless you've gotten an error message saying to make it bigger.  Default 16."
    index_dir: ""
  }
}