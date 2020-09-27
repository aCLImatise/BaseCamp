version 1.0

task CgpVCFSplitpl {
  input {
    Boolean? line_count
    Boolean? no_head
    Boolean? file
    Boolean? outfile
    Boolean? skip_validate
    String? f
    Int? l
  }
  command <<<
    cgpVCFSplit_pl \
      ~{if (line_count) then "--linecount" else ""} \
      ~{if (no_head) then "--nohead" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if (outfile) then "--outFile" else ""} \
      ~{if (skip_validate) then "--skip-validate" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    line_count: "(-l)       The number of mutant lines to put in each split file."
    no_head: "(-n)       Switch to ignore the header of the file when creating split files."
    file: "(-i)       The file to split."
    outfile: "(-o)       The base output file name will be <fileName>.[1-n] where n is the number of files created by the split."
    skip_validate: "(-s)   Skip the validation step."
    f: ""
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}