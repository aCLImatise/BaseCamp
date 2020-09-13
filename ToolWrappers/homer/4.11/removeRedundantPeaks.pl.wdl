version 1.0

task RemoveRedundantPeakspl {
  input {
    Boolean? palindromic
    Boolean? blat
    Boolean? size
    Directory? genome
    Boolean? mask
    Boolean? ignore_strand
    String peak_file
  }
  command <<<
    removeRedundantPeaks_pl \
      ~{peak_file} \
      ~{if (palindromic) then "-palindromic" else ""} \
      ~{if (blat) then "-blat" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if (ignore_strand) then "-ignoreStrand" else ""}
  >>>
  parameter_meta {
    palindromic: "(will remove peaks that overlap >50% and are on separate strands,\\nthat are likely representative of palindromic motif recognition)"
    blat: "<#> (Where % is the percentage match to be considered redundant, default=0.33)"
    size: "<#> (size of peaks to be used for sequence similarity, default=given)"
    genome: "(genome for extracting sequence)"
    mask: "(use repeat masked sequence)"
    ignore_strand: ""
    peak_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}