version 1.0

task AnteMMPBSApy {
  input {
    String? prm_top
    File? complex_prm_top
    File? receptor_prm_top
    File? ligand_prm_top
    File? strip_mask
    String? receptor_mask
    String? ligand_mask
    Int? radii
  }
  command <<<
    ante_MMPBSA_py \
      ~{if defined(prm_top) then ("--prmtop " +  '"' + prm_top + '"') else ""} \
      ~{if defined(complex_prm_top) then ("--complex-prmtop " +  '"' + complex_prm_top + '"') else ""} \
      ~{if defined(receptor_prm_top) then ("--receptor-prmtop " +  '"' + receptor_prm_top + '"') else ""} \
      ~{if defined(ligand_prm_top) then ("--ligand-prmtop " +  '"' + ligand_prm_top + '"') else ""} \
      ~{if defined(strip_mask) then ("--strip-mask " +  '"' + strip_mask + '"') else ""} \
      ~{if defined(receptor_mask) then ("--receptor-mask " +  '"' + receptor_mask + '"') else ""} \
      ~{if defined(ligand_mask) then ("--ligand-mask " +  '"' + ligand_mask + '"') else ""} \
      ~{if defined(radii) then ("--radii " +  '"' + radii + '"') else ""}
  >>>
  parameter_meta {
    prm_top: "Input \\\"dry\\\" complex topology or solvated complex\\ntopology"
    complex_prm_top: "Complex topology file created by stripping PRMTOP of\\nsolvent"
    receptor_prm_top: "Receptor topology file created by stripping COMPLEX of\\nligand"
    ligand_prm_top: "Ligand topology file created by stripping COMPLEX of\\nreceptor"
    strip_mask: "Amber mask of atoms needed to be stripped from PRMTOP\\nto make the COMPLEX topology file"
    receptor_mask: "Amber mask of atoms needed to be stripped from COMPLEX\\nto create RECEPTOR. Cannot specify with -n/--ligand-\\nmask"
    ligand_mask: "Amber mask of atoms needed to be stripped from COMPLEX\\nto create LIGAND. Cannot specify with -m/--receptor-\\nmask"
    radii: "PB/GB Radius set to set in the generated topology\\nfiles. This is equivalent to \\\"set PBRadii <radius>\\\" in\\nLEaP. Options are bondi, mbondi2, mbondi3, amber6, and\\nmbondi and the default is to use the existing radii.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}