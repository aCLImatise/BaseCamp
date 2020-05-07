version 1.0

task RawN50 {
  input {
    String minMinContig
    String refRefLength
    String? contigsContigsFa
  }
  command <<<
    raw_n50 \
      ~{contigsContigsFa} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(refRefLength) then ("--ref_length " +  '"' + refRefLength + '"') else ""}
  >>>
}