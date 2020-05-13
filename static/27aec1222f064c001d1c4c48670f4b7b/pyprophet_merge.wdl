version 1.0

task PyprophetMerge {
  input {
    File outOut
    Boolean sameSameRun
    File templateTemplate
  }
  command <<<
    pyprophet merge \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--same_run" false="" sameSameRun} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""}
  >>>
}