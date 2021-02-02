class: CommandLineTool
id: apt_probeset_summarize.cwl
inputs:
- id: in_verbose
  doc: "verbose to be with status messages 0 -\nquiet, 1 - usual messages, 2 - more\n\
    messages. [default '1']"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_console_off
  doc: "off the default messages to the\nconsole but not logging or sockets.\n[default\
    \ 'false']"
  type: string
  inputBinding:
    prefix: --console-off
- id: in_use_socket
  doc: "and port to print messages over in\nlocalhost:port format [default '']"
  type: string
  inputBinding:
    prefix: --use-socket
- id: in_force
  doc: "various checks including chip\ntypes. Consider using --chip-type option\n\
    rather than --force. [default 'false']"
  type: string
  inputBinding:
    prefix: --force
- id: in_throw_exception
  doc: "an exception rather than calling\nexit() on error. Useful for debugging. This\n\
    option is intended for command line use\nonly. If you are wrapping an Engine and\n\
    want exceptions thrown, then you should\ncall Err::setThrowStatus(true) to ensure\n\
    that all Err::errAbort() calls result in an\nexception. [default 'false']"
  type: string
  inputBinding:
    prefix: --throw-exception
- id: in_analysis_files_path
  doc: "path for analysis library files.\nWill override AFFX_ANALYSIS_FILES_PATH\n\
    environment variable. [default '']"
  type: File
  inputBinding:
    prefix: --analysis-files-path
- id: in_xml_file
  doc: "parameters in XML format (Will\noverride command line settings). [default\n\
    '']"
  type: File
  inputBinding:
    prefix: --xml-file
- id: in_temp_dir
  doc: "for temporary files when working\noff disk. Using network mounted drives is\n\
    not advised. When not set, the output\nfolder will be used. The defaut is\ntypically\
    \ the output directory or the\ncurrent working directory. [default '']"
  type: Directory
  inputBinding:
    prefix: --temp-dir
- id: in_out_dir
  doc: "for output files. Defaults to\ncurrent working directory. [default '.']"
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_log_file
  doc: "name of the log file. Generally\ndefaults to the program name in the out-dir\n\
    folder. [default '']"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_command_line
  doc: command line executed. [default '']
  type: string
  inputBinding:
    prefix: --command-line
- id: in_exec_guid
  doc: GUID for the process. [default '']
  type: string
  inputBinding:
    prefix: --exec-guid
- id: in_program_name
  doc: name of the program [default '']
  type: string
  inputBinding:
    prefix: --program-name
- id: in_program_company
  doc: "company providing the program [default\n'']"
  type: string
  inputBinding:
    prefix: --program-company
- id: in_program_version
  doc: version of the program [default '']
  type: string
  inputBinding:
    prefix: --program-version
- id: in_program_cvs_id
  doc: CVS version of the program [default '']
  type: string
  inputBinding:
    prefix: --program-cvs-id
- id: in_version_to_report
  doc: "version to report in the output files.\n[default '']"
  type: string
  inputBinding:
    prefix: --version-to-report
- id: in_free_mem_at_start
  doc: "much physical memory was available when\nthe engine run started. [default\
    \ '0']"
  type: long
  inputBinding:
    prefix: --free-mem-at-start
- id: in_meta_data_info
  doc: "data in key=value pair that will be\noutput in headers. [default '']"
  type: string
  inputBinding:
    prefix: --meta-data-info
- id: in_cel_files
  doc: "file specifying cel files to process,\none per line with the first line being\n\
    'cel_files'. [default '']"
  type: File
  inputBinding:
    prefix: --cel-files
- id: in_clf_file_dot
  doc: sets --names.
  type: File
  inputBinding:
    prefix: --clf-file.
- id: in_spf_file
  doc: "defining probe sets in spf (simple\nprobe format) which is like a text cdf\n\
    file. [default '']"
  type: File
  inputBinding:
    prefix: --spf-file
- id: in_pgf_file
  doc: defining probe sets. [default '']
  type: File
  inputBinding:
    prefix: --pgf-file
- id: in_clf_file
  doc: "defining x,y <-> probe id conversion.\nRequired when using PGF file. [default\
    \ '']"
  type: File
  inputBinding:
    prefix: --clf-file
- id: in_bgp_file
  doc: "defining probes to be used for GC\nbackground. [default '']"
  type: File
  inputBinding:
    prefix: --bgp-file
- id: in_probe_set_ids
  doc: "specifying probe sets to summarize.\n[default '']"
  type: File
  inputBinding:
    prefix: --probeset-ids
- id: in_meta_probe_sets
  doc: "containing meta probeset definitions.\nFile must contain a probeset_id column\
    \ and\na probeset_list column. [default '']"
  type: File
  inputBinding:
    prefix: --meta-probesets
- id: in_probe_class_file
  doc: "containing probe_id (1-based) of\nprobes and a 'class' designation. Used to\n\
    compute mean probe intensity by class for\nreport file. [default '']"
  type: File
  inputBinding:
    prefix: --probe-class-file
- id: in_qc_probe_sets
  doc: "with probeset_id(name) and group_name\ncolumns specifying subsets of probesets\
    \ to\ncompute qc stats for. [default '']"
  type: File
  inputBinding:
    prefix: --qc-probesets
- id: in_chip_type
  doc: "types to check library and CEL files\nagainst. Can be specified multiple times.\n\
    The first one is propigated as the chip\ntype in the output files. Warning, use\
    \ of\nthis option will override the usual check\nbetween chip types found in the\
    \ library\nfiles and cel files. You should use this\noption instead of --force\
    \ when possible.\n[default '']"
  type: string
  inputBinding:
    prefix: --chip-type
- id: in_use_pgf_names
  doc: "the probeset_names instead of\nprobeset_id column in the PGF file for\noutput.\
    \ [default 'false']"
  type: File
  inputBinding:
    prefix: --use-pgf-names
- id: in_cc_chp_output
  doc: "results in directory called 'cc-chp'\nunder out-dir. This makes one AGCC\n\
    Expression CHP file per cel file analyzed.\n[default 'false']"
  type: File
  inputBinding:
    prefix: --cc-chp-output
- id: in_xda_chp_output
  doc: "resulting calls in directory called\n'chp' under out-dir. This makes one GCOS\n\
    XDA CHP file per cel file analyzed.\n[default 'false']"
  type: File
  inputBinding:
    prefix: --xda-chp-output
- id: in_cc_md_chp_output
  doc: "resulting calls in directory called\n'cc-md-chp' under out-dir. This makes\
    \ one\nAGCC Multi Data CHP file per cel file\nanalyzed. [default 'false']"
  type: File
  inputBinding:
    prefix: --cc-md-chp-output
- id: in_cc_chp_out_dir
  doc: "the default location for chp\noutput. [default '']"
  type: string
  inputBinding:
    prefix: --cc-chp-out-dir
- id: in_xda_chp_out_dir
  doc: "the default location for chp\noutput. [default '']"
  type: string
  inputBinding:
    prefix: --xda-chp-out-dir
- id: in_cc_md_chp_out_dir
  doc: "the default location for chp\noutput. [default '']"
  type: string
  inputBinding:
    prefix: --cc-md-chp-out-dir
- id: in_subsample_report
  doc: "subsamples of the data intensities,\nsummaries and residuals for error checking\n\
    downstream. [default 'false']"
  type: string
  inputBinding:
    prefix: --subsample-report
- id: in_report_file
  doc: "the default report file name.\n[default '']"
  type: File
  inputBinding:
    prefix: --report-file
- id: in_analysis
  doc: "representing analysis pathway\ndesired. For example:\n'quant-norm,pm-gcbg,plier'.\
    \ Prepackaged\nanalysis such as 'plier-gcbg-sketch',\n'plier-gcbg', 'plier-mm-sketch',\n\
    'plier-mm', 'rma-sketch', and 'rma' can be\nspecified. Multiple analysis allowed\
    \ at\nsame time. When using quantile\nnormalization, you may need to use the\n\
    sketch option to avoid running out of\nmemory. [default '']"
  type: string
  inputBinding:
    prefix: --analysis
- id: in_summaries
  doc: "expression summaries in text table\nformat. [default 'true']"
  type: string
  inputBinding:
    prefix: --summaries
- id: in_feat_effects
  doc: "feature effects when available. By\nconvention med-polish feature effects\
    \ have\ntotal probeset median added to them, see\nRMA module for details [default\
    \ 'false']"
  type: string
  inputBinding:
    prefix: --feat-effects
- id: in_use_feat_eff
  doc: "defining a plier feature effect for\neach probe. Note that precomputed effects\n\
    should only be used for an appropriately\nsimilar analysis (i.e. feature effects\
    \ for\npm-only may be different than for pm-mm).\nCurrently a probe is expected\
    \ to be in only\na single probeset. This option does not\nwork for IterPlier or\
    \ SEA. [default '']"
  type: File
  inputBinding:
    prefix: --use-feat-eff
- id: in_feat_details
  doc: "probe by chip specific details\n(often residuals) when available. [default\n\
    'false']"
  type: string
  inputBinding:
    prefix: --feat-details
- id: in_target_sketch
  doc: "specifying a target distribution to\nuse for quantile normalization. [default\n\
    '']"
  type: File
  inputBinding:
    prefix: --target-sketch
- id: in_write_sketch
  doc: "the quantile normalization\ndistribution (or sketch) to a file for\nreuse\
    \ with target-sketch option. WARNING:\nIf more than one -a option generates a\n\
    target sketch file, it is not deterministic\nwhich file will be retained by the\
    \ OS if\nthe target sketch files have the same name.\n[default 'false']"
  type: File
  inputBinding:
    prefix: --write-sketch
- id: in_reference_profile
  doc: profile [default '']
  type: string
  inputBinding:
    prefix: --reference-profile
- id: in_write_profile
  doc: reference profile. [default 'false']
  type: string
  inputBinding:
    prefix: --write-profile
- id: in_set_analysis_name
  doc: "set the analysis name. This\naffects output file names (ie prefix) and\nvarious\
    \ meta info. [default '']"
  type: File
  inputBinding:
    prefix: --set-analysis-name
- id: in_precision
  doc: "many digits of precision to use after\ndecimal. [default '5']"
  type: double
  inputBinding:
    prefix: --precision
- id: in_explain
  doc: a particular operation (i.e.
  type: string
  inputBinding:
    prefix: --explain
- id: in_kill_list
  doc: "not use the PM probes specified in file\nfor computing results. [experimental]\n\
    [default '']"
  type: File
  inputBinding:
    prefix: --kill-list
- id: in_use_disk
  doc: "CEL intensities to be analyzed on\ndisk. [default 'true']"
  type: string
  inputBinding:
    prefix: --use-disk
- id: in_disk_cache
  doc: "of intensity memory cache in millions\nof intensities (when --use-disk=true).\n\
    [default '50']"
  type: long
  inputBinding:
    prefix: --disk-cache
- id: in_store_duplicate_probes
  doc: "intensities for probes appearing in\nmultiple probesets in memory (Prevents\
    \ page\nthrashing. Is a bad idea for Axiom. Turned\non automatically when using\
    \ meta-probesets)\n[default 'false']"
  type: string
  inputBinding:
    prefix: --store-duplicate-probes
- id: in_a_five_global_file
  doc: "for the A5 global output file.\n[Experimental] [default '']"
  type: File
  inputBinding:
    prefix: --a5-global-file
- id: in_a_five_global_file_no_replace
  doc: "or create rather than replace.\n[Experimental] [default 'false']"
  type: File
  inputBinding:
    prefix: --a5-global-file-no-replace
- id: in_a_five_group
  doc: "name where to put results in the A5\noutput files. Defaults to '/'.\n[Experimental]\
    \ [default '']"
  type: long
  inputBinding:
    prefix: --a5-group
- id: in_a_five_summaries
  doc: "the summary values from the\nquantifcation method for each allele in A5\n\
    format. [Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-summaries
- id: in_a_five_summaries_use_global
  doc: "the global A5 file for summaries.\n[Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-summaries-use-global
- id: in_a_five_feature_effects
  doc: "feature effects in A5 format.\n[Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-feature-effects
- id: in_a_five_feature_effects_use_global
  doc: "the global A5 file for feature\neffects.[Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-feature-effects-use-global
- id: in_a_five_feature_details
  doc: "feature level residuals in A5\nformat. [Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-feature-details
- id: in_a_five_feature_details_use_global
  doc: "the global A5 file for residuals.\n[Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-feature-details-use-global
- id: in_a_five_sketch
  doc: normalization sketch in A5 format.
  type: long
  inputBinding:
    prefix: --a5-sketch
- id: in_a_five_sketch_use_global
  doc: "the sketch in the global A5 output\nfile. [Experimental] [default 'false']"
  type: File
  inputBinding:
    prefix: --a5-sketch-use-global
- id: in_a_five_global_input_file
  doc: "for the group in the global input\nfile.[Experimental] [default '']"
  type: File
  inputBinding:
    prefix: --a5-global-input-file
- id: in_a_five_input_group
  doc: name for input. Defaults to
  type: long
  inputBinding:
    prefix: --a5-input-group
- id: in_a_five_sketch_input_global
  doc: "the sketch from the global A5 input\nfile. [Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-sketch-input-global
- id: in_a_five_sketch_input_file
  doc: "the sketch from the an A5 input file.\n[Experimental] [default '']"
  type: File
  inputBinding:
    prefix: --a5-sketch-input-file
- id: in_a_five_sketch_input_group
  doc: "name to read the sketch from.\nDefaults to --a5-input-group.\n[Experimental]\
    \ [default '']"
  type: long
  inputBinding:
    prefix: --a5-sketch-input-group
- id: in_a_five_sketch_input_name
  doc: "name of the data section. Defaults to\n'target-sketch'. [Experimental] [default\n\
    '']"
  type: long
  inputBinding:
    prefix: --a5-sketch-input-name
- id: in_a_five_feature_effects_input_global
  doc: "the feature effects global A5 input\nfile. [Experimental] [default 'false']"
  type: long
  inputBinding:
    prefix: --a5-feature-effects-input-global
- id: in_a_five_feature_effects_input_file
  doc: "the feature effects from the an A5\ninput file. [Experimental] [default '']"
  type: File
  inputBinding:
    prefix: --a5-feature-effects-input-file
- id: in_a_five_feature_effects_input_group
  doc: "name to read the feature effects\nfrom. Defaults to --a5-input-group.\n[Experimental]\
    \ [default '']"
  type: long
  inputBinding:
    prefix: --a5-feature-effects-input-group
- id: in_a_five_feature_effects_input_name
  doc: "name of the data section. Defaults to\nXXX.feature-response where XXX is the\n\
    analysis name and quant method. IE\n'brlmm-p.plier'. [Experimental] [default\n\
    '']"
  type: long
  inputBinding:
    prefix: --a5-feature-effects-input-name
- id: in_cels
  doc: files to process. [default '']
  type: string
  inputBinding:
    prefix: --cels
- id: in_result_files
  doc: "file names to output. Must be paired\nwith cels. [default '']"
  type: File
  inputBinding:
    prefix: --result-files
- id: in_annotation_file
  doc: "Annotation database file. [default\n'']"
  type: File
  inputBinding:
    prefix: --annotation-file
- id: in_time_start
  doc: "time the engine run was started\n[default '']"
  type: string
  inputBinding:
    prefix: --time-start
- id: in_time_end
  doc: time the engine run ended [default '']
  type: string
  inputBinding:
    prefix: --time-end
- id: in_time_run_minutes
  doc: run time in minutes. [default '']
  type: string
  inputBinding:
    prefix: --time-run-minutes
- id: in_analysis_guid
  doc: GUID for the analysis run. [default '']
  type: string
  inputBinding:
    prefix: --analysis-guid
- id: in_rma_bg
  doc: "Performs an RMA style background adjustment \nas described in Irizarry et\
    \ al 2003."
  type: string
  inputBinding:
    position: 0
- id: in_quant_norm
  doc: "Class for doing quantile normalization. Can \ndo sketch and full quantile\
    \ (just set sketch\nto chip size or zero) and supports\nbioconductor compatibility."
  type: string
  inputBinding:
    position: 1
- id: in_artifact_reduction
  doc: 'Class for artifact reduction. '
  type: string
  inputBinding:
    position: 2
- id: in_med_norm
  doc: "Class for doing median normalization. Adjust\nintensities such that all chips\
    \ have the same\nmedian (or average)."
  type: string
  inputBinding:
    position: 3
- id: in_adapter_type_norm
  doc: "Class for doing adapter type normalization.\nAdjust intensities by adapter\
    \ type."
  type: string
  inputBinding:
    position: 4
- id: in_gc_bg
  doc: "Subtract bacground based on median intensity\nof probes with similar GC content."
  type: string
  inputBinding:
    position: 5
- id: in_gc_correction
  doc: Correct feature intensity for variations in
  type: string
  inputBinding:
    position: 6
- id: in_gc_count_dot
  doc: 'scale-intensities    Scale cel intensities. '
  type: string
  inputBinding:
    position: 7
- id: in_intensity_reporter
  doc: 'Class for dumping intensity values to a file. '
  type: string
  inputBinding:
    position: 8
- id: in_no_trans
  doc: Placeholder chipstream that does no
  type: string
  inputBinding:
    position: 9
- id: in_transformation
  doc: 'Pm Intensity Adjustments:'
  type: string
  inputBinding:
    position: 10
- id: in_pm_only
  doc: 'No adjustment. Just uses unmodified PM intensity values. '
  type: string
  inputBinding:
    position: 11
- id: in_pm_mm
  doc: "Use mismatch probe as adjustment for perfect match. Has\nstrength of being\
    \ unbiased, but often the mismatch probe\nbinds the match target."
  type: string
  inputBinding:
    position: 12
- id: in_pm_gc_bg
  doc: "Do an adjustment based on the median intensity of probes\nwith similar GC\
    \ content."
  type: string
  inputBinding:
    position: 13
- id: in_pm_sum
  doc: 'Add itensity of PM probe for other allele to PM probes. '
  type: string
  inputBinding:
    position: 14
- id: in_plier
  doc: "The PLIER (Probe Logarithmic Error Intensity \nEstimate) method produces an\
    \ improved signal by\naccounting for experimentally observed patterns in\nfeature\
    \ behavior and handling error at the\nappropriately at low and high signal values.\
    \ This\nversion of PLIER differs from the previous version by\nthe addition of\
    \ a SafteyZero, NumericalTolerance, and\nFixPrecomputed. These options are intended\
    \ to improve\nthe stability of PLIER results when using precomputed\nfeature reponse\
    \ values. To get the older PLIER\nbehavior set SafetyZero to 0.0, NumericalTolerance\
    \ to\n0.0, and FixPrecomputed to false."
  type: string
  inputBinding:
    position: 0
- id: in_sea
  doc: "The SEA (Simplified Expression Analysis) method\nprovides a simple signal\
    \ estimate, using the\ninitialization algorithm from the PLIER (Probe\nLogarithmic\
    \ Error Intensity Estimate) method and\nomitting the PLIER parameter fitting.\
    \ SEA is useful\nfor single chip signal estimation. The version of\nPLIER used\
    \ by SEA differs from the previous version\nby the addition of a SafteyZero, NumericalTolerance,\n\
    and FixPrecomputed. These options are intended to\nimprove the stability of PLIER\
    \ results when using\nprecomputed feature reponse values. To get the older\nPLIER\
    \ behavior set SafetyZero to 0.0,\nNumericalTolerance to 0.0, and FixPrecomputed\
    \ to\nfalse."
  type: string
  inputBinding:
    position: 1
- id: in_iter_plier
  doc: "Do probe set quantification estimate by iteratively\ncalling PLIER with the\
    \ probes that best correlate\nwith signal estimate. The version of PLIER used\
    \ by\nIterPLIER differs from the previous version by the\naddition of a SafteyZero,\
    \ NumericalTolerance, and\nFixPrecomputed. These options are intended to improve\n\
    the stability of PLIER results when using precomputed\nfeature reponse values.\
    \ To get the older PLIER\nbehavior set SafetyZero to 0.0, NumericalTolerance to\n\
    0.0, and FixPrecomputed to false."
  type: string
  inputBinding:
    position: 2
- id: in_med_polish
  doc: "Performs a median polish to estimate target and probe\neffects. Resulting\
    \ summaries are in log2 space by\ndefault. Used in summary step of RMA as described\
    \ in\nIrizarry et al 2003."
  type: string
  inputBinding:
    position: 3
- id: in_dab_g
  doc: "Calculates the p-value that the intensities in a\nprobeset could have been\
    \ observed by chance in a\nbackground distribution. Used as a substitute for\n\
    standard absent/present calls when mismatch probes\nare not available."
  type: string
  inputBinding:
    position: 4
- id: in_avg_diff
  doc: "Calculates the average measurement for a probeset\nusing the MAS 4 average\
    \ difference algorithm, namely\nthe average difference between the pm and mm probe\n\
    signal."
  type: string
  inputBinding:
    position: 5
- id: in_median
  doc: Use the median of probes for a particular chip as the
  type: string
  inputBinding:
    position: 6
- id: in_summary_dot
  doc: 'Analysis Streams:'
  type: string
  inputBinding:
    position: 7
- id: in_expr
  doc: 'Does expression summarization on probesets. '
  type: string
  inputBinding:
    position: 8
- id: in_pc_a_select
  doc: "Determines PCA for probes and picks probes that are\nnear the principal component\
    \ as the probes to use\nfor downstream analysis."
  type: string
  inputBinding:
    position: 9
- id: in_spect_select
  doc: "Picks probes that are similar to each other based \non spectral cluster and\
    \ normalized cut."
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_temp_dir
  doc: "for temporary files when working\noff disk. Using network mounted drives is\n\
    not advised. When not set, the output\nfolder will be used. The defaut is\ntypically\
    \ the output directory or the\ncurrent working directory. [default '']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_temp_dir)
- id: out_out_dir
  doc: "for output files. Defaults to\ncurrent working directory. [default '.']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_log_file
  doc: "name of the log file. Generally\ndefaults to the program name in the out-dir\n\
    folder. [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
- id: out_use_pgf_names
  doc: "the probeset_names instead of\nprobeset_id column in the PGF file for\noutput.\
    \ [default 'false']"
  type: File
  outputBinding:
    glob: $(inputs.in_use_pgf_names)
- id: out_cc_chp_output
  doc: "results in directory called 'cc-chp'\nunder out-dir. This makes one AGCC\n\
    Expression CHP file per cel file analyzed.\n[default 'false']"
  type: File
  outputBinding:
    glob: $(inputs.in_cc_chp_output)
- id: out_xda_chp_output
  doc: "resulting calls in directory called\n'chp' under out-dir. This makes one GCOS\n\
    XDA CHP file per cel file analyzed.\n[default 'false']"
  type: File
  outputBinding:
    glob: $(inputs.in_xda_chp_output)
- id: out_cc_md_chp_output
  doc: "resulting calls in directory called\n'cc-md-chp' under out-dir. This makes\
    \ one\nAGCC Multi Data CHP file per cel file\nanalyzed. [default 'false']"
  type: File
  outputBinding:
    glob: $(inputs.in_cc_md_chp_output)
- id: out_set_analysis_name
  doc: "set the analysis name. This\naffects output file names (ie prefix) and\nvarious\
    \ meta info. [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_set_analysis_name)
- id: out_a_five_global_file
  doc: "for the A5 global output file.\n[Experimental] [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_a_five_global_file)
- id: out_a_five_sketch_use_global
  doc: "the sketch in the global A5 output\nfile. [Experimental] [default 'false']"
  type: File
  outputBinding:
    glob: $(inputs.in_a_five_sketch_use_global)
- id: out_result_files
  doc: "file names to output. Must be paired\nwith cels. [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_result_files)
cwlVersion: v1.1
baseCommand:
- apt-probeset-summarize
