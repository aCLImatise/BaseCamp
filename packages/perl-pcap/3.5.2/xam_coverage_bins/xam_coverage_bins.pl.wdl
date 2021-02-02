version 1.0

task XamCoverageBinspl {
  input {
    Boolean? x_am_file
    Boolean? target_file
    File? output_file
    Boolean? type
    Boolean? version
    Boolean? man
    Boolean? x_am_files
  }
  command <<<
    xam_coverage_bins_pl \
      ~{if (x_am_file) then "-xam_file" else ""} \
      ~{if (target_file) then "-target_file" else ""} \
      ~{if (output_file) then "-output_file" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (x_am_files) then "-xam_files" else ""}
  >>>
  parameter_meta {
    x_am_file: "-f    bam|cram file to check coverage."
    target_file: "-r    bed|gff3 file of targets."
    output_file: "-o    file to write JSON string output of coverage"
    type: "-t    Type of target file provided [bed|gff3]"
    version: "-v   Print version and exit."
    man: "-m   Full documentation."
    x_am_files: "bam|cram file to check coverage."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}