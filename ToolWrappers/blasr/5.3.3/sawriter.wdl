version 1.0

task Sawriter {
  input {
    Int? blt
    Boolean? four_bit
    Boolean? larsson
    Boolean? ma_my
    Boolean? kark
    Boolean? ma_fe
    Boolean? welter
    Int? welterweight
    Boolean? kar
    Boolean? man_my
    String or
  }
  command <<<
    sawriter \
      ~{or} \
      ~{if defined(blt) then ("-blt " +  '"' + blt + '"') else ""} \
      ~{if (four_bit) then "-4bit" else ""} \
      ~{if (larsson) then "-larsson" else ""} \
      ~{if (ma_my) then "-mamy" else ""} \
      ~{if (kark) then "-kark" else ""} \
      ~{if (ma_fe) then "-mafe" else ""} \
      ~{if (welter) then "-welter" else ""} \
      ~{if defined(welterweight) then ("-welterweight " +  '"' + welterweight + '"') else ""} \
      ~{if (kar) then "-kar" else ""} \
      ~{if (man_my) then "-manmy" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blt: "Build a lookup table on prefixes of length 'p'. This speeds\\nup lookups considerably (more than the LCP table), but misses matches\\nless than p when searching."
    four_bit: "Read in (one) fasta file as a compressed sequence file."
    larsson: "(default)  Uses the method of Larsson and Sadakane to build the array."
    ma_my: "Uses the method of MAnber and MYers to build the array (slower than larsson,\\nand produces the same result. This is mainly for double checking\\nthe correctness of larsson)."
    kark: "Use Karkkainen DS3 method for building the suffix array.  This will probably be more\\nslow than larsson, but takes only an extra N/(sqrt 3) extra space."
    ma_fe: "(disabled for now!) Use the lightweight construction algorithm from Manzini and Ferragina"
    welter: "Use lightweight (sort of light) suffix array construction.  This is a bit more slow than\\nnormal larsson."
    welterweight: "use a difference cover of size N for building the suffix array.  Valid values are 7,32,64,111, and 2281."
    kar: ""
    man_my: ""
    or: "sawriter fastaIn  (writes to fastIn.sa)."
  }
  output {
    File out_stdout = stdout()
  }
}