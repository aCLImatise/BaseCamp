version 1.0

task FilterMatrixByCoord.py {
  input {
    String inInMatrix
    String outOutPrefix
    String inInCoords
    String actionAction
  }
  command <<<
    filter_matrix_by_coord.py \
      ~{if defined(inInMatrix) then ("--in_matrix " +  '"' + inInMatrix + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out_prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(inInCoords) then ("--in_coords " +  '"' + inInCoords + '"') else ""} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""}
  >>>
}