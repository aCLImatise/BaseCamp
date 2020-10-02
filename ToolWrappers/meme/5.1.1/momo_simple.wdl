version 1.0

task MomoSimple {
  input {
    Int? default_momooutoc_output
    File ptm_file
  }
  command <<<
    momo simple \
      ~{ptm_file} \
      ~{if defined(default_momooutoc_output) then ("--o " +  '"' + default_momooutoc_output + '"') else ""}
  >>>
  parameter_meta {
    default_momooutoc_output: "(default: momo_out)\\n--oc <output dir> (default: momo_out)\\n--psm-type comet|ms-gf+|tide|percolator\\n--sequence-column [column name]\\n--width [positive odd integer] (default: 7)\\n--protein-database <protein sequence file> (default: None)\\n--filter [field],lt|le|eq|ge|gt,[threshold] (default: no filter)\\n--remove-unknowns T|F (default: F)\\n--eliminate-repeats [positive odd integer or 0 for no elimination] (default: width)\\n--min-occurrences [non-negative] (default: 5)\\n--single-motif-per-mass\\n--hash-fasta [positive integer or 0 for linear search] (default: 0)\\n--verbosity 1|2|3|4|5 (default: 2)\\n--version (print the version and exit)\\n"
    ptm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}