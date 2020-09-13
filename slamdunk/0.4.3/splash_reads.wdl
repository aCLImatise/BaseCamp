version 1.0

task SplashReads {
  input {
    Directory? output_dir
    String? sample_name
    File? bed
    Int? read_length
    Int? read_number
    Int? read_coverage
    String? sequencing_error
    String? pulse
    String? chase
    String? tc_rate
  }
  command <<<
    splash reads \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(read_number) then ("--read-number " +  '"' + read_number + '"') else ""} \
      ~{if defined(read_coverage) then ("--read-coverage " +  '"' + read_coverage + '"') else ""} \
      ~{if defined(sequencing_error) then ("--sequencing-error " +  '"' + sequencing_error + '"') else ""} \
      ~{if defined(pulse) then ("--pulse " +  '"' + pulse + '"') else ""} \
      ~{if defined(chase) then ("--chase " +  '"' + chase + '"') else ""} \
      ~{if defined(tc_rate) then ("--tc-rate " +  '"' + tc_rate + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    sample_name: "Name of sample"
    bed: "BED file"
    read_length: "Read length"
    read_number: "Number of reads to simulate"
    read_coverage: "Read coverage (if read number is not specified)"
    sequencing_error: "Sequencing error"
    pulse: "Pulse in minutes"
    chase: "Chase in minutes"
    tc_rate: "T->C conversion rate\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}