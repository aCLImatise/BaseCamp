version 1.0

task BamToBed {
  input {
    Boolean? ed
    Boolean? tag
    Boolean? color
    Boolean? cigar
    String? i
  }
  command <<<
    bamToBed \
      ~{true="-ed" false="" ed} \
      ~{true="-tag" false="" tag} \
      ~{true="-color" false="" color} \
      ~{true="-cigar" false="" cigar} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    ed: "Use BAM edit distance (NM tag) for BED score. - Default for BED is to use mapping quality. - Default for BEDPE is to use the minimum of the two mapping qualities for the pair. - When -ed is used with -bedpe, the total edit distance from the two mates is reported."
    tag: "Use other NUMERIC BAM alignment tag for BED score. - Default for BED is to use mapping quality. Disallowed with BEDPE output."
    color: "An R,G,B string for the color used with BED12 format. Default is (255,0,0)."
    cigar: "Add the CIGAR string to the BED entry as a 7th column."
    i: ""
  }
}