version 1.0

task BlibBuild {
  input {
    Boolean? overwrite_library_append
    Boolean? filename_read_file
    Boolean? result_file_names
    Boolean? ignore_peptides_unmodified
    Boolean? ignore_peptides_modified
    Boolean? use_one_place
    Boolean? file_size_size
    Int? score_threshold_included
    Boolean? level_level_stderr
    Boolean? write_status_warning
    Int? sqlite_cache_size
    Int? zlib_compression_level
    File? lsid_library_id
    String? lsid_authority_default
    File? specify_path_xml
    Float? specify_pusher_interval
    Boolean? document_blib_format
  }
  command <<<
    BlibBuild \
      ~{if (overwrite_library_append) then "-o" else ""} \
      ~{if (filename_read_file) then "-S" else ""} \
      ~{if (result_file_names) then "-s" else ""} \
      ~{if (ignore_peptides_unmodified) then "-u" else ""} \
      ~{if (ignore_peptides_modified) then "-U" else ""} \
      ~{if (use_one_place) then "-H" else ""} \
      ~{if (file_size_size) then "-C" else ""} \
      ~{if defined(score_threshold_included) then ("-c " +  '"' + score_threshold_included + '"') else ""} \
      ~{if (level_level_stderr) then "-v" else ""} \
      ~{if (write_status_warning) then "-L" else ""} \
      ~{if defined(sqlite_cache_size) then ("-m " +  '"' + sqlite_cache_size + '"') else ""} \
      ~{if defined(zlib_compression_level) then ("-l " +  '"' + zlib_compression_level + '"') else ""} \
      ~{if defined(lsid_library_id) then ("-i " +  '"' + lsid_library_id + '"') else ""} \
      ~{if defined(lsid_authority_default) then ("-a " +  '"' + lsid_authority_default + '"') else ""} \
      ~{if defined(specify_path_xml) then ("-x " +  '"' + specify_path_xml + '"') else ""} \
      ~{if defined(specify_pusher_interval) then ("-P " +  '"' + specify_pusher_interval + '"') else ""} \
      ~{if (document_blib_format) then "-d" else ""}
  >>>
  parameter_meta {
    overwrite_library_append: "Overwrite existing library. Default append."
    filename_read_file: "<filename>    Read from file as though it were stdin."
    result_file_names: "Result file names from stdin. e.g. ls *sqt | BlibBuild -s new.blib."
    ignore_peptides_unmodified: "Ignore peptides except those with the unmodified sequences from stdin."
    ignore_peptides_modified: "Ignore peptides except those with the modified sequences from stdin."
    use_one_place: "Use more than one decimal place when describing mass modifications."
    file_size_size: "<file size>   Minimum file size required to use caching for .dat files.  Specifiy units as B,K,G or M.  Default 800M."
    score_threshold_included: "Score threshold (0-1) for PSMs to be included in library. Higher threshold is more exclusive."
    level_level_stderr: "<level>       Level of output to stderr (silent, error, status, warn).  Default status."
    write_status_warning: "Write status and warning messages to log file."
    sqlite_cache_size: "SQLite memory cache size in Megs. Default 250M."
    zlib_compression_level: "ZLib compression level (0-?). Default 3."
    lsid_library_id: "LSID library ID. Default uses file name."
    lsid_authority_default: "LSID authority. Default proteome.gs.washington.edu."
    specify_path_xml: "Specify the path of XML modifications file for parsing MaxQuant files."
    specify_pusher_interval: "Specify pusher interval for Waters final_fragment.csv files."
    document_blib_format: "[<filename>]   Document the .blib format by writing SQLite commands to a file, or stdout if no filename is given."
  }
  output {
    File out_stdout = stdout()
  }
}