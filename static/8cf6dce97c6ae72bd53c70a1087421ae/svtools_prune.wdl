version 1.0

task SvtoolsPrune {
  input {
    Int? distance
    String? eval_param
    Boolean? is_sorted
    String? output_bedpe_write
    String? tempdir
  }
  command <<<
    svtools prune \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(eval_param) then ("--eval-param " +  '"' + eval_param + '"') else ""} \
      ~{true="--is-sorted" false="" is_sorted} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    distance: "max separation distance (bp) of adjacent loci in cluster [50]"
    eval_param: "evaluating parameter for choosing best bedpe in a cluster(e.g. af=AlleleFrequency default:af)"
    is_sorted: "specify if an input file is sorted. Sort with svtools bedpesort. (default=False)"
    output_bedpe_write: "output bedpe to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
}