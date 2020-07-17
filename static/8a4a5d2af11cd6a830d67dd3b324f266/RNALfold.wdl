version 1.0

task RNALfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Int? span
    Boolean? outfile
    File? in_file
    Boolean? auto_id
    Boolean? zscore
    Boolean? g_quad
    File? shape
    String? temp
    Int? dangles
    Boolean? no_lp
    String? param_file
  }
  command <<<
    RNALfold \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{true="--outfile" false="" outfile} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--auto-id" false="" auto_id} \
      ~{true="--zscore" false="" zscore} \
      ~{true="--gquad" false="" g_quad} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose (default=off)"
    span: "Set the maximum distance between any two pairing nucleotides. (default=`150')"
    outfile: "[=<filename>]    Print output to file instead of stdout"
    in_file: "Read a file instead of reading from stdin"
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    zscore: "[=DOUBLE]         Limit the output to predictions with a Z-score below a threshold (default=`-2')"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm (default=off)"
    shape: "Use SHAPE reactivity data to guide structure predictions."
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    dangles: "Change the dangling end model (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
  }
}