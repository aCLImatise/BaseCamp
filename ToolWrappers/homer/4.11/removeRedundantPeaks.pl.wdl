version 1.0

task RemoveRedundantPeakspl {
  input {
    Boolean? palindromic
    Boolean? blat
    String peak_file
  }
  command <<<
    removeRedundantPeaks_pl \
      ~{peak_file} \
      ~{if (palindromic) then "-palindromic" else ""} \
      ~{if (blat) then "-blat" else ""}
  >>>
  parameter_meta {
    palindromic: "(will remove peaks that overlap >50% and are on separate strands,\\nthat are likely representative of palindromic motif recognition)"
    blat: "<#> (Where % is the percentage match to be considered redundant, default=0.33)\\n-size <#> (size of peaks to be used for sequence similarity, default=given)\\n-genome <directory of FASTA files> (genome for extracting sequence)\\n-mask (use repeat masked sequence)\\n-ignoreStrand\\n"
    peak_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}