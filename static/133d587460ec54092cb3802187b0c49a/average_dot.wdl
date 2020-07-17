version 1.0

task AverageDot.pl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? quiet
    File? alignment
    File? sequences
    File? outfile
    Float? threshold
  }
  command <<<
    average-dot.pl \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    man: "full documentation"
    verbose: "be verbose"
    quiet: "be quiet"
    alignment: "pp file representing the (Lo)Carna alignment"
    sequences: "pp files for the input sequences"
    outfile: "output file (DEFAULT: averagedot)"
    threshold: "for each given threshold (this option can be specified more than once) a copy of the orginal dotplots is created where the dots are highlighted that have in the average plot a probability above the threshold."
  }
}