version 1.0

task PauvreStats {
  input {
    Boolean? quiet
    File? fast_q
    Boolean? histogram
    Int? filt_maxlen
    Int? filt_max_qual
    Int? filt_min_len
    Int? filt_min_qual
  }
  command <<<
    pauvre stats \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (histogram) then "--histogram" else ""} \
      ~{if defined(filt_maxlen) then ("--filt_maxlen " +  '"' + filt_maxlen + '"') else ""} \
      ~{if defined(filt_max_qual) then ("--filt_maxqual " +  '"' + filt_max_qual + '"') else ""} \
      ~{if defined(filt_min_len) then ("--filt_minlen " +  '"' + filt_min_len + '"') else ""} \
      ~{if defined(filt_min_qual) then ("--filt_minqual " +  '"' + filt_min_qual + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    fast_q: "The input FASTQ file."
    histogram: "Make a histogram of the read lengths and saves it to a\\nnew file"
    filt_maxlen: "This sets the max read length filter reads."
    filt_max_qual: "This sets the max mean read quality to filter reads."
    filt_min_len: "This sets the min read length to filter reads."
    filt_min_qual: "This sets the min mean read quality to filter reads.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}