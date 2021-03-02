version 1.0

task SvtoolsPrune {
  input {
    Int? distance
    String? eval_param
    Boolean? is_sorted
    String? output_bedpe_write
    File? tempdir
    String stdin_dot
  }
  command <<<
    svtools prune \
      ~{stdin_dot} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(eval_param) then ("--eval-param " +  '"' + eval_param + '"') else ""} \
      ~{if (is_sorted) then "--is-sorted" else ""} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distance: "max separation distance (bp) of adjacent loci in\\ncluster [50]"
    eval_param: "evaluating parameter for choosing best bedpe in a\\ncluster(e.g. af=AlleleFrequency default:af)"
    is_sorted: "specify if an input file is sorted. Sort with svtools\\nbedpesort. (default=False)"
    output_bedpe_write: "output bedpe to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
    stdin_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}