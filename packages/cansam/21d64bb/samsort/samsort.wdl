version 1.0

task Samsort {
  input {
    Boolean? write_output_bam
    Boolean? check_already_sorted
    String? compare_records_according
    Boolean? merge_alreadysorted_files
    File? write_output_file
    Int? use_size_amount
    String? write_temporary_files
    Int? compress_output_level
    Boolean? bcm
    String location
    String qname
  }
  command <<<
    samsort \
      ~{location} \
      ~{qname} \
      ~{if (write_output_bam) then "-b" else ""} \
      ~{if (check_already_sorted) then "-c" else ""} \
      ~{if defined(compare_records_according) then ("-f " +  '"' + compare_records_according + '"') else ""} \
      ~{if (merge_alreadysorted_files) then "-m" else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(use_size_amount) then ("-S " +  '"' + use_size_amount + '"') else ""} \
      ~{if defined(write_temporary_files) then ("-T " +  '"' + write_temporary_files + '"') else ""} \
      ~{if defined(compress_output_level) then ("-z " +  '"' + compress_output_level + '"') else ""} \
      ~{if (bcm) then "-bcm" else ""}
  >>>
  parameter_meta {
    write_output_bam: "Write output in BAM format"
    check_already_sorted: "Check whether input is already sorted"
    compare_records_according: "Compare records according to comparison function CMP [location]"
    merge_alreadysorted_files: "Merge already-sorted files"
    write_output_file: "Write output to FILE rather than standard output"
    use_size_amount: "Use SIZE amount of in-memory working space"
    write_temporary_files: "Write temporary files to DIR [$TMPDIR or /tmp]"
    compress_output_level: "Compress output at level NUMBER [SAM: no compression; BAM: 6]"
    bcm: ""
    location: "Order by chromosome then position (and then read name)"
    qname: "Order by read (query) name then first/second ordering flags"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}