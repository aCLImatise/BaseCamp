version 1.0

task Prune {
  input {
    Int? distance
    String? eval_param
    Boolean? is_sorted
    String? output_bedpe_write
  }
  command <<<
    prune \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(eval_param) then ("--eval_param " +  '"' + eval_param + '"') else ""} \
      ~{true="--is_sorted" false="" is_sorted} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""}
  >>>
  parameter_meta {
    distance: "max separation distance (bp) of adjacent loci in cluster [50]"
    eval_param: "evaluating parameter for choosing best bedpe in a cluster(e.g. af=AlleleFrequency default:af)"
    is_sorted: "specifying if an input file is sorted (default=False) (use following command to sort: 'cat FILE | sort -k1,1V -k2,2n -k3,3n -k4,4V -k5,5n -k6,6')"
    output_bedpe_write: "Output bedpe to write (default: stdout)"
  }
}