version 1.0

task NGSDExportSamples {
  input {
    File? out
    String? sample
    String? species
    Boolean? no_bad_samples
    Boolean? no_tumor
    Boolean? no_ff_pe
    Boolean? with_merged
    String? project
    String? system
    String? run
    Boolean? run_finished
    String? run_device
    Boolean? no_bad_runs
    Boolean? add_qc
    Boolean? add_outcome
    Boolean? add_disease_details
    Boolean? add_path
    Boolean? add_report_config
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDExportSamples \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{true="-no_bad_samples" false="" no_bad_samples} \
      ~{true="-no_tumor" false="" no_tumor} \
      ~{true="-no_ffpe" false="" no_ff_pe} \
      ~{true="-with_merged" false="" with_merged} \
      ~{if defined(project) then ("-project " +  '"' + project + '"') else ""} \
      ~{if defined(system) then ("-system " +  '"' + system + '"') else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{true="-run_finished" false="" run_finished} \
      ~{if defined(run_device) then ("-run_device " +  '"' + run_device + '"') else ""} \
      ~{true="-no_bad_runs" false="" no_bad_runs} \
      ~{true="-add_qc" false="" add_qc} \
      ~{true="-add_outcome" false="" add_outcome} \
      ~{true="-add_disease_details" false="" add_disease_details} \
      ~{true="-add_path" false="" add_path} \
      ~{true="-add_report_config" false="" add_report_config} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    out: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
    sample: "Sample name filter (substring match). Default value: ''"
    species: "Species filter. Default value: ''"
    no_bad_samples: "If set, processed samples with 'bad' quality are excluded. Default value: 'false'"
    no_tumor: "If set, tumor samples are excluded. Default value: 'false'"
    no_ff_pe: "If set, FFPE samples are excluded. Default value: 'false'"
    with_merged: "If set, processed samples that were merged into another sample are included. Default value: 'false'"
    project: "Project name filter. Default value: ''"
    system: "Processing system name filter (short name). Default value: ''"
    run: "Sequencing run name filter. Default value: ''"
    run_finished: "Only show samples where the analysis of the run is finished. Default value: 'false'"
    run_device: "Sequencing run device name filter. Default value: ''"
    no_bad_runs: "If set, sequencing runs with 'bad' quality are excluded. Default value: 'false'"
    add_qc: "If set, QC columns are added to output. Default value: 'false'"
    add_outcome: "If set, diagnostic outcome columns are added to output. Default value: 'false'"
    add_disease_details: "If set, disease details columns are added to output. Default value: 'false'"
    add_path: "Checks if the sample folder is present at the defaults location in the 'projects_folder' (as defined in the 'settings.ini' file). Default value: 'false'"
    add_report_config: "Adds a column with report configuration information (exists/has_small_variants/has_cnvs). Default value: 'false'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}