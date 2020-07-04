version 1.0

task Mglobminimize {
  input {
    String? set_convergence_criteria
    Boolean? cg
    Boolean? sd
    Boolean? newton
    String? ff
    String? specify_maximum_numer
    Boolean? cut
    String? rv_dw
    String? rele
    String? pf
    String ob_minimize
    File filename
  }
  command <<<
    mglobminimize \
      ~{ob_minimize} \
      ~{filename} \
      ~{if defined(set_convergence_criteria) then ("-c " +  '"' + set_convergence_criteria + '"') else ""} \
      ~{true="-cg" false="" cg} \
      ~{true="-sd" false="" sd} \
      ~{true="-newton" false="" newton} \
      ~{if defined(ff) then ("-ff " +  '"' + ff + '"') else ""} \
      ~{if defined(specify_maximum_numer) then ("-n " +  '"' + specify_maximum_numer + '"') else ""} \
      ~{true="-cut" false="" cut} \
      ~{if defined(rv_dw) then ("-rvdw " +  '"' + rv_dw + '"') else ""} \
      ~{if defined(rele) then ("-rele " +  '"' + rele + '"') else ""} \
      ~{if defined(pf) then ("-pf " +  '"' + pf + '"') else ""}
  >>>
  parameter_meta {
    set_convergence_criteria: "set convergence criteria (default=1e-6)"
    cg: "use conjugate gradients algorithm (default)"
    sd: "use steepest descent algorithm"
    newton: "use Newton2Num linesearch (default=Simple)"
    ff: "select a forcefield:"
    specify_maximum_numer: "specify the maximum numer of steps (default=2500)"
    cut: "use cut-off (default=don't use cut-off)"
    rv_dw: "specify the VDW cut-off distance (default=6.0)"
    rele: "specify the Electrostatic cut-off distance (default=10.0)"
    pf: "specify the frequency to update the non-bonded pairs (default=10)"
    ob_minimize: ""
    filename: ""
  }
}