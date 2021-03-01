version 1.0

task BatchMakeHiCMatrixpl {
  input {
    Int? tag_directories_hic
    Boolean? pos
    Boolean? res
    Boolean? window
    Boolean? balance
    Boolean? stack
    Boolean? split
    Boolean? rotate
    Boolean? frac
    Boolean? cpu
  }
  command <<<
    batchMakeHiCMatrix_pl \
      ~{if defined(tag_directories_hic) then ("-d " +  '"' + tag_directories_hic + '"') else ""} \
      ~{if (pos) then "-pos" else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (balance) then "-balance" else ""} \
      ~{if (stack) then "-stack" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (rotate) then "-rotate" else ""} \
      ~{if (frac) then "-frac" else ""} \
      ~{if (cpu) then "-cpu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tag_directories_hic: "[HiC TagDir2] ... (Tag Directories of Hi-C experiments to visulize)"
    pos: "<chr:start-end> (genomic position to visualize)"
    res: "<#> (resolution of step size to use for analysis)"
    window: "<#> (resolution of window size for aggregating interactions)"
    balance: "(balance resulting Hi-C matrix)"
    stack: "(Stacks matricies on top of one another i.e. square and symetric, non-rotated, default)"
    split: "(Creates split matricies i.e. square, non-symetric, non-rotated)\\n(printed in order of directories: 1\\2 3\\4 5\\6 ...)"
    rotate: "(Rotates matrices, default)"
    frac: "<#> (fraction of square matrix to consider for rotating, default: 0.333)"
    cpu: "(number of different processes to use, def: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}