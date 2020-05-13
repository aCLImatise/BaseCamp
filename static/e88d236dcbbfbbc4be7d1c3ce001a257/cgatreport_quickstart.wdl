version 1.0

task CgatreportQuickstart {
  input {
    String destDest
  }
  command <<<
    cgatreport-quickstart \
      ~{if defined(destDest) then ("--dest " +  '"' + destDest + '"') else ""}
  >>>
}