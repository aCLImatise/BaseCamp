version 1.0

task FragsInVars {
  input {
    String? var_scf
    String? frg_scf
  }
  command <<<
    fragsInVars \
      ~{if defined(var_scf) then ("-varscf " +  '"' + var_scf + '"') else ""} \
      ~{if defined(frg_scf) then ("-frgscf " +  '"' + frg_scf + '"') else ""}
  >>>
  parameter_meta {
    var_scf: ""
    frg_scf: ""
  }
  output {
    File out_stdout = stdout()
  }
}