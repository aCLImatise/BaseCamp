version 1.0

task FastutilsLength {
  input {
    String? in
    String? out
    Int? min_len
    Int? maxlen
    Boolean? total
  }
  command <<<
    fastutils length \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(maxlen) then ("--maxLen " +  '"' + maxlen + '"') else ""} \
      ~{true="--total" false="" total}
  >>>
  parameter_meta {
    in: "input file in fasta/q format [stdin]"
    out: "output file [stdout]"
    min_len: "min read length [0]"
    maxlen: "max read length [LLONG_MAX]"
    total: "print total number of bases in third column"
  }
}