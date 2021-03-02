version 1.0

task Peakaboo {
  input {
    Boolean? arg_specify_text
    Directory? arg_set_directory
    Boolean? arg_set_extension
    Int? scan_begin
    Int? scan_end
    Int? mz_low
    Int? mz_high
    String? files
  }
  command <<<
    peakaboo \
      ~{files} \
      ~{if (arg_specify_text) then "-f" else ""} \
      ~{if (arg_set_directory) then "-o" else ""} \
      ~{if (arg_set_extension) then "-e" else ""} \
      ~{if defined(scan_begin) then ("--scanBegin " +  '"' + scan_begin + '"') else ""} \
      ~{if defined(scan_end) then ("--scanEnd " +  '"' + scan_end + '"') else ""} \
      ~{if defined(mz_low) then ("--mzLow " +  '"' + mz_low + '"') else ""} \
      ~{if defined(mz_high) then ("--mzHigh " +  '"' + mz_high + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_specify_text: "[ --filelist ] arg       : specify text file containing filenames"
    arg_set_directory: "[ --outdir ] arg (=.)    : set output directory"
    arg_set_extension: "[ --ext ] arg (=.peaks)  : set extension for output files"
    scan_begin: "(=1)        : set first scan"
    scan_end: "(=2147483647) : set last scan"
    mz_low: "(=200)          : set mz low cutoff"
    mz_high: "(=2000)        : set mz high cutoff"
    files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_set_directory = "${in_arg_set_directory}"
  }
}