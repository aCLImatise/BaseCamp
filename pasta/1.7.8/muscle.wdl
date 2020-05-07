version 1.0

task Muscle {
  input {
    String inIn
    String outOut
    Boolean diagsDiags
    String maxiterMaxiterS
    String maxMaxHours
    Boolean htmlHtml
    Boolean msfMsf
    Boolean clwClw
    Boolean clClWstrict
    Boolean logLog
    Boolean quietQuiet
    Boolean versionVersion
  }
  command <<<
    muscle \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-diags" false="" diagsDiags} \
      ~{if defined(maxiterMaxiterS) then ("-maxiters " +  '"' + maxiterMaxiterS + '"') else ""} \
      ~{if defined(maxMaxHours) then ("-maxhours " +  '"' + maxMaxHours + '"') else ""} \
      ~{true="-html" false="" htmlHtml} \
      ~{true="-msf" false="" msfMsf} \
      ~{true="-clw" false="" clwClw} \
      ~{true="-clwstrict" false="" clClWstrict} \
      ~{true="-log" false="" logLog} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-version" false="" versionVersion}
  >>>
}