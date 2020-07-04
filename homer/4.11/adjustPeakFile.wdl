version 1.0

task AdjustPeakFile.pl {
  input {
    Boolean? size
    Boolean? r_size
    Boolean? move
    Boolean? five_p
    Boolean? three_p
    Boolean? ends
    Boolean? flip_strand
    Boolean? min
    Boolean? max
  }
  command <<<
    adjustPeakFile.pl \
      ~{true="-size" false="" size} \
      ~{true="-rsize" false="" r_size} \
      ~{true="-move" false="" move} \
      ~{true="-5p" false="" five_p} \
      ~{true="-3p" false="" three_p} \
      ~{true="-ends" false="" ends} \
      ~{true="-flipStrand" false="" flip_strand} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max}
  >>>
  parameter_meta {
    size: "<#> (resize peak [around center] to this size, supports -size <#,#>)"
    r_size: "<#> (resize peak by this relative size, supports -size <#,#>)"
    move: "<#> (move peak [relative to strand], default: 0)"
    five_p: "(recenter peak on 5' end of region)"
    three_p: "(recenter peak on 3' end of region)"
    ends: "(get both 5' and 3' ends - 3' ends will be flipped)"
    flip_strand: "(change strand of peak)"
    min: "<#> (remove peaks smaller than #)"
    max: "<#> (remove peaks larger than #)"
  }
}