version 1.0

task FastutilsInterleave {
  input {
    Int? in_one
    Int? in_two
    File? out
    Boolean? fast_q
    String? separator
  }
  command <<<
    fastutils interleave \
      ~{if defined(in_one) then ("--in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("--in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    in_one: "fasta/q file containing forward (left) reads [required]"
    in_two: "fasta/q file containing reverse (right) reads [required]"
    out: "output interlaced reads in STR file [stdout]"
    fast_q: "output reads in fastq format if possible"
    separator: "separator character [.]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}