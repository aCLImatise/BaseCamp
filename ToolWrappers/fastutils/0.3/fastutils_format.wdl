version 1.0

task FastutilsFormat {
  input {
    File? in
    File? out
    Int? linewidth
    Int? min_len
    Int? maxlen
    Boolean? fast_q
    Boolean? non
    Boolean? comment
    Boolean? digital
    Boolean? keep
    String? prefix
    String? suffix
    Boolean? pac_bio
    Boolean? fof_n
  }
  command <<<
    fastutils format \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(linewidth) then ("--lineWidth " +  '"' + linewidth + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(maxlen) then ("--maxLen " +  '"' + maxlen + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (non) then "--noN" else ""} \
      ~{if (comment) then "--comment" else ""} \
      ~{if (digital) then "--digital" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (pac_bio) then "--pacbio" else ""} \
      ~{if (fof_n) then "--fofn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "input file in fasta/q format [stdin]"
    out: "output file [stdout]"
    linewidth: "size of lines in fasta output. Use 0 for no wrapping [0]"
    min_len: "min read length [0]"
    maxlen: "max read length [LLONG_MAX]"
    fast_q: "output reads in fastq format if possible"
    non: "do not print entries with N's"
    comment: "print comments in headers"
    digital: "use read index instead as read name"
    keep: "keep name as a comment when using -d"
    prefix: "prepend STR to the name"
    suffix: "append STR to the name"
    pac_bio: "use pacbio's header format"
    fof_n: "input file is a file of file names"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}