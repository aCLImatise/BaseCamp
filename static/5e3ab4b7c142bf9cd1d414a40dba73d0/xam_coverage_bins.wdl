version 1.0

task XamCoverageBins.pl {
  input {
    Boolean? x_am_file
    Boolean? target_file
    Boolean? output_file
    Boolean? type
    Boolean? version
    Boolean? man
    Boolean? x_am_files
  }
  command <<<
    xam_coverage_bins.pl \
      ~{true="-xam_file" false="" x_am_file} \
      ~{true="-target_file" false="" target_file} \
      ~{true="-output_file" false="" output_file} \
      ~{true="-type" false="" type} \
      ~{true="-version" false="" version} \
      ~{true="-man" false="" man} \
      ~{true="-xam_files" false="" x_am_files}
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
}