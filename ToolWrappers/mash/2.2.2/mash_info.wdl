version 1.0

task MashInfo {
  input {
    Boolean? only_show_header
    String? cdot
    Boolean? show_count_histograms
    String option
  }
  command <<<
    mash info \
      ~{option} \
      ~{if (only_show_header) then "-H" else ""} \
      ~{if defined(cdot) then ("-c. " +  '"' + cdot + '"') else ""} \
      ~{if (show_count_histograms) then "-c" else ""}
  >>>
  parameter_meta {
    only_show_header: "Only show header info. Do not list each sketch. Incompatible with -d,"
    cdot: ""
    show_count_histograms: "Show hash count histograms for each sketch. Incompatible with -d, -H\\nand -t."
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}