version 1.0

task ChromSizespl {
  input {
    Int? exist_usrlocalbinchromsizespl_line
  }
  command <<<
    chrom_sizes_pl \
      ~{if defined(exist_usrlocalbinchromsizespl_line) then ("-h " +  '"' + exist_usrlocalbinchromsizespl_line + '"') else ""}
  >>>
  parameter_meta {
    exist_usrlocalbinchromsizespl_line: "not exist at /usr/local/bin/chrom_sizes.pl line 8."
  }
  output {
    File out_stdout = stdout()
  }
}