version 1.0

task OrgMentalisSecuritydll {
  command <<<
    Org_Mentalis_Security_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}