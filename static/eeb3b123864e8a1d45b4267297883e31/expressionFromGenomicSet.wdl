version 1.0

task ExpressionFromGenomicSet.py {
  input {
    String distDist
  }
  command <<<
    expressionFromGenomicSet.py \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""}
  >>>
}