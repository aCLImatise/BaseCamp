version 1.0

task Pytleap {
  input {
    File? prot
    File? pep
    File? lig
    File? cpl_x
    File? ppi
    Int? chrg
    String? rad
    File? di_sul
    File? ss_pep
    Int? p_frc
    Int? l_frc
    File? ctrl
  }
  command <<<
    pytleap \
      ~{if defined(prot) then ("--prot " +  '"' + prot + '"') else ""} \
      ~{if defined(pep) then ("--pep " +  '"' + pep + '"') else ""} \
      ~{if defined(lig) then ("--lig " +  '"' + lig + '"') else ""} \
      ~{if defined(cpl_x) then ("--cplx " +  '"' + cpl_x + '"') else ""} \
      ~{if defined(ppi) then ("--ppi " +  '"' + ppi + '"') else ""} \
      ~{if defined(chrg) then ("--chrg " +  '"' + chrg + '"') else ""} \
      ~{if defined(rad) then ("--rad " +  '"' + rad + '"') else ""} \
      ~{if defined(di_sul) then ("--disul " +  '"' + di_sul + '"') else ""} \
      ~{if defined(ss_pep) then ("--sspep " +  '"' + ss_pep + '"') else ""} \
      ~{if defined(p_frc) then ("--pfrc " +  '"' + p_frc + '"') else ""} \
      ~{if defined(l_frc) then ("--lfrc " +  '"' + l_frc + '"') else ""} \
      ~{if defined(ctrl) then ("--ctrl " +  '"' + ctrl + '"') else ""}
  >>>
  parameter_meta {
    prot: "protein PDB file                       (no default)"
    pep: "peptide PDB file                       (no default)"
    lig: "ligand MDL (SDF) file                  (no default)"
    cpl_x: "name for complex files                 (no default)"
    ppi: "name for protein-peptide complex files (no default)"
    chrg: "formal charge on ligand                (default: 0)"
    rad: "radius type for GB                     (default: mbondi)"
    di_sul: "file with S-S definitions in protein   (no default)"
    ss_pep: "file with S-S definitions in peptide   (no default)"
    p_frc: "protein (peptide) force field          (default: ff14SB)"
    l_frc: "ligand force field                     (default: gaff2)"
    ctrl: "leap command file name                 (default: leap.cmd)"
  }
  output {
    File out_stdout = stdout()
  }
}