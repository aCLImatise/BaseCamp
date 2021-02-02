version 1.0

task Pymdpbsa {
  input {
    String? proj
    File? t_raj
    File? cprm
    File? lprm
    File? r_prm
    String? lig
    Int? start
    Int? stop
    Int? step
    Int? solv
    Boolean? clean
  }
  command <<<
    pymdpbsa \
      ~{if defined(proj) then ("--proj " +  '"' + proj + '"') else ""} \
      ~{if defined(t_raj) then ("--traj " +  '"' + t_raj + '"') else ""} \
      ~{if defined(cprm) then ("--cprm " +  '"' + cprm + '"') else ""} \
      ~{if defined(lprm) then ("--lprm " +  '"' + lprm + '"') else ""} \
      ~{if defined(r_prm) then ("--rprm " +  '"' + r_prm + '"') else ""} \
      ~{if defined(lig) then ("--lig " +  '"' + lig + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(solv) then ("--solv " +  '"' + solv + '"') else ""} \
      ~{if (clean) then "--clean" else ""}
  >>>
  parameter_meta {
    proj: "global project name"
    t_raj: "MD trajectory file               (default: traj.binpos)"
    cprm: "complex prmtop file              (default: com.prm)"
    lprm: "ligand only prmtop file          (default: lig.prm)"
    r_prm: "receptor only prmtop file        (default: rec.prm)"
    lig: "residue name of ligand           (default: LIG)"
    start: "first MD frame to be used        (default: 1)"
    stop: "last MD frame to be used         (default: 1)"
    step: "use every [step] MD frame        (default: 1)"
    solv: "0 for no solvation term (eps=r)\\n1, 2, 5, 7, or 8 for GBSA\\n3 for PBSA\\n4 for PBSA/dispersion            (default: 1)"
    clean: "clean up temporary files         (default: no clean)"
  }
  output {
    File out_stdout = stdout()
  }
}