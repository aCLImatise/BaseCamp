version 1.0

task SplashPreparebed {
  input {
    String? bed
    String? read_length
    String? output_dir
  }
  command <<<
    splash preparebed \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    bed: "BED file"
    read_length: "All UTRs short than the read length are removed."
    output_dir: "Output directory for mapped BAM files."
  }
}