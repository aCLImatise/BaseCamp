version 1.0

task Packmolmemgen {
  input {
    Boolean? help
    Boolean? available_lipids
    Boolean? available_lipids_all
    Int? liplip__lipids
    Int? rr__ratio
    Int? dist
    Float? dist_wat
    String? dist_xy_fix
    Boolean? self_assembly
    String? curvature
    String? curv_radius
    String? dims
    Boolean? solvate
    Boolean? cubic
    Boolean? vol
    Int? leaflet
    String? lip_offset
    String? apl_offset
    File? tailplane
    File? head_plane
    Boolean? plot
    Boolean? t_raj
    Boolean? not_grid_vol
    Boolean? not_proton_ate
    Boolean? reduce_build
    Boolean? keep
    Boolean? no_progress
    Boolean? apl_exp
    File? mem_gen_parm
    Boolean? overwrite
    Boolean? not_trim
    File? log
    Boolean? charmm
    Int? translate
    Boolean? verbose
    File? pdb
    String? solute
    Int? solute_con
    String? solute_charge
    Boolean? solute_in_mem
    Int? solute_prot_dist
    Boolean? pre_oriented
    String? n_ter
    Boolean? barrel
    Boolean? keep_ligs
    String? mem_opt
    Int? n_loop
    Int? n_loop_all
    Float? tolerance
    Float? prot_rad
    Int? write_out
    Boolean? not_run
    Boolean? random
    Boolean? pack_all
    Boolean? move_bad_random
    String? pack_log
    Boolean? salt
    Boolean? salt_c
    String? salt_con
    Boolean? salt_override
    Boolean? no_counter
    Boolean? minimize
    String? ligand_param
    Boolean? gaff_two
    Float? leap_line
    Boolean? sander
    Boolean? parametrize
    String? ffw_at
    String? ff_prot
    Boolean? tight_box
    Boolean? double
    String? charge_imbalance
    String? imbalance_ion
    Boolean? h
    String bilayer_dot
    String written
  }
  command <<<
    packmol_memgen \
      ~{bilayer_dot} \
      ~{written} \
      ~{if (help) then "--help" else ""} \
      ~{if (available_lipids) then "--available_lipids" else ""} \
      ~{if (available_lipids_all) then "--available_lipids_all" else ""} \
      ~{if defined(liplip__lipids) then ("-l " +  '"' + liplip__lipids + '"') else ""} \
      ~{if defined(rr__ratio) then ("-r " +  '"' + rr__ratio + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(dist_wat) then ("--dist_wat " +  '"' + dist_wat + '"') else ""} \
      ~{if defined(dist_xy_fix) then ("--distxy_fix " +  '"' + dist_xy_fix + '"') else ""} \
      ~{if (self_assembly) then "--self_assembly" else ""} \
      ~{if defined(curvature) then ("--curvature " +  '"' + curvature + '"') else ""} \
      ~{if defined(curv_radius) then ("--curv_radius " +  '"' + curv_radius + '"') else ""} \
      ~{if defined(dims) then ("--dims " +  '"' + dims + '"') else ""} \
      ~{if (solvate) then "--solvate" else ""} \
      ~{if (cubic) then "--cubic" else ""} \
      ~{if (vol) then "--vol" else ""} \
      ~{if defined(leaflet) then ("--leaflet " +  '"' + leaflet + '"') else ""} \
      ~{if defined(lip_offset) then ("--lip_offset " +  '"' + lip_offset + '"') else ""} \
      ~{if defined(apl_offset) then ("--apl_offset " +  '"' + apl_offset + '"') else ""} \
      ~{if defined(tailplane) then ("--tailplane " +  '"' + tailplane + '"') else ""} \
      ~{if defined(head_plane) then ("--headplane " +  '"' + head_plane + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if (t_raj) then "--traj" else ""} \
      ~{if (not_grid_vol) then "--notgridvol" else ""} \
      ~{if (not_proton_ate) then "--notprotonate" else ""} \
      ~{if (reduce_build) then "--reducebuild" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (no_progress) then "--noprogress" else ""} \
      ~{if (apl_exp) then "--apl_exp" else ""} \
      ~{if defined(mem_gen_parm) then ("--memgen_parm " +  '"' + mem_gen_parm + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (not_trim) then "--nottrim" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (charmm) then "--charmm" else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(pdb) then ("--pdb " +  '"' + pdb + '"') else ""} \
      ~{if defined(solute) then ("--solute " +  '"' + solute + '"') else ""} \
      ~{if defined(solute_con) then ("--solute_con " +  '"' + solute_con + '"') else ""} \
      ~{if defined(solute_charge) then ("--solute_charge " +  '"' + solute_charge + '"') else ""} \
      ~{if (solute_in_mem) then "--solute_inmem" else ""} \
      ~{if defined(solute_prot_dist) then ("--solute_prot_dist " +  '"' + solute_prot_dist + '"') else ""} \
      ~{if (pre_oriented) then "--preoriented" else ""} \
      ~{if defined(n_ter) then ("--n_ter " +  '"' + n_ter + '"') else ""} \
      ~{if (barrel) then "--barrel" else ""} \
      ~{if (keep_ligs) then "--keepligs" else ""} \
      ~{if defined(mem_opt) then ("--mem_opt " +  '"' + mem_opt + '"') else ""} \
      ~{if defined(n_loop) then ("--nloop " +  '"' + n_loop + '"') else ""} \
      ~{if defined(n_loop_all) then ("--nloop_all " +  '"' + n_loop_all + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{if defined(prot_rad) then ("--prot_rad " +  '"' + prot_rad + '"') else ""} \
      ~{if defined(write_out) then ("--writeout " +  '"' + write_out + '"') else ""} \
      ~{if (not_run) then "--notrun" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (pack_all) then "--packall" else ""} \
      ~{if (move_bad_random) then "--movebadrandom" else ""} \
      ~{if defined(pack_log) then ("--packlog " +  '"' + pack_log + '"') else ""} \
      ~{if (salt) then "--salt" else ""} \
      ~{if (salt_c) then "--salt_c" else ""} \
      ~{if defined(salt_con) then ("--saltcon " +  '"' + salt_con + '"') else ""} \
      ~{if (salt_override) then "--salt_override" else ""} \
      ~{if (no_counter) then "--nocounter" else ""} \
      ~{if (minimize) then "--minimize" else ""} \
      ~{if defined(ligand_param) then ("--ligand_param " +  '"' + ligand_param + '"') else ""} \
      ~{if (gaff_two) then "--gaff2" else ""} \
      ~{if defined(leap_line) then ("--leapline " +  '"' + leap_line + '"') else ""} \
      ~{if (sander) then "--sander" else ""} \
      ~{if (parametrize) then "--parametrize" else ""} \
      ~{if defined(ffw_at) then ("--ffwat " +  '"' + ffw_at + '"') else ""} \
      ~{if defined(ff_prot) then ("--ffprot " +  '"' + ff_prot + '"') else ""} \
      ~{if (tight_box) then "--tight_box" else ""} \
      ~{if (double) then "--double" else ""} \
      ~{if defined(charge_imbalance) then ("--charge_imbalance " +  '"' + charge_imbalance + '"') else ""} \
      ~{if defined(imbalance_ion) then ("--imbalance_ion " +  '"' + imbalance_ion + '"') else ""} \
      ~{if (h) then "-h" else ""}
  >>>
  parameter_meta {
    help: "prints this help message and exits"
    available_lipids: "list of available lipids and corresponding charges"
    available_lipids_all: "list all lipids including experimental. Huge output\\n(~4000)!"
    liplip__lipids: ":LIP2//LIP3, --lipids LIP1:LIP2//LIP3\\nLipid(s) to be used for embeding the protein. It\\nshould be a single string separated by ':' . If\\ndifferent composition is used in leaflets, add '//' as\\na separator.[ex. CHL1:DOPC//DOPE for a lower leaflet\\nwith CHL1+DOPC and an upper leaflet with DOPE]. Can be\\ndefined multiple times for multi-bilayer systems\\n(stacks 'up' or 'outside')"
    rr__ratio: ":R2//R3, --ratio R1:R2//R3\\nmixture ratio (set to 1 if only one lipid required).\\nMust be in the same order and syntax as in lipids, and\\ndefined once per bilayer [ex. 1:2//1]"
    dist: "specify the minimum distance between the maxmin values\\nfor x y and z to the box boundaries. Default = 15 A.\\nWorst case scenario is considered, so real distance\\ncould be larger"
    dist_wat: "specify the width of the water layer over the membrane\\nor protein in the z axis. Default = 17.5"
    dist_xy_fix: "specify a predefined distance between the maxmin\\nvalues for x and y to the box boundaries. By default\\nis calculated flexibly for each system."
    self_assembly: "places lipids all over the packed box, and not in a"
    curvature: "set the curvature of the membrane patch. By default,\\nmembranes are flat."
    curv_radius: "inverse of curvature. Set the curvature as if on a\\nvesicle with the provided radius."
    dims: "Y Z          box dimensions vector for the x y z axes. Be sure to\\nuse dimensions that cover the complete protein to be\\npacked!!"
    solvate: "solvate the system without adding lipids. Disables the\\nflag --dist_wat, using only --dist to set the box\\nsize. Under development!"
    cubic: "cube shaped box. Only works with --solvate"
    vol: "do the lipid number estimation based on the volume\\noccupied by the leaflet instead of APL. This might\\ncause a great overestimation of the number of lipid\\nmolecules!"
    leaflet: "set desired leaflet width. 23 by default."
    lip_offset: "factor that multiplies the x/y sizes for the lipid\\nmembrane segment. Might improve packing and handling\\nby AMBER"
    apl_offset: "factor that multiplies the default APL values. Helpful\\nif packing stretched membranes."
    tailplane: "sets the position BELOW which the CH3 carbon atoms in\\nthe tail should be. By default defined in parameter\\nfile"
    head_plane: "sets the position ABOVE which the PO4 phosphorus and N\\natoms in the polar head group should be.By default\\ndefined in parameter file"
    plot: "makes a simple plot of loop number vs GENCAN\\noptimization function value, and outputs the values to\\nGENCAN.dat"
    t_raj: "saves all intermediate steps into separate pdb files"
    not_grid_vol: "skips grid building for volume estimation, and the\\ncalculation is done just by estimating density"
    not_proton_ate: "skips protonation by reduce"
    reduce_build: "build step by reduce (protonation of His and side-\\nchain flips). Use with care if parametrizing with the\\nscript!"
    keep: "skips deleting temporary files"
    no_progress: "avoids the printing of progress bar with time\\nestimation in the final stage. Recommended if the job\\nis piped into a file"
    apl_exp: "use experimental APL where available, like\\nAmberTools18 release. Kept for consistency with older\\nversions. By default, terms estimated with Lipid17 are\\nused"
    mem_gen_parm: "load custom memgen.parm file with APL and VOL values"
    overwrite: "overwrite, even if files are present"
    not_trim: "doesn't trim preexisting hydrogens in the structure"
    log: "log file name where detailed information is to be"
    charmm: "the output will be in CHARMM format instead of AMBER"
    translate: "TRANSLATE TRANSLATE\\npass a vector as x y z to translate the oriented pdb.\\nEx. ' 0 0 4 '"
    verbose: "verbose mode"
    pdb: "PDB file(s) to embed. If many bilayers, it has to be\\nspecified once for each bilayer. 'None' can be\\nspecified and a bilayer without protein will be\\ngenerated [ex. --pdb PDB1.pdb --pdb None --pdb\\nPDB2.pdb (3 bilayers without protein in the middle)].\\nIf no PDB is provided, the bilayer(s) will be membrane\\nonly (--distxy_fix has to be defined)."
    solute: "adds pdb as solute into the water. Concentration has\\nto be specified"
    solute_con: "number of molecules/concentration to be used.\\nConcentrations are specified in Molar by adding an 'M'\\nas a suffix (Ex. 0.15M). If not added, a number of\\nmolecules is assumed."
    solute_charge: "absolute charge of the included solute. To be\\nconsidered in the system neutralization"
    solute_in_mem: "solute should be added to membrane fraction"
    solute_prot_dist: "establishes a cylindrical restraint using the protein\\nxy radius and z height + the input value. A value of 0\\nwill use the protein radius. By default, no restraint\\nis imposed."
    pre_oriented: "use this flag if the protein has been previosuly\\noriented and you want to avoid running MEMEMBED (i.e.\\nfrom OPM)"
    n_ter: "'in' or 'out'. By default proteins are oriented with\\nthe n_ter oriented 'in' (or 'down'). relevant for\\nmulti layer system. If defined for one protein, it has\\nto be defined for all of them, following previous\\norder"
    barrel: "use MEMEMBED in beta barrel mode"
    keep_ligs: "MEMEMBED by default cleans the PDB. Use this flag to\\nkeep the ligands on the original PDB"
    mem_opt: "MEMEMBED optimization algorithm. 0 = Genetic\\nalgorithm, 1 = Grid, 2 = Direct, 3 = GA five times"
    n_loop: "number of nloops for GENCAN routine in PACKMOL.\\nPACKMOL MEMGEN uses 20 by default; you might consider\\nincreasing the number to improve packing. Increasing\\nthe number of components requires more GENCAN loops."
    n_loop_all: "number of nloops for all-together packing. PACKMOL\\nMEMGEN uses 100 by default."
    tolerance: "tolerance for detecting clashes between molecules in\\nPACKMOL (defined as radius1+radius2). PACKMOL uses 2.0\\nby default."
    prot_rad: "radius considered for protein atoms to establish the\\ntolerance for detecting clashes. PACKMOL MEMGEN uses\\n1.5 by default."
    write_out: "frequency for writing intermediate results. PACKMOL\\nuses 10 by default."
    not_run: "will not run PACKMOL, even if it's available"
    random: "turns PACKMOL random seed generator on. If a previous\\npacking failed in the minimization problem, repacking\\nwith this feature on might solve the problem."
    pack_all: "skips initial individual packing steps"
    move_bad_random: "randomizes positions of badly placed molecules in\\ninitial guess"
    pack_log: "prefix for generated PACKMOL input and log files"
    salt: "adds salt at a concentration of 0.15M by default. Salt\\nis always added considering estimated charges for the\\nsystem."
    salt_c: "{K+,Na+,Ca2+,Mg2+}\\ncation to add. (K+ by default)"
    salt_con: "modifies the default concentration for KCl. [M]"
    salt_override: "if the concentration of salt specified is less than\\nthe required to neutralize, will try to continue\\nomitting the warning"
    no_counter: "no counterions are added. Will depend on pmemd\\n'plasma' neutralization"
    minimize: "performs minimization by using pmemd."
    ligand_param: "in case of parametrizing or minimizing the system with\\nnon-canonical molecules. Give frcmod and lib filenames\\nseparated by ':' [ex. --ligand_param FRCMOD:LIB]."
    gaff_two: "if ligand parameters are included, use GAFF2 during\\nparametrization (GAFF is used by default)"
    leap_line: "extra lines added to the leap parametrization process.\\nDelimit the line with quotes. The system is called SYS\\ninto leap [ex. --leapline 'bond SYS.4.SG SYS.122.SG'\\nto form SS bond between SG atoms of residues 4 and\\n122]"
    sander: "use sander instead of pmemd."
    parametrize: "parametrizes the system by using tleap. Uses LIPID17,\\nff14SB and TIP3P by default (check --ffwat and\\n--ffprot)"
    ffw_at: "water model to be used during parametrization.If not\\nset explicitly, will change depending on the protein\\nff (--ffprot)"
    ff_prot: "protein ff to be used during parametrization."
    tight_box: "sets box dimension according to restraints used during\\nthe packing. The default uses a vdW distance to the\\nboundary"
    double: "asumes a stacked double bilayer system for CompEL. The\\ncomposition in --lipids will be used for both bilayers\\nflipping the leaflets"
    charge_imbalance: "sets a charge imbalance between compartments (in\\nelectron charge units). A positive imbalance implies\\nan increase (decrease) in cations (anions) in the\\ncentral compartment."
    imbalance_ion: "sets if cations or anions are used to imbalance the\\nsystem charges. ('cat' by default)\\n"
    h: ""
    bilayer_dot: "--xygauss C D H       set parameters for a curved 2d gaussian in the xy"
    written: "--output OUTPUT       name of the PACKMOL generated PDB file"
  }
  output {
    File out_stdout = stdout()
  }
}