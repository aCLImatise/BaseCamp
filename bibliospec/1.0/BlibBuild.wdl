version 1.0

task BlibBuild {
  input {
    Boolean? overwrite_existing_library
    Boolean? filename_read_file
    Boolean? result_file_names
    Boolean? ignore_peptides_unmodified
    Boolean? ignore_peptides_modified
    Boolean? use_one_place
    Boolean? file_size_minimum
    String? score_threshold_included
    Boolean? level_level_output
    Boolean? write_status_warning
    Int? sqlite_memory_cache
    String? zlib_compression_level
    String? lsid_library_id
    String? lsid_authority_default
    File? specify_path_xml
    Float? specify_pusher_interval
    Boolean? document_blib_format
  }
  command <<<
    BlibBuild \
      ~{true="-o" false="" overwrite_existing_library} \
      ~{true="-S" false="" filename_read_file} \
      ~{true="-s" false="" result_file_names} \
      ~{true="-u" false="" ignore_peptides_unmodified} \
      ~{true="-U" false="" ignore_peptides_modified} \
      ~{true="-H" false="" use_one_place} \
      ~{true="-C" false="" file_size_minimum} \
      ~{if defined(score_threshold_included) then ("-c " +  '"' + score_threshold_included + '"') else ""} \
      ~{true="-v" false="" level_level_output} \
      ~{true="-L" false="" write_status_warning} \
      ~{if defined(sqlite_memory_cache) then ("-m " +  '"' + sqlite_memory_cache + '"') else ""} \
      ~{if defined(zlib_compression_level) then ("-l " +  '"' + zlib_compression_level + '"') else ""} \
      ~{if defined(lsid_library_id) then ("-i " +  '"' + lsid_library_id + '"') else ""} \
      ~{if defined(lsid_authority_default) then ("-a " +  '"' + lsid_authority_default + '"') else ""} \
      ~{if defined(specify_path_xml) then ("-x " +  '"' + specify_path_xml + '"') else ""} \
      ~{if defined(specify_pusher_interval) then ("-P " +  '"' + specify_pusher_interval + '"') else ""} \
      ~{true="-d" false="" document_blib_format}
  >>>
  parameter_meta {
    overwrite_existing_library: "Overwrite existing library. Default append."
    filename_read_file: "<filename>    Read from file as though it were stdin."
    result_file_names: "Result file names from stdin. e.g. ls *sqt | BlibBuild -s new.blib."
    ignore_peptides_unmodified: "Ignore peptides except those with the unmodified sequences from stdin."
    ignore_peptides_modified: "Ignore peptides except those with the modified sequences from stdin."
    use_one_place: "Use more than one decimal place when describing mass modifications."
    file_size_minimum: "<file size>   Minimum file size required to use caching for .dat files.  Specifiy units as B,K,G or M.  Default 800M."
    score_threshold_included: "Score threshold (0-1) for PSMs to be included in library. Higher threshold is more exclusive."
    level_level_output: "<level>       Level of output to stderr (silent, error, status, warn).  Default status."
    write_status_warning: "Write status and warning messages to log file."
    sqlite_memory_cache: "SQLite memory cache size in Megs. Default 250M."
    zlib_compression_level: "ZLib compression level (0-?). Default 3."
    lsid_library_id: "LSID library ID. Default uses file name."
    lsid_authority_default: "LSID authority. Default proteome.gs.washington.edu."
    specify_path_xml: "Specify the path of XML modifications file for parsing MaxQuant files."
    specify_pusher_interval: "Specify pusher interval for Waters final_fragment.csv files."
    document_blib_format: "[<filename>]   Document the .blib format by writing SQLite commands to a file, or stdout if no filename is given."
  }
}