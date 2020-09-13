version 1.0

task IntrahostpyTabfileRename {
  input {
    Int? col_idx
    String? loglevel
    String in_file
    String map_file
    String outfile
  }
  command <<<
    intrahost_py tabfile_rename \
      ~{in_file} \
      ~{map_file} \
      ~{outfile} \
      ~{if defined(col_idx) then ("--col_idx " +  '"' + col_idx + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  parameter_meta {
    col_idx: "Which column number to replace (0-based index).\\n[default: 0]"
    loglevel: "Verboseness of output. [default: DEBUG]"
    in_file: "Input flat file"
    map_file: "Map file. Two-column headerless file that maps input\\nvalues to output values. This script will error if\\nthere are values in inFile that do not exist in\\nmapFile."
    outfile: "Output flat file"
  }
  output {
    File out_stdout = stdout()
  }
}