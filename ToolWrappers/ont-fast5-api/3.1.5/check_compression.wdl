version 1.0

task CheckCompression {
  input {
    File? input_path
    Boolean? check_all_reads
    Boolean? recursive
    String files
  }
  command <<<
    check_compression \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if (check_all_reads) then "--check_all_reads" else ""} \
      ~{if (recursive) then "--recursive" else ""}
  >>>
  parameter_meta {
    input_path: "Path to Fast5 file or directory of Fast5 files"
    check_all_reads: "Check all reads in a file individually (default: check\\nonly the first read)"
    recursive: "Search recursively through folders for MultiRead fast5"
    files: "--ignore_symlinks     Ignore symlinks when searching recursively for fast5"
  }
  output {
    File out_stdout = stdout()
  }
}