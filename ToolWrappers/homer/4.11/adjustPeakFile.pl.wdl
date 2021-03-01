version 1.0

task AdjustPeakFilepl {
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
    adjustPeakFile_pl \
      ~{if (size) then "-size" else ""} \
      ~{if (r_size) then "-rsize" else ""} \
      ~{if (move) then "-move" else ""} \
      ~{if (five_p) then "-5p" else ""} \
      ~{if (three_p) then "-3p" else ""} \
      ~{if (ends) then "-ends" else ""} \
      ~{if (flip_strand) then "-flipStrand" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}