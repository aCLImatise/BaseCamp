version 1.0

task TsplitLTR {
  input {
    File? in_file
    String? prefix
    Directory? outdir
    String? split_mode
    Boolean? keep_temp
    Boolean? verbose
    Int? max_dist
    Float? mini_d
    Int? min_term
    Int? min_seed
    Float? diag_factor
    String? method
    String exterminate
  }
  command <<<
    tsplit_LTR \
      ~{exterminate} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(split_mode) then ("--splitmode " +  '"' + split_mode + '"') else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_term) then ("--minterm " +  '"' + min_term + '"') else ""} \
      ~{if defined(min_seed) then ("--minseed " +  '"' + min_seed + '"') else ""} \
      ~{if defined(diag_factor) then ("--diagfactor " +  '"' + diag_factor + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Multifasta containing complete elements."
    prefix: "All output files begin with this string. (Default:\\n[infile name])"
    outdir: "Write output files to this directory. (Default: cwd)"
    split_mode: "all= Report input sequence as well as internal and\\nexternal segments. split= Report internal and external\\nsegments after splitting. internal = Report only\\ninternal segments external = Report only terminal\\nrepeat segments. If set to \\\"None\\\" then only synthetic\\nMITES will be reported if --makemites is also set.\\n(Default: split)"
    keep_temp: "If set do not remove temp directory on completion."
    verbose: "If set, report progress."
    max_dist: "Terminal repeat candidates must be no more than this\\nmany bases from end of input element. (Default: 10)\\nNote: Increase this value if you suspect that your\\nelement is nested within some flanking sequence."
    mini_d: "Minimum identity between terminal repeat pairs. As\\nfloat. (Default: 80.0)"
    min_term: "Minimum length for a terminal repeat to be considered.\\nEquivalent to nucmer \\\"--mincluster\\\" (Default: 10)"
    min_seed: "Minimum length of a maximal exact match to be included\\nin final match cluster. Equivalent to nucmer \\\"--\\nminmatch\\\". (Default: 5)"
    diag_factor: "Maximum diagonal difference factor for clustering of\\nmatches within nucmer, i.e. diagonal difference /\\nmatch separation (default 0.20) Note: Increase value\\nfor greater tolerance of indels between terminal\\nrepeats."
    method: "Select alignment method: \\\"blastn\\\" or\\n\\\"nucmer\\\".(Default: nucmer)\\n"
    exterminate: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}