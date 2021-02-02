version 1.0

task Aptprobesetsummarize {
  input {
    Int? verbose
    String? console_off
    String? use_socket
    String? force
    String? throw_exception
    File? analysis_files_path
    File? xml_file
    Directory? temp_dir
    Directory? out_dir
    File? log_file
    String? command_line
    String? exec_guid
    String? program_name
    String? program_company
    String? program_version
    String? program_cvs_id
    String? version_to_report
    Int? free_mem_at_start
    String? meta_data_info
    File? cel_files
    File? clf_file_dot
    File? spf_file
    File? pgf_file
    File? clf_file
    File? bgp_file
    File? probe_set_ids
    File? meta_probe_sets
    File? probe_class_file
    File? qc_probe_sets
    String? chip_type
    File? use_pgf_names
    File? cc_chp_output
    File? xda_chp_output
    File? cc_md_chp_output
    String? cc_chp_out_dir
    String? xda_chp_out_dir
    String? cc_md_chp_out_dir
    String? subsample_report
    File? report_file
    String? analysis
    String? summaries
    String? feat_effects
    File? use_feat_eff
    String? feat_details
    File? target_sketch
    File? write_sketch
    String? reference_profile
    String? write_profile
    File? set_analysis_name
    Float? precision
    String? explain
    File? kill_list
    String? use_disk
    Int? disk_cache
    String? store_duplicate_probes
    File? a_five_global_file
    File? a_five_global_file_no_replace
    Int? a_five_group
    Int? a_five_summaries
    Int? a_five_summaries_use_global
    Int? a_five_feature_effects
    Int? a_five_feature_effects_use_global
    Int? a_five_feature_details
    Int? a_five_feature_details_use_global
    Int? a_five_sketch
    File? a_five_sketch_use_global
    File? a_five_global_input_file
    Int? a_five_input_group
    Int? a_five_sketch_input_global
    File? a_five_sketch_input_file
    Int? a_five_sketch_input_group
    Int? a_five_sketch_input_name
    Int? a_five_feature_effects_input_global
    File? a_five_feature_effects_input_file
    Int? a_five_feature_effects_input_group
    Int? a_five_feature_effects_input_name
    String? cels
    File? result_files
    File? annotation_file
    String? time_start
    String? time_end
    String? time_run_minutes
    String? analysis_guid
    String rma_bg
    String quant_norm
    String artifact_reduction
    String med_norm
    String adapter_type_norm
    String gc_bg
    String gc_correction
    String gc_count_dot
    String intensity_reporter
    String no_trans
    String transformation
    String pm_only
    String pm_mm
    String pm_gc_bg
    String pm_sum
    String plier
    String sea
    String iter_plier
    String med_polish
    String dab_g
    String avg_diff
    String median
    String summary_dot
    String expr
    String pc_a_select
    String spect_select
  }
  command <<<
    apt_probeset_summarize \
      ~{rma_bg} \
      ~{quant_norm} \
      ~{artifact_reduction} \
      ~{med_norm} \
      ~{adapter_type_norm} \
      ~{gc_bg} \
      ~{gc_correction} \
      ~{gc_count_dot} \
      ~{intensity_reporter} \
      ~{no_trans} \
      ~{transformation} \
      ~{pm_only} \
      ~{pm_mm} \
      ~{pm_gc_bg} \
      ~{pm_sum} \
      ~{plier} \
      ~{sea} \
      ~{iter_plier} \
      ~{med_polish} \
      ~{dab_g} \
      ~{avg_diff} \
      ~{median} \
      ~{summary_dot} \
      ~{expr} \
      ~{pc_a_select} \
      ~{spect_select} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(console_off) then ("--console-off " +  '"' + console_off + '"') else ""} \
      ~{if defined(use_socket) then ("--use-socket " +  '"' + use_socket + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if defined(throw_exception) then ("--throw-exception " +  '"' + throw_exception + '"') else ""} \
      ~{if defined(analysis_files_path) then ("--analysis-files-path " +  '"' + analysis_files_path + '"') else ""} \
      ~{if defined(xml_file) then ("--xml-file " +  '"' + xml_file + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(command_line) then ("--command-line " +  '"' + command_line + '"') else ""} \
      ~{if defined(exec_guid) then ("--exec-guid " +  '"' + exec_guid + '"') else ""} \
      ~{if defined(program_name) then ("--program-name " +  '"' + program_name + '"') else ""} \
      ~{if defined(program_company) then ("--program-company " +  '"' + program_company + '"') else ""} \
      ~{if defined(program_version) then ("--program-version " +  '"' + program_version + '"') else ""} \
      ~{if defined(program_cvs_id) then ("--program-cvs-id " +  '"' + program_cvs_id + '"') else ""} \
      ~{if defined(version_to_report) then ("--version-to-report " +  '"' + version_to_report + '"') else ""} \
      ~{if defined(free_mem_at_start) then ("--free-mem-at-start " +  '"' + free_mem_at_start + '"') else ""} \
      ~{if defined(meta_data_info) then ("--meta-data-info " +  '"' + meta_data_info + '"') else ""} \
      ~{if defined(cel_files) then ("--cel-files " +  '"' + cel_files + '"') else ""} \
      ~{if defined(clf_file_dot) then ("--clf-file. " +  '"' + clf_file_dot + '"') else ""} \
      ~{if defined(spf_file) then ("--spf-file " +  '"' + spf_file + '"') else ""} \
      ~{if defined(pgf_file) then ("--pgf-file " +  '"' + pgf_file + '"') else ""} \
      ~{if defined(clf_file) then ("--clf-file " +  '"' + clf_file + '"') else ""} \
      ~{if defined(bgp_file) then ("--bgp-file " +  '"' + bgp_file + '"') else ""} \
      ~{if defined(probe_set_ids) then ("--probeset-ids " +  '"' + probe_set_ids + '"') else ""} \
      ~{if defined(meta_probe_sets) then ("--meta-probesets " +  '"' + meta_probe_sets + '"') else ""} \
      ~{if defined(probe_class_file) then ("--probe-class-file " +  '"' + probe_class_file + '"') else ""} \
      ~{if defined(qc_probe_sets) then ("--qc-probesets " +  '"' + qc_probe_sets + '"') else ""} \
      ~{if defined(chip_type) then ("--chip-type " +  '"' + chip_type + '"') else ""} \
      ~{if defined(use_pgf_names) then ("--use-pgf-names " +  '"' + use_pgf_names + '"') else ""} \
      ~{if defined(cc_chp_output) then ("--cc-chp-output " +  '"' + cc_chp_output + '"') else ""} \
      ~{if defined(xda_chp_output) then ("--xda-chp-output " +  '"' + xda_chp_output + '"') else ""} \
      ~{if defined(cc_md_chp_output) then ("--cc-md-chp-output " +  '"' + cc_md_chp_output + '"') else ""} \
      ~{if defined(cc_chp_out_dir) then ("--cc-chp-out-dir " +  '"' + cc_chp_out_dir + '"') else ""} \
      ~{if defined(xda_chp_out_dir) then ("--xda-chp-out-dir " +  '"' + xda_chp_out_dir + '"') else ""} \
      ~{if defined(cc_md_chp_out_dir) then ("--cc-md-chp-out-dir " +  '"' + cc_md_chp_out_dir + '"') else ""} \
      ~{if defined(subsample_report) then ("--subsample-report " +  '"' + subsample_report + '"') else ""} \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(summaries) then ("--summaries " +  '"' + summaries + '"') else ""} \
      ~{if defined(feat_effects) then ("--feat-effects " +  '"' + feat_effects + '"') else ""} \
      ~{if defined(use_feat_eff) then ("--use-feat-eff " +  '"' + use_feat_eff + '"') else ""} \
      ~{if defined(feat_details) then ("--feat-details " +  '"' + feat_details + '"') else ""} \
      ~{if defined(target_sketch) then ("--target-sketch " +  '"' + target_sketch + '"') else ""} \
      ~{if defined(write_sketch) then ("--write-sketch " +  '"' + write_sketch + '"') else ""} \
      ~{if defined(reference_profile) then ("--reference-profile " +  '"' + reference_profile + '"') else ""} \
      ~{if defined(write_profile) then ("--write-profile " +  '"' + write_profile + '"') else ""} \
      ~{if defined(set_analysis_name) then ("--set-analysis-name " +  '"' + set_analysis_name + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(explain) then ("--explain " +  '"' + explain + '"') else ""} \
      ~{if defined(kill_list) then ("--kill-list " +  '"' + kill_list + '"') else ""} \
      ~{if defined(use_disk) then ("--use-disk " +  '"' + use_disk + '"') else ""} \
      ~{if defined(disk_cache) then ("--disk-cache " +  '"' + disk_cache + '"') else ""} \
      ~{if defined(store_duplicate_probes) then ("--store-duplicate-probes " +  '"' + store_duplicate_probes + '"') else ""} \
      ~{if defined(a_five_global_file) then ("--a5-global-file " +  '"' + a_five_global_file + '"') else ""} \
      ~{if defined(a_five_global_file_no_replace) then ("--a5-global-file-no-replace " +  '"' + a_five_global_file_no_replace + '"') else ""} \
      ~{if defined(a_five_group) then ("--a5-group " +  '"' + a_five_group + '"') else ""} \
      ~{if defined(a_five_summaries) then ("--a5-summaries " +  '"' + a_five_summaries + '"') else ""} \
      ~{if defined(a_five_summaries_use_global) then ("--a5-summaries-use-global " +  '"' + a_five_summaries_use_global + '"') else ""} \
      ~{if defined(a_five_feature_effects) then ("--a5-feature-effects " +  '"' + a_five_feature_effects + '"') else ""} \
      ~{if defined(a_five_feature_effects_use_global) then ("--a5-feature-effects-use-global " +  '"' + a_five_feature_effects_use_global + '"') else ""} \
      ~{if defined(a_five_feature_details) then ("--a5-feature-details " +  '"' + a_five_feature_details + '"') else ""} \
      ~{if defined(a_five_feature_details_use_global) then ("--a5-feature-details-use-global " +  '"' + a_five_feature_details_use_global + '"') else ""} \
      ~{if defined(a_five_sketch) then ("--a5-sketch " +  '"' + a_five_sketch + '"') else ""} \
      ~{if defined(a_five_sketch_use_global) then ("--a5-sketch-use-global " +  '"' + a_five_sketch_use_global + '"') else ""} \
      ~{if defined(a_five_global_input_file) then ("--a5-global-input-file " +  '"' + a_five_global_input_file + '"') else ""} \
      ~{if defined(a_five_input_group) then ("--a5-input-group " +  '"' + a_five_input_group + '"') else ""} \
      ~{if defined(a_five_sketch_input_global) then ("--a5-sketch-input-global " +  '"' + a_five_sketch_input_global + '"') else ""} \
      ~{if defined(a_five_sketch_input_file) then ("--a5-sketch-input-file " +  '"' + a_five_sketch_input_file + '"') else ""} \
      ~{if defined(a_five_sketch_input_group) then ("--a5-sketch-input-group " +  '"' + a_five_sketch_input_group + '"') else ""} \
      ~{if defined(a_five_sketch_input_name) then ("--a5-sketch-input-name " +  '"' + a_five_sketch_input_name + '"') else ""} \
      ~{if defined(a_five_feature_effects_input_global) then ("--a5-feature-effects-input-global " +  '"' + a_five_feature_effects_input_global + '"') else ""} \
      ~{if defined(a_five_feature_effects_input_file) then ("--a5-feature-effects-input-file " +  '"' + a_five_feature_effects_input_file + '"') else ""} \
      ~{if defined(a_five_feature_effects_input_group) then ("--a5-feature-effects-input-group " +  '"' + a_five_feature_effects_input_group + '"') else ""} \
      ~{if defined(a_five_feature_effects_input_name) then ("--a5-feature-effects-input-name " +  '"' + a_five_feature_effects_input_name + '"') else ""} \
      ~{if defined(cels) then ("--cels " +  '"' + cels + '"') else ""} \
      ~{if defined(result_files) then ("--result-files " +  '"' + result_files + '"') else ""} \
      ~{if defined(annotation_file) then ("--annotation-file " +  '"' + annotation_file + '"') else ""} \
      ~{if defined(time_start) then ("--time-start " +  '"' + time_start + '"') else ""} \
      ~{if defined(time_end) then ("--time-end " +  '"' + time_end + '"') else ""} \
      ~{if defined(time_run_minutes) then ("--time-run-minutes " +  '"' + time_run_minutes + '"') else ""} \
      ~{if defined(analysis_guid) then ("--analysis-guid " +  '"' + analysis_guid + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose to be with status messages 0 -\\nquiet, 1 - usual messages, 2 - more\\nmessages. [default '1']"
    console_off: "off the default messages to the\\nconsole but not logging or sockets.\\n[default 'false']"
    use_socket: "and port to print messages over in\\nlocalhost:port format [default '']"
    force: "various checks including chip\\ntypes. Consider using --chip-type option\\nrather than --force. [default 'false']"
    throw_exception: "an exception rather than calling\\nexit() on error. Useful for debugging. This\\noption is intended for command line use\\nonly. If you are wrapping an Engine and\\nwant exceptions thrown, then you should\\ncall Err::setThrowStatus(true) to ensure\\nthat all Err::errAbort() calls result in an\\nexception. [default 'false']"
    analysis_files_path: "path for analysis library files.\\nWill override AFFX_ANALYSIS_FILES_PATH\\nenvironment variable. [default '']"
    xml_file: "parameters in XML format (Will\\noverride command line settings). [default\\n'']"
    temp_dir: "for temporary files when working\\noff disk. Using network mounted drives is\\nnot advised. When not set, the output\\nfolder will be used. The defaut is\\ntypically the output directory or the\\ncurrent working directory. [default '']"
    out_dir: "for output files. Defaults to\\ncurrent working directory. [default '.']"
    log_file: "name of the log file. Generally\\ndefaults to the program name in the out-dir\\nfolder. [default '']"
    command_line: "command line executed. [default '']"
    exec_guid: "GUID for the process. [default '']"
    program_name: "name of the program [default '']"
    program_company: "company providing the program [default\\n'']"
    program_version: "version of the program [default '']"
    program_cvs_id: "CVS version of the program [default '']"
    version_to_report: "version to report in the output files.\\n[default '']"
    free_mem_at_start: "much physical memory was available when\\nthe engine run started. [default '0']"
    meta_data_info: "data in key=value pair that will be\\noutput in headers. [default '']"
    cel_files: "file specifying cel files to process,\\none per line with the first line being\\n'cel_files'. [default '']"
    clf_file_dot: "sets --names."
    spf_file: "defining probe sets in spf (simple\\nprobe format) which is like a text cdf\\nfile. [default '']"
    pgf_file: "defining probe sets. [default '']"
    clf_file: "defining x,y <-> probe id conversion.\\nRequired when using PGF file. [default '']"
    bgp_file: "defining probes to be used for GC\\nbackground. [default '']"
    probe_set_ids: "specifying probe sets to summarize.\\n[default '']"
    meta_probe_sets: "containing meta probeset definitions.\\nFile must contain a probeset_id column and\\na probeset_list column. [default '']"
    probe_class_file: "containing probe_id (1-based) of\\nprobes and a 'class' designation. Used to\\ncompute mean probe intensity by class for\\nreport file. [default '']"
    qc_probe_sets: "with probeset_id(name) and group_name\\ncolumns specifying subsets of probesets to\\ncompute qc stats for. [default '']"
    chip_type: "types to check library and CEL files\\nagainst. Can be specified multiple times.\\nThe first one is propigated as the chip\\ntype in the output files. Warning, use of\\nthis option will override the usual check\\nbetween chip types found in the library\\nfiles and cel files. You should use this\\noption instead of --force when possible.\\n[default '']"
    use_pgf_names: "the probeset_names instead of\\nprobeset_id column in the PGF file for\\noutput. [default 'false']"
    cc_chp_output: "results in directory called 'cc-chp'\\nunder out-dir. This makes one AGCC\\nExpression CHP file per cel file analyzed.\\n[default 'false']"
    xda_chp_output: "resulting calls in directory called\\n'chp' under out-dir. This makes one GCOS\\nXDA CHP file per cel file analyzed.\\n[default 'false']"
    cc_md_chp_output: "resulting calls in directory called\\n'cc-md-chp' under out-dir. This makes one\\nAGCC Multi Data CHP file per cel file\\nanalyzed. [default 'false']"
    cc_chp_out_dir: "the default location for chp\\noutput. [default '']"
    xda_chp_out_dir: "the default location for chp\\noutput. [default '']"
    cc_md_chp_out_dir: "the default location for chp\\noutput. [default '']"
    subsample_report: "subsamples of the data intensities,\\nsummaries and residuals for error checking\\ndownstream. [default 'false']"
    report_file: "the default report file name.\\n[default '']"
    analysis: "representing analysis pathway\\ndesired. For example:\\n'quant-norm,pm-gcbg,plier'. Prepackaged\\nanalysis such as 'plier-gcbg-sketch',\\n'plier-gcbg', 'plier-mm-sketch',\\n'plier-mm', 'rma-sketch', and 'rma' can be\\nspecified. Multiple analysis allowed at\\nsame time. When using quantile\\nnormalization, you may need to use the\\nsketch option to avoid running out of\\nmemory. [default '']"
    summaries: "expression summaries in text table\\nformat. [default 'true']"
    feat_effects: "feature effects when available. By\\nconvention med-polish feature effects have\\ntotal probeset median added to them, see\\nRMA module for details [default 'false']"
    use_feat_eff: "defining a plier feature effect for\\neach probe. Note that precomputed effects\\nshould only be used for an appropriately\\nsimilar analysis (i.e. feature effects for\\npm-only may be different than for pm-mm).\\nCurrently a probe is expected to be in only\\na single probeset. This option does not\\nwork for IterPlier or SEA. [default '']"
    feat_details: "probe by chip specific details\\n(often residuals) when available. [default\\n'false']"
    target_sketch: "specifying a target distribution to\\nuse for quantile normalization. [default\\n'']"
    write_sketch: "the quantile normalization\\ndistribution (or sketch) to a file for\\nreuse with target-sketch option. WARNING:\\nIf more than one -a option generates a\\ntarget sketch file, it is not deterministic\\nwhich file will be retained by the OS if\\nthe target sketch files have the same name.\\n[default 'false']"
    reference_profile: "profile [default '']"
    write_profile: "reference profile. [default 'false']"
    set_analysis_name: "set the analysis name. This\\naffects output file names (ie prefix) and\\nvarious meta info. [default '']"
    precision: "many digits of precision to use after\\ndecimal. [default '5']"
    explain: "a particular operation (i.e."
    kill_list: "not use the PM probes specified in file\\nfor computing results. [experimental]\\n[default '']"
    use_disk: "CEL intensities to be analyzed on\\ndisk. [default 'true']"
    disk_cache: "of intensity memory cache in millions\\nof intensities (when --use-disk=true).\\n[default '50']"
    store_duplicate_probes: "intensities for probes appearing in\\nmultiple probesets in memory (Prevents page\\nthrashing. Is a bad idea for Axiom. Turned\\non automatically when using meta-probesets)\\n[default 'false']"
    a_five_global_file: "for the A5 global output file.\\n[Experimental] [default '']"
    a_five_global_file_no_replace: "or create rather than replace.\\n[Experimental] [default 'false']"
    a_five_group: "name where to put results in the A5\\noutput files. Defaults to '/'.\\n[Experimental] [default '']"
    a_five_summaries: "the summary values from the\\nquantifcation method for each allele in A5\\nformat. [Experimental] [default 'false']"
    a_five_summaries_use_global: "the global A5 file for summaries.\\n[Experimental] [default 'false']"
    a_five_feature_effects: "feature effects in A5 format.\\n[Experimental] [default 'false']"
    a_five_feature_effects_use_global: "the global A5 file for feature\\neffects.[Experimental] [default 'false']"
    a_five_feature_details: "feature level residuals in A5\\nformat. [Experimental] [default 'false']"
    a_five_feature_details_use_global: "the global A5 file for residuals.\\n[Experimental] [default 'false']"
    a_five_sketch: "normalization sketch in A5 format."
    a_five_sketch_use_global: "the sketch in the global A5 output\\nfile. [Experimental] [default 'false']"
    a_five_global_input_file: "for the group in the global input\\nfile.[Experimental] [default '']"
    a_five_input_group: "name for input. Defaults to"
    a_five_sketch_input_global: "the sketch from the global A5 input\\nfile. [Experimental] [default 'false']"
    a_five_sketch_input_file: "the sketch from the an A5 input file.\\n[Experimental] [default '']"
    a_five_sketch_input_group: "name to read the sketch from.\\nDefaults to --a5-input-group.\\n[Experimental] [default '']"
    a_five_sketch_input_name: "name of the data section. Defaults to\\n'target-sketch'. [Experimental] [default\\n'']"
    a_five_feature_effects_input_global: "the feature effects global A5 input\\nfile. [Experimental] [default 'false']"
    a_five_feature_effects_input_file: "the feature effects from the an A5\\ninput file. [Experimental] [default '']"
    a_five_feature_effects_input_group: "name to read the feature effects\\nfrom. Defaults to --a5-input-group.\\n[Experimental] [default '']"
    a_five_feature_effects_input_name: "name of the data section. Defaults to\\nXXX.feature-response where XXX is the\\nanalysis name and quant method. IE\\n'brlmm-p.plier'. [Experimental] [default\\n'']"
    cels: "files to process. [default '']"
    result_files: "file names to output. Must be paired\\nwith cels. [default '']"
    annotation_file: "Annotation database file. [default\\n'']"
    time_start: "time the engine run was started\\n[default '']"
    time_end: "time the engine run ended [default '']"
    time_run_minutes: "run time in minutes. [default '']"
    analysis_guid: "GUID for the analysis run. [default '']"
    rma_bg: "Performs an RMA style background adjustment \\nas described in Irizarry et al 2003."
    quant_norm: "Class for doing quantile normalization. Can \\ndo sketch and full quantile (just set sketch\\nto chip size or zero) and supports\\nbioconductor compatibility."
    artifact_reduction: "Class for artifact reduction. "
    med_norm: "Class for doing median normalization. Adjust\\nintensities such that all chips have the same\\nmedian (or average)."
    adapter_type_norm: "Class for doing adapter type normalization.\\nAdjust intensities by adapter type."
    gc_bg: "Subtract bacground based on median intensity\\nof probes with similar GC content."
    gc_correction: "Correct feature intensity for variations in"
    gc_count_dot: "scale-intensities    Scale cel intensities. "
    intensity_reporter: "Class for dumping intensity values to a file. "
    no_trans: "Placeholder chipstream that does no"
    transformation: "Pm Intensity Adjustments:"
    pm_only: "No adjustment. Just uses unmodified PM intensity values. "
    pm_mm: "Use mismatch probe as adjustment for perfect match. Has\\nstrength of being unbiased, but often the mismatch probe\\nbinds the match target."
    pm_gc_bg: "Do an adjustment based on the median intensity of probes\\nwith similar GC content."
    pm_sum: "Add itensity of PM probe for other allele to PM probes. "
    plier: "The PLIER (Probe Logarithmic Error Intensity \\nEstimate) method produces an improved signal by\\naccounting for experimentally observed patterns in\\nfeature behavior and handling error at the\\nappropriately at low and high signal values. This\\nversion of PLIER differs from the previous version by\\nthe addition of a SafteyZero, NumericalTolerance, and\\nFixPrecomputed. These options are intended to improve\\nthe stability of PLIER results when using precomputed\\nfeature reponse values. To get the older PLIER\\nbehavior set SafetyZero to 0.0, NumericalTolerance to\\n0.0, and FixPrecomputed to false."
    sea: "The SEA (Simplified Expression Analysis) method\\nprovides a simple signal estimate, using the\\ninitialization algorithm from the PLIER (Probe\\nLogarithmic Error Intensity Estimate) method and\\nomitting the PLIER parameter fitting. SEA is useful\\nfor single chip signal estimation. The version of\\nPLIER used by SEA differs from the previous version\\nby the addition of a SafteyZero, NumericalTolerance,\\nand FixPrecomputed. These options are intended to\\nimprove the stability of PLIER results when using\\nprecomputed feature reponse values. To get the older\\nPLIER behavior set SafetyZero to 0.0,\\nNumericalTolerance to 0.0, and FixPrecomputed to\\nfalse."
    iter_plier: "Do probe set quantification estimate by iteratively\\ncalling PLIER with the probes that best correlate\\nwith signal estimate. The version of PLIER used by\\nIterPLIER differs from the previous version by the\\naddition of a SafteyZero, NumericalTolerance, and\\nFixPrecomputed. These options are intended to improve\\nthe stability of PLIER results when using precomputed\\nfeature reponse values. To get the older PLIER\\nbehavior set SafetyZero to 0.0, NumericalTolerance to\\n0.0, and FixPrecomputed to false."
    med_polish: "Performs a median polish to estimate target and probe\\neffects. Resulting summaries are in log2 space by\\ndefault. Used in summary step of RMA as described in\\nIrizarry et al 2003."
    dab_g: "Calculates the p-value that the intensities in a\\nprobeset could have been observed by chance in a\\nbackground distribution. Used as a substitute for\\nstandard absent/present calls when mismatch probes\\nare not available."
    avg_diff: "Calculates the average measurement for a probeset\\nusing the MAS 4 average difference algorithm, namely\\nthe average difference between the pm and mm probe\\nsignal."
    median: "Use the median of probes for a particular chip as the"
    summary_dot: "Analysis Streams:"
    expr: "Does expression summarization on probesets. "
    pc_a_select: "Determines PCA for probes and picks probes that are\\nnear the principal component as the probes to use\\nfor downstream analysis."
    spect_select: "Picks probes that are similar to each other based \\non spectral cluster and normalized cut."
  }
  output {
    File out_stdout = stdout()
    Directory out_temp_dir = "${in_temp_dir}"
    Directory out_out_dir = "${in_out_dir}"
    File out_log_file = "${in_log_file}"
    File out_use_pgf_names = "${in_use_pgf_names}"
    File out_cc_chp_output = "${in_cc_chp_output}"
    File out_xda_chp_output = "${in_xda_chp_output}"
    File out_cc_md_chp_output = "${in_cc_md_chp_output}"
    File out_set_analysis_name = "${in_set_analysis_name}"
    File out_a_five_global_file = "${in_a_five_global_file}"
    File out_a_five_sketch_use_global = "${in_a_five_sketch_use_global}"
    File out_result_files = "${in_result_files}"
  }
}