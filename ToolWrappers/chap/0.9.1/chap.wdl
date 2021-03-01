version 1.0

task Chap {
  input {
    Boolean? trajxtc_optinput_trajectory
    Boolean? topoltpr_optinput_structure
    Boolean? indexndx_optextra_index
    Boolean? time_first_frame
    Boolean? time_last_frame
    Boolean? dt
    Boolean? tu
    File? f_group
    Boolean? x_vg
    Boolean? sf
    String? sel_rpos
    String? sel_type
    String? sel_pathway
    String? sel_solvent
    File? out_filename
    Int? out_num_points
    Int? out_extra_p_dist
    Float? out_grid_dist
    Float? out_vis_tweak
    File? pf_method
    String? pf_v_dwr_database
    String? pf_v_dwr_fall_back
    File? pf_v_dwr_json
    String? pf_align_method
    Int? pf_probe_step
    Int? pf_max_free_dist
    Int? pf_max_probe_steps
    String? pf_sel_ipp
    String? pf_in_it_probe_pos
    Int? pf_chan_dir_vec
    File? pf_cut_off
    Int? sa_seed
    Int? sa_max_iter
    Float? sa_in_it_temp
    Float? sa_cooling_fac
    Int? sa_step
    Int? nm_max_iter
    Float? nm_in_it_shift
    File? pm_pl_margin
    String? pm_pf_sel
    String? de_method
    Float? de_res
    Int? de_bandwidth
    Int? de_bw_scale
    Int? de_eval_cut_off
    Int? hydro_phob_database
    String? hydro_phob_fall_back
    File? hydro_phob_json
    Float? hydro_phob_bandwidth
    String hh_hh_aaa
    String hh_hh_aa
  }
  command <<<
    chap \
      ~{hh_hh_aaa} \
      ~{hh_hh_aa} \
      ~{if (trajxtc_optinput_trajectory) then "-f" else ""} \
      ~{if (topoltpr_optinput_structure) then "-s" else ""} \
      ~{if (indexndx_optextra_index) then "-n" else ""} \
      ~{if (time_first_frame) then "-b" else ""} \
      ~{if (time_last_frame) then "-e" else ""} \
      ~{if (dt) then "-dt" else ""} \
      ~{if (tu) then "-tu" else ""} \
      ~{if defined(f_group) then ("-fgroup " +  '"' + f_group + '"') else ""} \
      ~{if (x_vg) then "-xvg" else ""} \
      ~{if (sf) then "-sf" else ""} \
      ~{if defined(sel_rpos) then ("-selrpos " +  '"' + sel_rpos + '"') else ""} \
      ~{if defined(sel_type) then ("-seltype " +  '"' + sel_type + '"') else ""} \
      ~{if defined(sel_pathway) then ("-sel-pathway " +  '"' + sel_pathway + '"') else ""} \
      ~{if defined(sel_solvent) then ("-sel-solvent " +  '"' + sel_solvent + '"') else ""} \
      ~{if defined(out_filename) then ("-out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if defined(out_num_points) then ("-out-num-points " +  '"' + out_num_points + '"') else ""} \
      ~{if defined(out_extra_p_dist) then ("-out-extrap-dist " +  '"' + out_extra_p_dist + '"') else ""} \
      ~{if defined(out_grid_dist) then ("-out-grid-dist " +  '"' + out_grid_dist + '"') else ""} \
      ~{if defined(out_vis_tweak) then ("-out-vis-tweak " +  '"' + out_vis_tweak + '"') else ""} \
      ~{if defined(pf_method) then ("-pf-method " +  '"' + pf_method + '"') else ""} \
      ~{if defined(pf_v_dwr_database) then ("-pf-vdwr-database " +  '"' + pf_v_dwr_database + '"') else ""} \
      ~{if defined(pf_v_dwr_fall_back) then ("-pf-vdwr-fallback " +  '"' + pf_v_dwr_fall_back + '"') else ""} \
      ~{if defined(pf_v_dwr_json) then ("-pf-vdwr-json " +  '"' + pf_v_dwr_json + '"') else ""} \
      ~{if defined(pf_align_method) then ("-pf-align-method " +  '"' + pf_align_method + '"') else ""} \
      ~{if defined(pf_probe_step) then ("-pf-probe-step " +  '"' + pf_probe_step + '"') else ""} \
      ~{if defined(pf_max_free_dist) then ("-pf-max-free-dist " +  '"' + pf_max_free_dist + '"') else ""} \
      ~{if defined(pf_max_probe_steps) then ("-pf-max-probe-steps " +  '"' + pf_max_probe_steps + '"') else ""} \
      ~{if defined(pf_sel_ipp) then ("-pf-sel-ipp " +  '"' + pf_sel_ipp + '"') else ""} \
      ~{if defined(pf_in_it_probe_pos) then ("-pf-init-probe-pos " +  '"' + pf_in_it_probe_pos + '"') else ""} \
      ~{if defined(pf_chan_dir_vec) then ("-pf-chan-dir-vec " +  '"' + pf_chan_dir_vec + '"') else ""} \
      ~{if defined(pf_cut_off) then ("-pf-cutoff " +  '"' + pf_cut_off + '"') else ""} \
      ~{if defined(sa_seed) then ("-sa-seed " +  '"' + sa_seed + '"') else ""} \
      ~{if defined(sa_max_iter) then ("-sa-max-iter " +  '"' + sa_max_iter + '"') else ""} \
      ~{if defined(sa_in_it_temp) then ("-sa-init-temp " +  '"' + sa_in_it_temp + '"') else ""} \
      ~{if defined(sa_cooling_fac) then ("-sa-cooling-fac " +  '"' + sa_cooling_fac + '"') else ""} \
      ~{if defined(sa_step) then ("-sa-step " +  '"' + sa_step + '"') else ""} \
      ~{if defined(nm_max_iter) then ("-nm-max-iter " +  '"' + nm_max_iter + '"') else ""} \
      ~{if defined(nm_in_it_shift) then ("-nm-init-shift " +  '"' + nm_in_it_shift + '"') else ""} \
      ~{if defined(pm_pl_margin) then ("-pm-pl-margin " +  '"' + pm_pl_margin + '"') else ""} \
      ~{if defined(pm_pf_sel) then ("-pm-pf-sel " +  '"' + pm_pf_sel + '"') else ""} \
      ~{if defined(de_method) then ("-de-method " +  '"' + de_method + '"') else ""} \
      ~{if defined(de_res) then ("-de-res " +  '"' + de_res + '"') else ""} \
      ~{if defined(de_bandwidth) then ("-de-bandwidth " +  '"' + de_bandwidth + '"') else ""} \
      ~{if defined(de_bw_scale) then ("-de-bw-scale " +  '"' + de_bw_scale + '"') else ""} \
      ~{if defined(de_eval_cut_off) then ("-de-eval-cutoff " +  '"' + de_eval_cut_off + '"') else ""} \
      ~{if defined(hydro_phob_database) then ("-hydrophob-database " +  '"' + hydro_phob_database + '"') else ""} \
      ~{if defined(hydro_phob_fall_back) then ("-hydrophob-fallback " +  '"' + hydro_phob_fall_back + '"') else ""} \
      ~{if defined(hydro_phob_json) then ("-hydrophob-json " +  '"' + hydro_phob_json + '"') else ""} \
      ~{if defined(hydro_phob_bandwidth) then ("-hydrophob-bandwidth " +  '"' + hydro_phob_bandwidth + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chap:0.9.1--h78a066a_0"
  }
  parameter_meta {
    trajxtc_optinput_trajectory: "[<.xtc/.trr/...>]  (traj.xtc)       (Opt.)\\nInput trajectory or single configuration: xtc trr cpt gro g96 pdb\\ntng"
    topoltpr_optinput_structure: "[<.tpr/.gro/...>]  (topol.tpr)      (Opt.)\\nInput structure: tpr gro g96 pdb brk ent"
    indexndx_optextra_index: "[<.ndx>]           (index.ndx)      (Opt.)\\nExtra index groups"
    time_first_frame: "<time>             (0)\\nFirst frame (ps) to read from trajectory"
    time_last_frame: "<time>             (0)\\nLast frame (ps) to read from trajectory"
    dt: "<time>             (0)\\nOnly use frame if t MOD dt == first time (ps)"
    tu: "<enum>             (ps)\\nUnit for time values: fs, ps, ns, us, ms, s"
    f_group: "Atoms stored in the trajectory file (if not set, assume first N\\natoms)"
    x_vg: "<enum>             (xmgrace)\\nPlot formatting: none, xmgrace, xmgr"
    sf: "<file>\\nProvide selections from files"
    sel_rpos: "(atom)\\nSelection reference positions: atom, res_com, res_cog, mol_com,\\nmol_cog, whole_res_com, whole_res_cog, whole_mol_com,\\nwhole_mol_cog, part_res_com, part_res_cog, part_mol_com,\\npart_mol_cog, dyn_res_com, dyn_res_cog, dyn_mol_com, dyn_mol_cog"
    sel_type: "(atom)\\nDefault selection output positions: atom, res_com, res_cog,\\nmol_com, mol_cog, whole_res_com, whole_res_cog, whole_mol_com,\\nwhole_mol_cog, part_res_com, part_res_cog, part_mol_com,\\npart_mol_cog, dyn_res_com, dyn_res_cog, dyn_mol_com, dyn_mol_cog"
    sel_pathway: "Reference group that defines the permeation pathway (usually\\n'Protein')"
    sel_solvent: "Group of small particles to calculate density of (usually 'Water')"
    out_filename: "(output)\\nFile name for output files without file extension."
    out_num_points: "(1000)\\nNumber of spatial sample points that are written to the JSON output\\nfile."
    out_extra_p_dist: "(0)\\nExtrapolation distance beyond the pathway endpoints for both JSON\\nand OBJ output."
    out_grid_dist: "(0.15)\\nControls the sampling distance of vertices on the pathway surface\\nwhich are subsequently interpolated to yield a smooth surface. Very\\nsmall values may yield visual artifacts."
    out_vis_tweak: "(0.1)\\nVisual tweaking factor that controls the smoothness of the pathway\\nsurface in the OBJ output. Varies between -1 and 1 (exculisvely),\\nwhere larger values result in a smoother surface. Negative values\\nmay result in visualisation artifacts."
    pf_method: "(inplane_optim)\\nPath finding method. The default inplane_optim implements the\\nalgorithm used in the HOLE programme, where the position of a probe\\nsphere is optimised in subsequent parallel planes so as to maximise\\nits radius. The alternative naive_cylindrical simply uses a\\ncylindrical volume as permeation pathway.: cylindrical,\\ninplane_optim"
    pf_v_dwr_database: "(hole_simple)\\nDatabase of van-der-Waals radii to be used in pore finding:\\nhole_amberuni, hole_bondi, hole_hardcore, hole_simple, hole_xplor,\\nuser"
    pf_v_dwr_fall_back: "(nan)\\nFallback van-der-Waals radius for atoms that are not listed in\\nvan-der-Waals radius database. Unless this is set to a positive\\nvalue, an error will be thrown if a pathway-forming atom has no\\nassociated van-der-Waals radius in the database."
    pf_v_dwr_json: "JSON file with user defined van-der-Waals radii. Will be ignored\\nunless -pf-vdwr-database is set to 'user'."
    pf_align_method: "(ipp)\\nMethod for aligning pathway coordinates across time steps: none,\\nipp"
    pf_probe_step: "(0.1)\\nStep length for probe movement."
    pf_max_free_dist: "(1)\\nMaximum radius of pore."
    pf_max_probe_steps: "(10000)\\nMaximum number of steps the probe is moved in either direction."
    pf_sel_ipp: "Selection of atoms whose COM will be used as initial probe\\nposition. If not set, the selection specified with 'sel-pathway'\\nwill be used."
    pf_in_it_probe_pos: "(nan nan nan)\\nInitial position of probe in probe-based pore finding algorithms.\\nIf set explicitly, it will overwrite the COM-based initial position\\nset with the ippSelflag."
    pf_chan_dir_vec: "(0 0 1)\\nChannel direction vector. Will be normalised to unit vector\\ninternally."
    pf_cut_off: "(nan)\\nCutoff for distance searches in path finding algorithm. A value of\\nzero or less means no cutoff is applied. If unset, an appropriate\\ncutoff is determined automatically."
    sa_seed: "(0)\\nSeed used in pseudo random number generation for simulated\\nannealing. If not set explicitly, a random seed is used."
    sa_max_iter: "(0)\\nNumber of cooling iterations in one simulated annealing run."
    sa_in_it_temp: "(0.1)\\nSimulated annealing initial temperature."
    sa_cooling_fac: "(0.98)\\nSimulated annealing cooling factor."
    sa_step: "(0.001)\\nStep length factor used in candidate generation."
    nm_max_iter: "(100)\\nNumber of Nelder-Mead simplex iterations in path finding algorithm."
    nm_in_it_shift: "(0.1)\\nDistance of vertices in initial Nelder-Mead simplex."
    pm_pl_margin: "(0.75)\\nMargin for determining pathway lining residues. A residue is\\nconsidered to be pathway lining if it is no further than the local\\npath radius plus this margin from the pathway's centre line."
    pm_pf_sel: "(name CA)\\nSelection string that determines the group of atoms in each residue\\nwhose centre of geometry's distance from the centre line is used to\\ndetermine if a residue is pore-facing."
    de_method: "(kernel)\\nMethod used for estimating the probability density of the solvent\\nparticles along the permeation pathway: histogram, kernel"
    de_res: "(0.01)\\nSpatial resolution of the density estimator. In case of a\\nhistogram, this is the bin width, in case of a kernel density\\nestimator, this is the spacing of the evaluation points."
    de_bandwidth: "(-1)\\nBandwidth for the kernel density estimator. Ignored for other\\nmethods. If negative or zero, bandwidth will be determined\\nautomatically to minimise the asymptotic mean integrated squared\\nerror (AMISE)."
    de_bw_scale: "(1)\\nScaling factor for the band width. Useful to set a bandwidth\\nrelative to the AMISE-optimal value."
    de_eval_cut_off: "(5)\\nEvaluation range cutoff for kernel density estimator in multiples\\nof bandwidth. Ignored for other methods. Ensures that the density\\nfalls off smoothly to zero outside the data range."
    hydro_phob_database: "(wimley_white_1996)\\nDatabase of hydrophobicity scale for pore forming residues:\\nhessa_2005, kyte_doolittle_1982, monera_1995, moon_2011,\\nwimley_white_1996, zhu_2016, memprotmd, user"
    hydro_phob_fall_back: "(nan)\\nFallback hydrophobicity for residues in the pathway defining group.\\nIf unset (nan), residues missing in the database will cause an\\nerror."
    hydro_phob_json: "JSON file with user defined hydrophobicity scale. Will be ignored\\nunless -hydrophobicity-database is set to 'user'."
    hydro_phob_bandwidth: "(0.35)\\nBandwidth for hydrophobicity kernel."
    hh_hh_aaa: "HH     HH    AAA    PPPPPPPP  "
    hh_hh_aa: "HH     HH AA     AA PP        "
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}