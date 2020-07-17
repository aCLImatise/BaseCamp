version 1.0

task PauvreStats {
  input {
    Boolean? quiet
    String? fast_q
    Boolean? histogram
    String? filt_maxlen
    String? filt_max_qual
    String? filt_min_len
    String? filt_min_qual
  }
  command <<<
    pauvre stats \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="--histogram" false="" histogram} \
      ~{if defined(filt_maxlen) then ("--filt_maxlen " +  '"' + filt_maxlen + '"') else ""} \
      ~{if defined(filt_max_qual) then ("--filt_maxqual " +  '"' + filt_max_qual + '"') else ""} \
      ~{if defined(filt_min_len) then ("--filt_minlen " +  '"' + filt_min_len + '"') else ""} \
      ~{if defined(filt_min_qual) then ("--filt_minqual " +  '"' + filt_min_qual + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    fast_q: "The input FASTQ file."
    histogram: "Make a histogram of the read lengths and saves it to a new file"
    filt_maxlen: "This sets the max read length filter reads."
    filt_max_qual: "This sets the max mean read quality to filter reads."
    filt_min_len: "This sets the min read length to filter reads."
    filt_min_qual: "This sets the min mean read quality to filter reads."
  }
}