version 1.0

task PmpBf {
  input {
    Boolean? hb
    String pmp
    File tree_file
    File meme_file
  }
  command <<<
    pmp_bf \
      ~{pmp} \
      ~{tree_file} \
      ~{meme_file} \
      ~{if (hb) then "--hb" else ""}
  >>>
  parameter_meta {
    hb: "--model single|average|jc|k2|f81|f84|hky|tn (default=f81)\\n--pur-pyr <float> (default=1.0)\\n--transition-transversion <float> (default=0.5)\\n--bg <float> (default=1.0)\\n--fg <float> (default=1.0)\\n--motif <id> (default=all)\\n--bfile <background> (default from motif file)\\n--pseudocount <float> (default=0.1)\\n--ustar <label>\\n--verbosity [1|2|3|4] (default 2)"
    pmp: ""
    tree_file: ""
    meme_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}