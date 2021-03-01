version 1.0

task Obminimize {
  input {
    Float? set_criteria_defaulte
    Boolean? cg
    Boolean? sd
    Boolean? newton
    String? ff
    Int? specify_maximum_numer
    Boolean? cut
    Float? rv_dw
    Float? rele
    Int? pf
    File filename
  }
  command <<<
    obminimize \
      ~{filename} \
      ~{if defined(set_criteria_defaulte) then ("-c " +  '"' + set_criteria_defaulte + '"') else ""} \
      ~{if (cg) then "-cg" else ""} \
      ~{if (sd) then "-sd" else ""} \
      ~{if (newton) then "-newton" else ""} \
      ~{if defined(ff) then ("-ff " +  '"' + ff + '"') else ""} \
      ~{if defined(specify_maximum_numer) then ("-n " +  '"' + specify_maximum_numer + '"') else ""} \
      ~{if (cut) then "-cut" else ""} \
      ~{if defined(rv_dw) then ("-rvdw " +  '"' + rv_dw + '"') else ""} \
      ~{if defined(rele) then ("-rele " +  '"' + rele + '"') else ""} \
      ~{if defined(pf) then ("-pf " +  '"' + pf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_criteria_defaulte: "set convergence criteria (default=1e-6)"
    cg: "use conjugate gradients algorithm (default)"
    sd: "use steepest descent algorithm"
    newton: "use Newton2Num linesearch (default=Simple)"
    ff: "select a forcefield:"
    specify_maximum_numer: "specify the maximum numer of steps (default=2500)"
    cut: "use cut-off (default=don't use cut-off)"
    rv_dw: "specify the VDW cut-off distance (default=6.0)"
    rele: "specify the Electrostatic cut-off distance (default=10.0)"
    pf: "specify the frequency to update the non-bonded pairs (default=10)"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}