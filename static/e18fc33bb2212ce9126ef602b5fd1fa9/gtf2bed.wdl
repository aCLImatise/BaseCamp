version 1.0

task Gtf2bed.pl {
  input {
    String? item_rgb
    Boolean? include_stop_in_cds
  }
  command <<<
    gtf2bed.pl \
      ~{if defined(item_rgb) then ("--itemRgb " +  '"' + item_rgb + '"') else ""} \
      ~{true="--includeStopInCDS" false="" include_stop_in_cds}
  >>>
  parameter_meta {
    item_rgb: "a string s encoding the RGB value of the form R,G,B (default 0,0,225)."
    include_stop_in_cds: "include stop codon into the coding sequence (default off)"
  }
}