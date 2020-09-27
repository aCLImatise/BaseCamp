version 1.0

task Createpriors {
  input {
    Int? alpha
    File fast_a_file
    File wiggle_file
  }
  command <<<
    create_priors \
      ~{fast_a_file} \
      ~{wiggle_file} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""}
  >>>
  parameter_meta {
    alpha: "(default 1.0)\\n--beta <double> (default 10000.0)\\n--num-bins <int> (default 100)\\n--o <output dir> (default=createpriors_out)\\n--oc <output dir> (default=createpriors_out)\\n--parse-genomic-coord\\n--psp\\n--verbosity [1|2|3|4] (default 2)\\n--version\\n"
    fast_a_file: ""
    wiggle_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}