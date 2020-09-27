class: CommandLineTool
id: packmol_memgen.cwl
inputs:
- id: in_help
  doc: prints this help message and exits
  type: boolean
  inputBinding:
    prefix: --help
- id: in_available_lipids
  doc: list of available lipids and corresponding charges
  type: boolean
  inputBinding:
    prefix: --available_lipids
- id: in_available_lipids_all
  doc: "list all lipids including experimental. Huge output\n(~4000)!"
  type: boolean
  inputBinding:
    prefix: --available_lipids_all
- id: in_liplip__lipids
  doc: ":LIP2//LIP3, --lipids LIP1:LIP2//LIP3\nLipid(s) to be used for embeding the\
    \ protein. It\nshould be a single string separated by ':' . If\ndifferent composition\
    \ is used in leaflets, add '//' as\na separator.[ex. CHL1:DOPC//DOPE for a lower\
    \ leaflet\nwith CHL1+DOPC and an upper leaflet with DOPE]. Can be\ndefined multiple\
    \ times for multi-bilayer systems\n(stacks 'up' or 'outside')"
  type: long
  inputBinding:
    prefix: -l
- id: in_rr__ratio
  doc: ":R2//R3, --ratio R1:R2//R3\nmixture ratio (set to 1 if only one lipid required).\n\
    Must be in the same order and syntax as in lipids, and\ndefined once per bilayer\
    \ [ex. 1:2//1]"
  type: long
  inputBinding:
    prefix: -r
- id: in_dist
  doc: "specify the minimum distance between the maxmin values\nfor x y and z to the\
    \ box boundaries. Default = 15 A.\nWorst case scenario is considered, so real\
    \ distance\ncould be larger"
  type: long
  inputBinding:
    prefix: --dist
- id: in_dist_wat
  doc: "specify the width of the water layer over the membrane\nor protein in the\
    \ z axis. Default = 17.5"
  type: double
  inputBinding:
    prefix: --dist_wat
- id: in_dist_xy_fix
  doc: "specify a predefined distance between the maxmin\nvalues for x and y to the\
    \ box boundaries. By default\nis calculated flexibly for each system."
  type: string
  inputBinding:
    prefix: --distxy_fix
- id: in_self_assembly
  doc: places lipids all over the packed box, and not in a
  type: boolean
  inputBinding:
    prefix: --self_assembly
- id: in_curvature
  doc: "set the curvature of the membrane patch. By default,\nmembranes are flat."
  type: string
  inputBinding:
    prefix: --curvature
- id: in_curv_radius
  doc: "inverse of curvature. Set the curvature as if on a\nvesicle with the provided\
    \ radius."
  type: string
  inputBinding:
    prefix: --curv_radius
- id: in_dims
  doc: "Y Z          box dimensions vector for the x y z axes. Be sure to\nuse dimensions\
    \ that cover the complete protein to be\npacked!!"
  type: string
  inputBinding:
    prefix: --dims
- id: in_solvate
  doc: "solvate the system without adding lipids. Disables the\nflag --dist_wat, using\
    \ only --dist to set the box\nsize. Under development!"
  type: boolean
  inputBinding:
    prefix: --solvate
- id: in_cubic
  doc: cube shaped box. Only works with --solvate
  type: boolean
  inputBinding:
    prefix: --cubic
- id: in_vol
  doc: "do the lipid number estimation based on the volume\noccupied by the leaflet\
    \ instead of APL. This might\ncause a great overestimation of the number of lipid\n\
    molecules!"
  type: boolean
  inputBinding:
    prefix: --vol
- id: in_leaflet
  doc: set desired leaflet width. 23 by default.
  type: long
  inputBinding:
    prefix: --leaflet
- id: in_lip_offset
  doc: "factor that multiplies the x/y sizes for the lipid\nmembrane segment. Might\
    \ improve packing and handling\nby AMBER"
  type: string
  inputBinding:
    prefix: --lip_offset
- id: in_apl_offset
  doc: "factor that multiplies the default APL values. Helpful\nif packing stretched\
    \ membranes."
  type: string
  inputBinding:
    prefix: --apl_offset
- id: in_tailplane
  doc: "sets the position BELOW which the CH3 carbon atoms in\nthe tail should be.\
    \ By default defined in parameter\nfile"
  type: File
  inputBinding:
    prefix: --tailplane
- id: in_head_plane
  doc: "sets the position ABOVE which the PO4 phosphorus and N\natoms in the polar\
    \ head group should be.By default\ndefined in parameter file"
  type: File
  inputBinding:
    prefix: --headplane
- id: in_plot
  doc: "makes a simple plot of loop number vs GENCAN\noptimization function value,\
    \ and outputs the values to\nGENCAN.dat"
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_t_raj
  doc: saves all intermediate steps into separate pdb files
  type: boolean
  inputBinding:
    prefix: --traj
- id: in_not_grid_vol
  doc: "skips grid building for volume estimation, and the\ncalculation is done just\
    \ by estimating density"
  type: boolean
  inputBinding:
    prefix: --notgridvol
- id: in_not_proton_ate
  doc: skips protonation by reduce
  type: boolean
  inputBinding:
    prefix: --notprotonate
- id: in_reduce_build
  doc: "build step by reduce (protonation of His and side-\nchain flips). Use with\
    \ care if parametrizing with the\nscript!"
  type: boolean
  inputBinding:
    prefix: --reducebuild
- id: in_keep
  doc: skips deleting temporary files
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_no_progress
  doc: "avoids the printing of progress bar with time\nestimation in the final stage.\
    \ Recommended if the job\nis piped into a file"
  type: boolean
  inputBinding:
    prefix: --noprogress
- id: in_apl_exp
  doc: "use experimental APL where available, like\nAmberTools18 release. Kept for\
    \ consistency with older\nversions. By default, terms estimated with Lipid17 are\n\
    used"
  type: boolean
  inputBinding:
    prefix: --apl_exp
- id: in_mem_gen_parm
  doc: load custom memgen.parm file with APL and VOL values
  type: File
  inputBinding:
    prefix: --memgen_parm
- id: in_overwrite
  doc: overwrite, even if files are present
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_not_trim
  doc: doesn't trim preexisting hydrogens in the structure
  type: boolean
  inputBinding:
    prefix: --nottrim
- id: in_log
  doc: log file name where detailed information is to be
  type: File
  inputBinding:
    prefix: --log
- id: in_charmm
  doc: the output will be in CHARMM format instead of AMBER
  type: boolean
  inputBinding:
    prefix: --charmm
- id: in_translate
  doc: "TRANSLATE TRANSLATE\npass a vector as x y z to translate the oriented pdb.\n\
    Ex. ' 0 0 4 '"
  type: long
  inputBinding:
    prefix: --translate
- id: in_verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_pdb
  doc: "PDB file(s) to embed. If many bilayers, it has to be\nspecified once for each\
    \ bilayer. 'None' can be\nspecified and a bilayer without protein will be\ngenerated\
    \ [ex. --pdb PDB1.pdb --pdb None --pdb\nPDB2.pdb (3 bilayers without protein in\
    \ the middle)].\nIf no PDB is provided, the bilayer(s) will be membrane\nonly\
    \ (--distxy_fix has to be defined)."
  type: File
  inputBinding:
    prefix: --pdb
- id: in_solute
  doc: "adds pdb as solute into the water. Concentration has\nto be specified"
  type: string
  inputBinding:
    prefix: --solute
- id: in_solute_con
  doc: "number of molecules/concentration to be used.\nConcentrations are specified\
    \ in Molar by adding an 'M'\nas a suffix (Ex. 0.15M). If not added, a number of\n\
    molecules is assumed."
  type: long
  inputBinding:
    prefix: --solute_con
- id: in_solute_charge
  doc: "absolute charge of the included solute. To be\nconsidered in the system neutralization"
  type: string
  inputBinding:
    prefix: --solute_charge
- id: in_solute_in_mem
  doc: solute should be added to membrane fraction
  type: boolean
  inputBinding:
    prefix: --solute_inmem
- id: in_solute_prot_dist
  doc: "establishes a cylindrical restraint using the protein\nxy radius and z height\
    \ + the input value. A value of 0\nwill use the protein radius. By default, no\
    \ restraint\nis imposed."
  type: long
  inputBinding:
    prefix: --solute_prot_dist
- id: in_pre_oriented
  doc: "use this flag if the protein has been previosuly\noriented and you want to\
    \ avoid running MEMEMBED (i.e.\nfrom OPM)"
  type: boolean
  inputBinding:
    prefix: --preoriented
- id: in_n_ter
  doc: "'in' or 'out'. By default proteins are oriented with\nthe n_ter oriented 'in'\
    \ (or 'down'). relevant for\nmulti layer system. If defined for one protein, it\
    \ has\nto be defined for all of them, following previous\norder"
  type: string
  inputBinding:
    prefix: --n_ter
- id: in_barrel
  doc: use MEMEMBED in beta barrel mode
  type: boolean
  inputBinding:
    prefix: --barrel
- id: in_keep_ligs
  doc: "MEMEMBED by default cleans the PDB. Use this flag to\nkeep the ligands on\
    \ the original PDB"
  type: boolean
  inputBinding:
    prefix: --keepligs
- id: in_mem_opt
  doc: "MEMEMBED optimization algorithm. 0 = Genetic\nalgorithm, 1 = Grid, 2 = Direct,\
    \ 3 = GA five times"
  type: string
  inputBinding:
    prefix: --mem_opt
- id: in_n_loop
  doc: "number of nloops for GENCAN routine in PACKMOL.\nPACKMOL MEMGEN uses 20 by\
    \ default; you might consider\nincreasing the number to improve packing. Increasing\n\
    the number of components requires more GENCAN loops."
  type: long
  inputBinding:
    prefix: --nloop
- id: in_n_loop_all
  doc: "number of nloops for all-together packing. PACKMOL\nMEMGEN uses 100 by default."
  type: long
  inputBinding:
    prefix: --nloop_all
- id: in_tolerance
  doc: "tolerance for detecting clashes between molecules in\nPACKMOL (defined as\
    \ radius1+radius2). PACKMOL uses 2.0\nby default."
  type: double
  inputBinding:
    prefix: --tolerance
- id: in_prot_rad
  doc: "radius considered for protein atoms to establish the\ntolerance for detecting\
    \ clashes. PACKMOL MEMGEN uses\n1.5 by default."
  type: double
  inputBinding:
    prefix: --prot_rad
- id: in_write_out
  doc: "frequency for writing intermediate results. PACKMOL\nuses 10 by default."
  type: long
  inputBinding:
    prefix: --writeout
- id: in_not_run
  doc: will not run PACKMOL, even if it's available
  type: boolean
  inputBinding:
    prefix: --notrun
- id: in_random
  doc: "turns PACKMOL random seed generator on. If a previous\npacking failed in the\
    \ minimization problem, repacking\nwith this feature on might solve the problem."
  type: boolean
  inputBinding:
    prefix: --random
- id: in_pack_all
  doc: skips initial individual packing steps
  type: boolean
  inputBinding:
    prefix: --packall
- id: in_move_bad_random
  doc: "randomizes positions of badly placed molecules in\ninitial guess"
  type: boolean
  inputBinding:
    prefix: --movebadrandom
- id: in_pack_log
  doc: prefix for generated PACKMOL input and log files
  type: string
  inputBinding:
    prefix: --packlog
- id: in_salt
  doc: "adds salt at a concentration of 0.15M by default. Salt\nis always added considering\
    \ estimated charges for the\nsystem."
  type: boolean
  inputBinding:
    prefix: --salt
- id: in_salt_c
  doc: "{K+,Na+,Ca2+,Mg2+}\ncation to add. (K+ by default)"
  type: boolean
  inputBinding:
    prefix: --salt_c
- id: in_salt_con
  doc: modifies the default concentration for KCl. [M]
  type: string
  inputBinding:
    prefix: --saltcon
- id: in_salt_override
  doc: "if the concentration of salt specified is less than\nthe required to neutralize,\
    \ will try to continue\nomitting the warning"
  type: boolean
  inputBinding:
    prefix: --salt_override
- id: in_no_counter
  doc: "no counterions are added. Will depend on pmemd\n'plasma' neutralization"
  type: boolean
  inputBinding:
    prefix: --nocounter
- id: in_minimize
  doc: performs minimization by using pmemd.
  type: boolean
  inputBinding:
    prefix: --minimize
- id: in_ligand_param
  doc: "in case of parametrizing or minimizing the system with\nnon-canonical molecules.\
    \ Give frcmod and lib filenames\nseparated by ':' [ex. --ligand_param FRCMOD:LIB]."
  type: string
  inputBinding:
    prefix: --ligand_param
- id: in_gaff_two
  doc: "if ligand parameters are included, use GAFF2 during\nparametrization (GAFF\
    \ is used by default)"
  type: boolean
  inputBinding:
    prefix: --gaff2
- id: in_leap_line
  doc: "extra lines added to the leap parametrization process.\nDelimit the line with\
    \ quotes. The system is called SYS\ninto leap [ex. --leapline 'bond SYS.4.SG SYS.122.SG'\n\
    to form SS bond between SG atoms of residues 4 and\n122]"
  type: double
  inputBinding:
    prefix: --leapline
- id: in_sander
  doc: use sander instead of pmemd.
  type: boolean
  inputBinding:
    prefix: --sander
- id: in_parametrize
  doc: "parametrizes the system by using tleap. Uses LIPID17,\nff14SB and TIP3P by\
    \ default (check --ffwat and\n--ffprot)"
  type: boolean
  inputBinding:
    prefix: --parametrize
- id: in_ffw_at
  doc: "water model to be used during parametrization.If not\nset explicitly, will\
    \ change depending on the protein\nff (--ffprot)"
  type: string
  inputBinding:
    prefix: --ffwat
- id: in_ff_prot
  doc: protein ff to be used during parametrization.
  type: string
  inputBinding:
    prefix: --ffprot
- id: in_tight_box
  doc: "sets box dimension according to restraints used during\nthe packing. The default\
    \ uses a vdW distance to the\nboundary"
  type: boolean
  inputBinding:
    prefix: --tight_box
- id: in_double
  doc: "asumes a stacked double bilayer system for CompEL. The\ncomposition in --lipids\
    \ will be used for both bilayers\nflipping the leaflets"
  type: boolean
  inputBinding:
    prefix: --double
- id: in_charge_imbalance
  doc: "sets a charge imbalance between compartments (in\nelectron charge units).\
    \ A positive imbalance implies\nan increase (decrease) in cations (anions) in\
    \ the\ncentral compartment."
  type: string
  inputBinding:
    prefix: --charge_imbalance
- id: in_imbalance_ion
  doc: "sets if cations or anions are used to imbalance the\nsystem charges. ('cat'\
    \ by default)\n"
  type: string
  inputBinding:
    prefix: --imbalance_ion
- id: in_h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: in_bilayer_dot
  doc: --xygauss C D H       set parameters for a curved 2d gaussian in the xy
  type: string
  inputBinding:
    position: 0
- id: in_written
  doc: --output OUTPUT       name of the PACKMOL generated PDB file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- packmol-memgen
