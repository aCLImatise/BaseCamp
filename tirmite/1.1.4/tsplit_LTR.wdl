version 1.0

task TsplitLTR {
  input {
    String? in_file
    String? prefix
    String? outdir
    String? split_mode
    Boolean? keep_temp
    Boolean? verbose
    Int? max_dist
    Int? mini_d
    Int? min_term
    Int? min_seed
    String? diag_factor
    String? method
    String exterminate
  }
  command <<<
    tsplit-LTR \
      ~{exterminate} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(split_mode) then ("--splitmode " +  '"' + split_mode + '"') else ""} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_term) then ("--minterm " +  '"' + min_term + '"') else ""} \
      ~{if defined(min_seed) then ("--minseed " +  '"' + min_seed + '"') else ""} \
      ~{if defined(diag_factor) then ("--diagfactor " +  '"' + diag_factor + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Multifasta containing complete elements."
    prefix: "All output files begin with this string. (Default: [infile name])"
    outdir: "Write output files to this directory. (Default: cwd)"
    split_mode: "all= Report input sequence as well as internal and external segments. split= Report internal and external segments after splitting. internal = Report only internal segments external = Report only terminal repeat segments. If set to \"None\" then only synthetic MITES will be reported if --makemites is also set. (Default: split)"
    keep_temp: "If set do not remove temp directory on completion."
    verbose: "If set, report progress."
    max_dist: "Terminal repeat candidates must be no more than this many bases from end of input element. (Default: 10) Note: Increase this value if you suspect that your element is nested within some flanking sequence."
    mini_d: "Minimum identity between terminal repeat pairs. As float. (Default: 80.0)"
    min_term: "Minimum length for a terminal repeat to be considered. Equivalent to nucmer \"--mincluster\" (Default: 10)"
    min_seed: "Minimum length of a maximal exact match to be included in final match cluster. Equivalent to nucmer \"-- minmatch\". (Default: 5)"
    diag_factor: "Maximum diagonal difference factor for clustering of matches within nucmer, i.e. diagonal difference / match separation (default 0.20) Note: Increase value for greater tolerance of indels between terminal repeats."
    method: "Select alignment method: \"blastn\" or \"nucmer\".(Default: nucmer)"
    exterminate: ""
  }
}