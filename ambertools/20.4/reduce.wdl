version 1.0

task Reduce {
  input {
    Boolean? flip
    Boolean? no_flip
    Boolean? trim
    Boolean? nuclear
    Boolean? no_oh
    Boolean? oh
    Boolean? his
    Boolean? no_heth
    Boolean? rot_nh_three
    Boolean? no_rot_nh_three
    Boolean? rot_exist
    Boolean? rotex_oh
    Boolean? all_alt
    Boolean? only_a
    Boolean? charges
    Boolean? dorot_met
    Boolean? no_adjust
    Boolean? no_build
    Boolean? build
    Boolean? keep
    Boolean? max_a_rom_dih
    Boolean? nbonds
    Boolean? model
    Boolean? n_term
    Boolean? density
    Boolean? radius
    Boolean? occ_cut_off
    Boolean? h_two_o_occ_cut_off
    Boolean? h_two_ob_cut_off
    Boolean? penalty
    Boolean? hb_reg_cut_off
    Boolean? hb_charged_cut
    Boolean? bad_bump_cut
    Boolean? metal_bump
    Boolean? nonmetal_bump
    Boolean? segid_map
    Boolean? xplor
    Boolean? old_pdb
    Boolean? bb_model
    Boolean? no_con
    Boolean? limit
    Boolean? no_ticks
    Boolean? show_score
    Boolean? fix
    Boolean? db
    Boolean? pass_reduce_quoted
    Boolean? quiet
    Boolean? reference
    Boolean? version
    Boolean? changes
    Boolean? help
    String from
    String within
    String a
    String script
  }
  command <<<
    reduce \
      ~{from} \
      ~{within} \
      ~{a} \
      ~{script} \
      ~{if (flip) then "-FLIP" else ""} \
      ~{if (no_flip) then "-NOFLIP" else ""} \
      ~{if (trim) then "-Trim" else ""} \
      ~{if (nuclear) then "-NUClear" else ""} \
      ~{if (no_oh) then "-NOOH" else ""} \
      ~{if (oh) then "-OH" else ""} \
      ~{if (his) then "-HIS" else ""} \
      ~{if (no_heth) then "-NOHETh" else ""} \
      ~{if (rot_nh_three) then "-ROTNH3" else ""} \
      ~{if (no_rot_nh_three) then "-NOROTNH3" else ""} \
      ~{if (rot_exist) then "-ROTEXist" else ""} \
      ~{if (rotex_oh) then "-ROTEXOH" else ""} \
      ~{if (all_alt) then "-ALLALT" else ""} \
      ~{if (only_a) then "-ONLYA" else ""} \
      ~{if (charges) then "-CHARGEs" else ""} \
      ~{if (dorot_met) then "-DOROTMET" else ""} \
      ~{if (no_adjust) then "-NOADJust" else ""} \
      ~{if (no_build) then "-NOBUILD" else ""} \
      ~{if (build) then "-BUILD" else ""} \
      ~{if (keep) then "-Keep" else ""} \
      ~{if (max_a_rom_dih) then "-MAXAromdih" else ""} \
      ~{if (nbonds) then "-NBonds" else ""} \
      ~{if (model) then "-Model" else ""} \
      ~{if (n_term) then "-Nterm" else ""} \
      ~{if (density) then "-DENSity" else ""} \
      ~{if (radius) then "-RADius" else ""} \
      ~{if (occ_cut_off) then "-OCCcutoff" else ""} \
      ~{if (h_two_o_occ_cut_off) then "-H2OOCCcutoff" else ""} \
      ~{if (h_two_ob_cut_off) then "-H2OBcutoff" else ""} \
      ~{if (penalty) then "-PENalty" else ""} \
      ~{if (hb_reg_cut_off) then "-HBREGcutoff" else ""} \
      ~{if (hb_charged_cut) then "-HBCHargedcut" else ""} \
      ~{if (bad_bump_cut) then "-BADBumpcut" else ""} \
      ~{if (metal_bump) then "-METALBump" else ""} \
      ~{if (nonmetal_bump) then "-NONMETALBump" else ""} \
      ~{if (segid_map) then "-SEGIDmap" else ""} \
      ~{if (xplor) then "-Xplor" else ""} \
      ~{if (old_pdb) then "-OLDpdb" else ""} \
      ~{if (bb_model) then "-BBmodel" else ""} \
      ~{if (no_con) then "-NOCon" else ""} \
      ~{if (limit) then "-LIMIT" else ""} \
      ~{if (no_ticks) then "-NOTICKs" else ""} \
      ~{if (show_score) then "-SHOWSCore" else ""} \
      ~{if (fix) then "-FIX" else ""} \
      ~{if (db) then "-DB" else ""} \
      ~{if (pass_reduce_quoted) then "-STRING" else ""} \
      ~{if (quiet) then "-Quiet" else ""} \
      ~{if (reference) then "-REFerence" else ""} \
      ~{if (version) then "-Version" else ""} \
      ~{if (changes) then "-Changes" else ""} \
      ~{if (help) then "-Help" else ""}
  >>>
  parameter_meta {
    flip: "add H and rotate and flip NQH groups"
    no_flip: "add H and rotate groups with no NQH flips"
    trim: "remove (rather than add) hydrogens"
    nuclear: "use nuclear X-H distances rather than default\\nelectron cloud distances"
    no_oh: "remove hydrogens on OH and SH groups"
    oh: "add hydrogens on OH and SH groups (default)"
    his: "create NH hydrogens on HIS rings\\n(usually used with -HIS)"
    no_heth: "do not attempt to add NH proton on Het groups"
    rot_nh_three: "allow lysine NH3 to rotate (default)"
    no_rot_nh_three: "do not allow lysine NH3 to rotate"
    rot_exist: "allow existing rotatable groups (OH, SH, Met-CH3) to rotate"
    rotex_oh: "allow existing OH & SH groups to rotate"
    all_alt: "process adjustments for all conformations (default)"
    only_a: "only adjust 'A' conformations"
    charges: "output charge state for appropriate hydrogen records"
    dorot_met: "allow methionine methyl groups to rotate (not recommended)"
    no_adjust: "do not process any rot or flip adjustments"
    no_build: "#.#       build with a given penalty often 200 or 999"
    build: "add H, including His sc NH, then rotate and flip groups\\n(except for pre-existing methionine methyl hydrogens)\\n(same as: -OH -ROTEXOH -HIS -FLIP)"
    keep: "keep bond lengths as found"
    max_a_rom_dih: "#      dihedral angle cutoff for aromatic ring planarity check (default=10)"
    nbonds: "#          remove dots if cause within n bonds (default=3)"
    model: "#           which model to process (default=1)"
    n_term: "#           max number of nterm residue (default=1)"
    density: "#.#       dot density (in dots/A^2) for VDW calculations (Real, default=16)"
    radius: "#.#        probe radius (in A) for VDW calculations (Real, default=0)"
    occ_cut_off: "#.#     occupancy cutoff for adjustments (default=0.01)"
    h_two_o_occ_cut_off: "#.#  occupancy cutoff for water atoms (default=0.66)"
    h_two_ob_cut_off: "#      B-factor  cutoff for water atoms (Integer, default=40)"
    penalty: "#.#       fraction of std. bias towards original orientation (default=1)"
    hb_reg_cut_off: "#.#   over this gap regular HBonds bump (default=0.6)"
    hb_charged_cut: "#.#  over this gap charged HBonds bump (default=0.8)"
    bad_bump_cut: "#.#    at this gap a bump is 'bad' (default=0.4)"
    metal_bump: "#.#     H 'bumps' metals at radius plus this (default=0.865)"
    nonmetal_bump: "#.#  'bumps' nonmetal at radius plus this (default=0.125)"
    segid_map: "\\\"seg,c...\\\"  assign chainID based on segment identifier field"
    xplor: "use Xplor conventions for naming polar hydrogens"
    old_pdb: "use the pre-remediation names for hydrogens"
    bb_model: "expects a backbone only model and will build HA hydrogens on Calpha truncated residues"
    no_con: "drop conect records"
    limit: "#           max seconds to spend in exhaustive search (default=600)"
    no_ticks: "do not display the set orientation ticker during processing"
    show_score: "display scores for each orientation considered during processing"
    fix: "\\\"filename\\\"   if given, file specifies orientations for adjustable groups"
    db: "\\\"filename\\\"    file to search for het info\\n(default=\\\"/usr/local//dat/reduce_wwPDB_het_dict.txt\\\")"
    pass_reduce_quoted: "pass reduce a string object from a script, must be quoted"
    quiet: "do not write extra info to the console"
    reference: "display citation reference"
    version: "display the version of reduce"
    changes: "display the change log"
    help: "the more extensive description of command line arguments"
    from: ""
    within: ""
    a: ""
    script: ""
  }
  output {
    File out_stdout = stdout()
  }
}