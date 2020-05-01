version 1.0

task Nice {
  input {
    String adjustmentAdjustment
  }
  command <<<
    nice \
      ~{if defined(adjustmentAdjustment) then ("--adjustment " +  '"' + adjustmentAdjustment + '"') else ""}
  >>>
}