version 1.0

task Peakaboo {
  input {
    Boolean? arg_specify_text
    Boolean? arg_set_directory
    Boolean? arg_set_extension
    String? scan_begin
    String? scan_end
    String? mz_low
    String? mz_high
    File? files
  }
  command <<<
    peakaboo \
      ~{files} \
      ~{true="-f" false="" arg_specify_text} \
      ~{true="-o" false="" arg_set_directory} \
      ~{true="-e" false="" arg_set_extension} \
      ~{if defined(scan_begin) then ("--scanBegin " +  '"' + scan_begin + '"') else ""} \
      ~{if defined(scan_end) then ("--scanEnd " +  '"' + scan_end + '"') else ""} \
      ~{if defined(mz_low) then ("--mzLow " +  '"' + mz_low + '"') else ""} \
      ~{if defined(mz_high) then ("--mzHigh " +  '"' + mz_high + '"') else ""}
  >>>
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
}