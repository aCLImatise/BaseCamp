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
      ~{if (no_bad_samples) then "-no_bad_samples" else ""} \
      ~{if (no_tumor) then "-no_tumor" else ""} \
      ~{if (no_ff_pe) then "-no_ffpe" else ""} \
      ~{if (with_merged) then "-with_merged" else ""} \
      ~{if defined(project) then ("-project " +  '"' + project + '"') else ""} \
      ~{if defined(system) then ("-system " +  '"' + system + '"') else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if (run_finished) then "-run_finished" else ""} \
      ~{if defined(run_device) then ("-run_device " +  '"' + run_device + '"') else ""} \
      ~{if (no_bad_runs) then "-no_bad_runs" else ""} \
      ~{if (add_qc) then "-add_qc" else ""} \
      ~{if (add_outcome) then "-add_outcome" else ""} \
      ~{if (add_disease_details) then "-add_disease_details" else ""} \
      ~{if (add_path) then "-add_path" else ""} \
      ~{if (add_report_config) then "-add_report_config" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    sample: "Sample name filter (substring match).\\nDefault value: ''"
    species: "Species filter.\\nDefault value: ''"
    no_bad_samples: "If set, processed samples with 'bad' quality are excluded.\\nDefault value: 'false'"
    no_tumor: "If set, tumor samples are excluded.\\nDefault value: 'false'"
    no_ff_pe: "If set, FFPE samples are excluded.\\nDefault value: 'false'"
    with_merged: "If set, processed samples that were merged into another sample are included.\\nDefault value: 'false'"
    project: "Project name filter.\\nDefault value: ''"
    system: "Processing system name filter (short name).\\nDefault value: ''"
    run: "Sequencing run name filter.\\nDefault value: ''"
    run_finished: "Only show samples where the analysis of the run is finished.\\nDefault value: 'false'"
    run_device: "Sequencing run device name filter.\\nDefault value: ''"
    no_bad_runs: "If set, sequencing runs with 'bad' quality are excluded.\\nDefault value: 'false'"
    add_qc: "If set, QC columns are added to output.\\nDefault value: 'false'"
    add_outcome: "If set, diagnostic outcome columns are added to output.\\nDefault value: 'false'"
    add_disease_details: "If set, disease details columns are added to output.\\nDefault value: 'false'"
    add_path: "Checks if the sample folder is present at the defaults location in the 'projects_folder' (as defined in the 'settings.ini' file).\\nDefault value: 'false'"
    add_report_config: "Adds a column with report configuration information (exists/has_small_variants/has_cnvs).\\nDefault value: 'false'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}