version 1.0

task Gtf2bedpl {
  input {
    String? item_rgb
    Boolean? include_stop_in_cds
  }
  command <<<
    gtf2bed_pl \
      ~{if defined(item_rgb) then ("--itemRgb " +  '"' + item_rgb + '"') else ""} \
      ~{if (include_stop_in_cds) then "--includeStopInCDS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    item_rgb: "a string s encoding the RGB value of the form R,G,B (default 0,0,225)."
    include_stop_in_cds: "include stop codon into the coding sequence (default off)"
  }
  output {
    File out_stdout = stdout()
  }
}