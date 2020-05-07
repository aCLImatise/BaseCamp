version 1.0

task FilterMatrixByGenome.py {
  input {
    String inInMatrix
    String outOutPrefix
    String genomesGenomes
    String actionsActions
  }
  command <<<
    filter_matrix_by_genome.py \
      ~{if defined(inInMatrix) then ("--in_matrix " +  '"' + inInMatrix + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out_prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(genomesGenomes) then ("--genomes " +  '"' + genomesGenomes + '"') else ""} \
      ~{if defined(actionsActions) then ("--actions " +  '"' + actionsActions + '"') else ""}
  >>>
}