version 1.0

task Amos2ace {
  input {
    String? location_of_chromatograms
    Directory? location_phd_directory
  }
  command <<<
    amos2ace \
      ~{if defined(location_of_chromatograms) then ("-c " +  '"' + location_of_chromatograms + '"') else ""} \
      ~{if defined(location_phd_directory) then ("-p " +  '"' + location_phd_directory + '"') else ""}
  >>>
  parameter_meta {
    location_of_chromatograms: "Location of the chromatograms"
    location_phd_directory: "Location of the PHD directory"
  }
  output {
    File out_stdout = stdout()
  }
}