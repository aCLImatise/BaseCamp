version 1.0

task Ptargrep {
  input {
    Boolean? basename
    Boolean? ignore_case
    Boolean? list_only
    Boolean? verbose
  }
  command <<<
    ptargrep \
      ~{if (basename) then "--basename" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (list_only) then "--list-only" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    basename: "(alias -b)\\nWhen matching files are extracted, ignore the directory path from\\nthe archive and write to the current directory using the basename of\\nthe file from the archive. Beware: if two matching files in the\\narchive have the same basename, the second file extracted will\\noverwrite the first."
    ignore_case: "(alias -i)\\nMake pattern matching case-insensitive."
    list_only: "(alias -l)\\nPrint the pathname of each matching file from the archive to STDOUT.\\nWithout this option, the default behaviour is to extract each\\nmatching file."
    verbose: "(alias -v)\\nLog debugging info to STDERR."
  }
  output {
    File out_stdout = stdout()
  }
}