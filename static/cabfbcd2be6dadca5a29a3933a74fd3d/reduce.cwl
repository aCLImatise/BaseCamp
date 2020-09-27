class: CommandLineTool
id: reduce.cwl
inputs:
- id: in_flip
  doc: add H and rotate and flip NQH groups
  type: boolean
  inputBinding:
    prefix: -FLIP
- id: in_no_flip
  doc: add H and rotate groups with no NQH flips
  type: boolean
  inputBinding:
    prefix: -NOFLIP
- id: in_trim
  doc: remove (rather than add) hydrogens
  type: boolean
  inputBinding:
    prefix: -Trim
- id: in_nuclear
  doc: "use nuclear X-H distances rather than default\nelectron cloud distances"
  type: boolean
  inputBinding:
    prefix: -NUClear
- id: in_no_oh
  doc: remove hydrogens on OH and SH groups
  type: boolean
  inputBinding:
    prefix: -NOOH
- id: in_oh
  doc: add hydrogens on OH and SH groups (default)
  type: boolean
  inputBinding:
    prefix: -OH
- id: in_his
  doc: "create NH hydrogens on HIS rings\n(usually used with -HIS)"
  type: boolean
  inputBinding:
    prefix: -HIS
- id: in_no_heth
  doc: do not attempt to add NH proton on Het groups
  type: boolean
  inputBinding:
    prefix: -NOHETh
- id: in_rot_nh_three
  doc: allow lysine NH3 to rotate (default)
  type: boolean
  inputBinding:
    prefix: -ROTNH3
- id: in_no_rot_nh_three
  doc: do not allow lysine NH3 to rotate
  type: boolean
  inputBinding:
    prefix: -NOROTNH3
- id: in_rot_exist
  doc: allow existing rotatable groups (OH, SH, Met-CH3) to rotate
  type: boolean
  inputBinding:
    prefix: -ROTEXist
- id: in_rotex_oh
  doc: allow existing OH & SH groups to rotate
  type: boolean
  inputBinding:
    prefix: -ROTEXOH
- id: in_all_alt
  doc: process adjustments for all conformations (default)
  type: boolean
  inputBinding:
    prefix: -ALLALT
- id: in_only_a
  doc: only adjust 'A' conformations
  type: boolean
  inputBinding:
    prefix: -ONLYA
- id: in_charges
  doc: output charge state for appropriate hydrogen records
  type: boolean
  inputBinding:
    prefix: -CHARGEs
- id: in_dorot_met
  doc: allow methionine methyl groups to rotate (not recommended)
  type: boolean
  inputBinding:
    prefix: -DOROTMET
- id: in_no_adjust
  doc: do not process any rot or flip adjustments
  type: boolean
  inputBinding:
    prefix: -NOADJust
- id: in_no_build
  doc: '#.#       build with a given penalty often 200 or 999'
  type: boolean
  inputBinding:
    prefix: -NOBUILD
- id: in_build
  doc: "add H, including His sc NH, then rotate and flip groups\n(except for pre-existing\
    \ methionine methyl hydrogens)\n(same as: -OH -ROTEXOH -HIS -FLIP)"
  type: boolean
  inputBinding:
    prefix: -BUILD
- id: in_keep
  doc: keep bond lengths as found
  type: boolean
  inputBinding:
    prefix: -Keep
- id: in_max_a_rom_dih
  doc: '#      dihedral angle cutoff for aromatic ring planarity check (default=10)'
  type: boolean
  inputBinding:
    prefix: -MAXAromdih
- id: in_nbonds
  doc: '#          remove dots if cause within n bonds (default=3)'
  type: boolean
  inputBinding:
    prefix: -NBonds
- id: in_model
  doc: '#           which model to process (default=1)'
  type: boolean
  inputBinding:
    prefix: -Model
- id: in_n_term
  doc: '#           max number of nterm residue (default=1)'
  type: boolean
  inputBinding:
    prefix: -Nterm
- id: in_density
  doc: '#.#       dot density (in dots/A^2) for VDW calculations (Real, default=16)'
  type: boolean
  inputBinding:
    prefix: -DENSity
- id: in_radius
  doc: '#.#        probe radius (in A) for VDW calculations (Real, default=0)'
  type: boolean
  inputBinding:
    prefix: -RADius
- id: in_occ_cut_off
  doc: '#.#     occupancy cutoff for adjustments (default=0.01)'
  type: boolean
  inputBinding:
    prefix: -OCCcutoff
- id: in_h_two_o_occ_cut_off
  doc: '#.#  occupancy cutoff for water atoms (default=0.66)'
  type: boolean
  inputBinding:
    prefix: -H2OOCCcutoff
- id: in_h_two_ob_cut_off
  doc: '#      B-factor  cutoff for water atoms (Integer, default=40)'
  type: boolean
  inputBinding:
    prefix: -H2OBcutoff
- id: in_penalty
  doc: '#.#       fraction of std. bias towards original orientation (default=1)'
  type: boolean
  inputBinding:
    prefix: -PENalty
- id: in_hb_reg_cut_off
  doc: '#.#   over this gap regular HBonds bump (default=0.6)'
  type: boolean
  inputBinding:
    prefix: -HBREGcutoff
- id: in_hb_charged_cut
  doc: '#.#  over this gap charged HBonds bump (default=0.8)'
  type: boolean
  inputBinding:
    prefix: -HBCHargedcut
- id: in_bad_bump_cut
  doc: "#.#    at this gap a bump is 'bad' (default=0.4)"
  type: boolean
  inputBinding:
    prefix: -BADBumpcut
- id: in_metal_bump
  doc: "#.#     H 'bumps' metals at radius plus this (default=0.865)"
  type: boolean
  inputBinding:
    prefix: -METALBump
- id: in_nonmetal_bump
  doc: "#.#  'bumps' nonmetal at radius plus this (default=0.125)"
  type: boolean
  inputBinding:
    prefix: -NONMETALBump
- id: in_segid_map
  doc: '"seg,c..."  assign chainID based on segment identifier field'
  type: boolean
  inputBinding:
    prefix: -SEGIDmap
- id: in_xplor
  doc: use Xplor conventions for naming polar hydrogens
  type: boolean
  inputBinding:
    prefix: -Xplor
- id: in_old_pdb
  doc: use the pre-remediation names for hydrogens
  type: boolean
  inputBinding:
    prefix: -OLDpdb
- id: in_bb_model
  doc: expects a backbone only model and will build HA hydrogens on Calpha truncated
    residues
  type: boolean
  inputBinding:
    prefix: -BBmodel
- id: in_no_con
  doc: drop conect records
  type: boolean
  inputBinding:
    prefix: -NOCon
- id: in_limit
  doc: '#           max seconds to spend in exhaustive search (default=600)'
  type: boolean
  inputBinding:
    prefix: -LIMIT
- id: in_no_ticks
  doc: do not display the set orientation ticker during processing
  type: boolean
  inputBinding:
    prefix: -NOTICKs
- id: in_show_score
  doc: display scores for each orientation considered during processing
  type: boolean
  inputBinding:
    prefix: -SHOWSCore
- id: in_fix
  doc: '"filename"   if given, file specifies orientations for adjustable groups'
  type: boolean
  inputBinding:
    prefix: -FIX
- id: in_db
  doc: "\"filename\"    file to search for het info\n(default=\"/usr/local//dat/reduce_wwPDB_het_dict.txt\"\
    )"
  type: boolean
  inputBinding:
    prefix: -DB
- id: in_string
  doc: pass reduce a string object from a script, must be quoted
  type: boolean
  inputBinding:
    prefix: -STRING
- id: in_quiet
  doc: do not write extra info to the console
  type: boolean
  inputBinding:
    prefix: -Quiet
- id: in_reference
  doc: display citation reference
  type: boolean
  inputBinding:
    prefix: -REFerence
- id: in_version
  doc: display the version of reduce
  type: boolean
  inputBinding:
    prefix: -Version
- id: in_changes
  doc: display the change log
  type: boolean
  inputBinding:
    prefix: -Changes
- id: in_help
  doc: the more extensive description of command line arguments
  type: boolean
  inputBinding:
    prefix: -Help
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_within
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reduce
