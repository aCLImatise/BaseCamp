version 1.0

task FastutilsFormat {
  input {
    String? in
    String? out
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
      ~{true="--fastq" false="" fast_q} \
      ~{true="--noN" false="" non} \
      ~{true="--comment" false="" comment} \
      ~{true="--digital" false="" digital} \
      ~{true="--keep" false="" keep} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--pacbio" false="" pac_bio} \
      ~{true="--fofn" false="" fof_n}
  >>>
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
}