class: CommandLineTool
id: chap.cwl
inputs:
- id: in_trajxtc_optinput_trajectory
  doc: "[<.xtc/.trr/...>]  (traj.xtc)       (Opt.)\nInput trajectory or single configuration:\
    \ xtc trr cpt gro g96 pdb\ntng"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_topoltpr_optinput_structure
  doc: "[<.tpr/.gro/...>]  (topol.tpr)      (Opt.)\nInput structure: tpr gro g96 pdb\
    \ brk ent"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_indexndx_optextra_index
  doc: "[<.ndx>]           (index.ndx)      (Opt.)\nExtra index groups"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_time_first_frame
  doc: "<time>             (0)\nFirst frame (ps) to read from trajectory"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_time_last_frame
  doc: "<time>             (0)\nLast frame (ps) to read from trajectory"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_dt
  doc: "<time>             (0)\nOnly use frame if t MOD dt == first time (ps)"
  type: boolean?
  inputBinding:
    prefix: -dt
- id: in_tu
  doc: "<enum>             (ps)\nUnit for time values: fs, ps, ns, us, ms, s"
  type: boolean?
  inputBinding:
    prefix: -tu
- id: in_f_group
  doc: "Atoms stored in the trajectory file (if not set, assume first N\natoms)"
  type: File?
  inputBinding:
    prefix: -fgroup
- id: in_x_vg
  doc: "<enum>             (xmgrace)\nPlot formatting: none, xmgrace, xmgr"
  type: boolean?
  inputBinding:
    prefix: -xvg
- id: in_sf
  doc: "<file>\nProvide selections from files"
  type: boolean?
  inputBinding:
    prefix: -sf
- id: in_sel_rpos
  doc: "(atom)\nSelection reference positions: atom, res_com, res_cog, mol_com,\n\
    mol_cog, whole_res_com, whole_res_cog, whole_mol_com,\nwhole_mol_cog, part_res_com,\
    \ part_res_cog, part_mol_com,\npart_mol_cog, dyn_res_com, dyn_res_cog, dyn_mol_com,\
    \ dyn_mol_cog"
  type: string?
  inputBinding:
    prefix: -selrpos
- id: in_sel_type
  doc: "(atom)\nDefault selection output positions: atom, res_com, res_cog,\nmol_com,\
    \ mol_cog, whole_res_com, whole_res_cog, whole_mol_com,\nwhole_mol_cog, part_res_com,\
    \ part_res_cog, part_mol_com,\npart_mol_cog, dyn_res_com, dyn_res_cog, dyn_mol_com,\
    \ dyn_mol_cog"
  type: string?
  inputBinding:
    prefix: -seltype
- id: in_sel_pathway
  doc: "Reference group that defines the permeation pathway (usually\n'Protein')"
  type: string?
  inputBinding:
    prefix: -sel-pathway
- id: in_sel_solvent
  doc: Group of small particles to calculate density of (usually 'Water')
  type: string?
  inputBinding:
    prefix: -sel-solvent
- id: in_out_filename
  doc: "(output)\nFile name for output files without file extension."
  type: File?
  inputBinding:
    prefix: -out-filename
- id: in_out_num_points
  doc: "(1000)\nNumber of spatial sample points that are written to the JSON output\n\
    file."
  type: long?
  inputBinding:
    prefix: -out-num-points
- id: in_out_extra_p_dist
  doc: "(0)\nExtrapolation distance beyond the pathway endpoints for both JSON\nand\
    \ OBJ output."
  type: long?
  inputBinding:
    prefix: -out-extrap-dist
- id: in_out_grid_dist
  doc: "(0.15)\nControls the sampling distance of vertices on the pathway surface\n\
    which are subsequently interpolated to yield a smooth surface. Very\nsmall values\
    \ may yield visual artifacts."
  type: double?
  inputBinding:
    prefix: -out-grid-dist
- id: in_out_vis_tweak
  doc: "(0.1)\nVisual tweaking factor that controls the smoothness of the pathway\n\
    surface in the OBJ output. Varies between -1 and 1 (exculisvely),\nwhere larger\
    \ values result in a smoother surface. Negative values\nmay result in visualisation\
    \ artifacts."
  type: double?
  inputBinding:
    prefix: -out-vis-tweak
- id: in_pf_method
  doc: "(inplane_optim)\nPath finding method. The default inplane_optim implements\
    \ the\nalgorithm used in the HOLE programme, where the position of a probe\nsphere\
    \ is optimised in subsequent parallel planes so as to maximise\nits radius. The\
    \ alternative naive_cylindrical simply uses a\ncylindrical volume as permeation\
    \ pathway.: cylindrical,\ninplane_optim"
  type: File?
  inputBinding:
    prefix: -pf-method
- id: in_pf_v_dwr_database
  doc: "(hole_simple)\nDatabase of van-der-Waals radii to be used in pore finding:\n\
    hole_amberuni, hole_bondi, hole_hardcore, hole_simple, hole_xplor,\nuser"
  type: string?
  inputBinding:
    prefix: -pf-vdwr-database
- id: in_pf_v_dwr_fall_back
  doc: "(nan)\nFallback van-der-Waals radius for atoms that are not listed in\nvan-der-Waals\
    \ radius database. Unless this is set to a positive\nvalue, an error will be thrown\
    \ if a pathway-forming atom has no\nassociated van-der-Waals radius in the database."
  type: string?
  inputBinding:
    prefix: -pf-vdwr-fallback
- id: in_pf_v_dwr_json
  doc: "JSON file with user defined van-der-Waals radii. Will be ignored\nunless -pf-vdwr-database\
    \ is set to 'user'."
  type: File?
  inputBinding:
    prefix: -pf-vdwr-json
- id: in_pf_align_method
  doc: "(ipp)\nMethod for aligning pathway coordinates across time steps: none,\n\
    ipp"
  type: string?
  inputBinding:
    prefix: -pf-align-method
- id: in_pf_probe_step
  doc: "(0.1)\nStep length for probe movement."
  type: long?
  inputBinding:
    prefix: -pf-probe-step
- id: in_pf_max_free_dist
  doc: "(1)\nMaximum radius of pore."
  type: long?
  inputBinding:
    prefix: -pf-max-free-dist
- id: in_pf_max_probe_steps
  doc: "(10000)\nMaximum number of steps the probe is moved in either direction."
  type: long?
  inputBinding:
    prefix: -pf-max-probe-steps
- id: in_pf_sel_ipp
  doc: "Selection of atoms whose COM will be used as initial probe\nposition. If not\
    \ set, the selection specified with 'sel-pathway'\nwill be used."
  type: string?
  inputBinding:
    prefix: -pf-sel-ipp
- id: in_pf_in_it_probe_pos
  doc: "(nan nan nan)\nInitial position of probe in probe-based pore finding algorithms.\n\
    If set explicitly, it will overwrite the COM-based initial position\nset with\
    \ the ippSelflag."
  type: string?
  inputBinding:
    prefix: -pf-init-probe-pos
- id: in_pf_chan_dir_vec
  doc: "(0 0 1)\nChannel direction vector. Will be normalised to unit vector\ninternally."
  type: long?
  inputBinding:
    prefix: -pf-chan-dir-vec
- id: in_pf_cut_off
  doc: "(nan)\nCutoff for distance searches in path finding algorithm. A value of\n\
    zero or less means no cutoff is applied. If unset, an appropriate\ncutoff is determined\
    \ automatically."
  type: File?
  inputBinding:
    prefix: -pf-cutoff
- id: in_sa_seed
  doc: "(0)\nSeed used in pseudo random number generation for simulated\nannealing.\
    \ If not set explicitly, a random seed is used."
  type: long?
  inputBinding:
    prefix: -sa-seed
- id: in_sa_max_iter
  doc: "(0)\nNumber of cooling iterations in one simulated annealing run."
  type: long?
  inputBinding:
    prefix: -sa-max-iter
- id: in_sa_in_it_temp
  doc: "(0.1)\nSimulated annealing initial temperature."
  type: double?
  inputBinding:
    prefix: -sa-init-temp
- id: in_sa_cooling_fac
  doc: "(0.98)\nSimulated annealing cooling factor."
  type: double?
  inputBinding:
    prefix: -sa-cooling-fac
- id: in_sa_step
  doc: "(0.001)\nStep length factor used in candidate generation."
  type: long?
  inputBinding:
    prefix: -sa-step
- id: in_nm_max_iter
  doc: "(100)\nNumber of Nelder-Mead simplex iterations in path finding algorithm."
  type: long?
  inputBinding:
    prefix: -nm-max-iter
- id: in_nm_in_it_shift
  doc: "(0.1)\nDistance of vertices in initial Nelder-Mead simplex."
  type: double?
  inputBinding:
    prefix: -nm-init-shift
- id: in_pm_pl_margin
  doc: "(0.75)\nMargin for determining pathway lining residues. A residue is\nconsidered\
    \ to be pathway lining if it is no further than the local\npath radius plus this\
    \ margin from the pathway's centre line."
  type: File?
  inputBinding:
    prefix: -pm-pl-margin
- id: in_pm_pf_sel
  doc: "(name CA)\nSelection string that determines the group of atoms in each residue\n\
    whose centre of geometry's distance from the centre line is used to\ndetermine\
    \ if a residue is pore-facing."
  type: string?
  inputBinding:
    prefix: -pm-pf-sel
- id: in_de_method
  doc: "(kernel)\nMethod used for estimating the probability density of the solvent\n\
    particles along the permeation pathway: histogram, kernel"
  type: string?
  inputBinding:
    prefix: -de-method
- id: in_de_res
  doc: "(0.01)\nSpatial resolution of the density estimator. In case of a\nhistogram,\
    \ this is the bin width, in case of a kernel density\nestimator, this is the spacing\
    \ of the evaluation points."
  type: double?
  inputBinding:
    prefix: -de-res
- id: in_de_bandwidth
  doc: "(-1)\nBandwidth for the kernel density estimator. Ignored for other\nmethods.\
    \ If negative or zero, bandwidth will be determined\nautomatically to minimise\
    \ the asymptotic mean integrated squared\nerror (AMISE)."
  type: long?
  inputBinding:
    prefix: -de-bandwidth
- id: in_de_bw_scale
  doc: "(1)\nScaling factor for the band width. Useful to set a bandwidth\nrelative\
    \ to the AMISE-optimal value."
  type: long?
  inputBinding:
    prefix: -de-bw-scale
- id: in_de_eval_cut_off
  doc: "(5)\nEvaluation range cutoff for kernel density estimator in multiples\nof\
    \ bandwidth. Ignored for other methods. Ensures that the density\nfalls off smoothly\
    \ to zero outside the data range."
  type: long?
  inputBinding:
    prefix: -de-eval-cutoff
- id: in_hydro_phob_database
  doc: "(wimley_white_1996)\nDatabase of hydrophobicity scale for pore forming residues:\n\
    hessa_2005, kyte_doolittle_1982, monera_1995, moon_2011,\nwimley_white_1996, zhu_2016,\
    \ memprotmd, user"
  type: long?
  inputBinding:
    prefix: -hydrophob-database
- id: in_hydro_phob_fall_back
  doc: "(nan)\nFallback hydrophobicity for residues in the pathway defining group.\n\
    If unset (nan), residues missing in the database will cause an\nerror."
  type: string?
  inputBinding:
    prefix: -hydrophob-fallback
- id: in_hydro_phob_json
  doc: "JSON file with user defined hydrophobicity scale. Will be ignored\nunless\
    \ -hydrophobicity-database is set to 'user'."
  type: File?
  inputBinding:
    prefix: -hydrophob-json
- id: in_hydro_phob_bandwidth
  doc: "(0.35)\nBandwidth for hydrophobicity kernel."
  type: double?
  inputBinding:
    prefix: -hydrophob-bandwidth
- id: in_hh_hh_aaa
  doc: 'HH     HH    AAA    PPPPPPPP  '
  type: string
  inputBinding:
    position: 0
- id: in_hh_hh_aa
  doc: 'HH     HH AA     AA PP        '
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "(output)\nFile name for output files without file extension."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chap:0.9.1--h78a066a_0
cwlVersion: v1.1
baseCommand:
- chap
