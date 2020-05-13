version 1.0

task XamCoverageBins.pl {
  input {
    Boolean xXAmFile
    Boolean targetTargetFile
    Boolean outputOutputFile
    Boolean typeType
    Boolean versionVersion
    Boolean manMan
    Boolean typeType
    Boolean xXAmFiles
    Boolean targetTargetFile
    Boolean manMan
  }
  command <<<
    xam_coverage_bins.pl \
      ~{true="-xam_file" false="" xXAmFile} \
      ~{true="-target_file" false="" targetTargetFile} \
      ~{true="-output_file" false="" outputOutputFile} \
      ~{true="-type" false="" typeType} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-man" false="" manMan} \
      ~{true="-type" false="" typeType} \
      ~{true="-xam_files" false="" xXAmFiles} \
      ~{true="-target_file" false="" targetTargetFile} \
      ~{true="-man" false="" manMan}
  >>>
}