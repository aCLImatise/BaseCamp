version 1.0

task VtoolsAdmin {
  input {
    String? verbosity
    Boolean? update_resource
    Directory? mirror_repository
    Boolean? merge_samples
    Array[String] rename_samples
    String? rename_table
    String? describe_table
    Boolean? validate_build
    Boolean? validate_sex
    File? save_snapshot
    Boolean? extra_files
    File? load_snapshot
    Array[String] set_runtime_option
    String? reset_runtime_option
    Boolean? global
    Array[String] fast_a_two_crr
    String? type
  }
  command <<<
    vtools admin \
      ~{type} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (update_resource) then "--update_resource" else ""} \
      ~{if defined(mirror_repository) then ("--mirror_repository " +  '"' + mirror_repository + '"') else ""} \
      ~{if (merge_samples) then "--merge_samples" else ""} \
      ~{if defined(rename_samples) then ("--rename_samples " +  '"' + rename_samples + '"') else ""} \
      ~{if defined(rename_table) then ("--rename_table " +  '"' + rename_table + '"') else ""} \
      ~{if defined(describe_table) then ("--describe_table " +  '"' + describe_table + '"') else ""} \
      ~{if (validate_build) then "--validate_build" else ""} \
      ~{if (validate_sex) then "--validate_sex" else ""} \
      ~{if defined(save_snapshot) then ("--save_snapshot " +  '"' + save_snapshot + '"') else ""} \
      ~{if (extra_files) then "--extra_files" else ""} \
      ~{if defined(load_snapshot) then ("--load_snapshot " +  '"' + load_snapshot + '"') else ""} \
      ~{if defined(set_runtime_option) then ("--set_runtime_option " +  '"' + set_runtime_option + '"') else ""} \
      ~{if defined(reset_runtime_option) then ("--reset_runtime_option " +  '"' + reset_runtime_option + '"') else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if defined(fast_a_two_crr) then ("--fasta2crr " +  '"' + fast_a_two_crr + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    update_resource: "[TYPE], --update-resource [TYPE]\\nDownload resources of specified type, which can be\\n'current' (latest version of all resources), 'all'\\n(all resources including obsolete databases),\\n'existing' (only update resources that exist locally),\\n'hg18' or 'hg19' (all resources for reference genome\\nhg18 or hg19), 'annotation' (all current annotation\\ndatabases), 'format' (all formats), and 'snapshot'\\n(all online snapshots). Identical resources that are\\navailable locally (under ~/.variant_tools or runtime\\noption $local_resource) are ignored. Note that option\\n'all' will download all versions of annotation\\ndatabases which can be slow and take a lot of disk\\nspaces."
    mirror_repository: "Mirror the main variant tools repository to a local\\ndirectory. This command will check files under dest,\\ndownload all missing or outdated files. Existing files\\nthat do not belong to the repository will not be\\nremoved."
    merge_samples: "Merge samples with the same sample names by combining\\ngenotypes belonging to these samples. Phenotypes\\nrelated to individual samples will be merged."
    rename_samples: "This argument takes a condition by which samples are\\nselected, followed by either a new sample name (assign\\na new name to selected samples) or an OLDNAME NEWNAME\\npair of patterns for which the first instance of\\nOLDNAME in sample names will be replaced by NEWNAME."
    rename_table: "NEW_NAME, --rename-table NAME NEW_NAME\\nChange table NAME to a NEW_NAME."
    describe_table: "NEW_DESCRIPTION, --describe-table TABLE NEW_DESCRIPTION\\nUpdate description for TABLE with a NEW_DESCRIPTION."
    validate_build: "Validate the build of project's reference genome by\\nchecking if the reference alleles of variants agree\\nwith the reference genome sequence. A reference genome\\nwill be automatically downloaded if it does not exist\\nin the local resource directory."
    validate_sex: "[{report,force-heterozygote}], --validate-sex [{report,force-heterozygote}]\\nValidate the sex of samples by checking the genotypes\\nof samples on sex chromosomes (excluding pseudo-\\nautosomal regions). Sex of samples are determined by a\\nphenotype named sex or gender with values 1/2, M/F or\\nMale/Female. Inconsistency will be reported if, for\\nexample, a female sample has genotypes on chromosome\\nY. This argument accepts an option argument, which is\\nreport by default (report inconsistent genotype or\\nsex), but can also be 'force-heterozygote' for male\\nindividuals on chromosome X."
    save_snapshot: "MESSAGE, --save-snapeshot NAME MESSAGE\\nCreate a snapshot of the current project with NAME,\\nwhich could be re-loaded using command 'vtools admin\\n--load_snapshot'. A filename with extension .tar, .tgz\\nor .tar.gz can be used to save the snapshot to a\\nspecific directory with compression but such snapshots\\nare not listed by command 'vtools show snapshots'."
    extra_files: "[FILE [FILE ...]], --extra-files [FILE [FILE ...]]\\nAdditional files that will be saved along with the\\nproject and genotype databases. This could include\\ncustomized format files, project-specific annotations,\\nand results. Files outside of the current project\\ndirectory are not allowed due to security\\nconsiderations."
    load_snapshot: "Revert the current project to specified snapshot. All\\nchanges since the that snapshot will be lost. The NAME\\nshould be one of the project snapshots or online\\nsnapshots listed by command 'vtools show snapshots',\\nor name of a local snapshot file (with extension .tar,\\n.tgz or .tar.gz)."
    set_runtime_option: "Set value to internal options such as the batch size\\nfor database options. The default values of these\\noptions were chosen to fit most usage patterns but\\ntweaking them might provide better performance under\\ncertain circumstances. Please use command \\\"vtools show\\nruntime_options\\\" to list all currently supported\\nruntime options."
    reset_runtime_option: "Reset value to a runtime option to its default value."
    global: "Save option to user_options.py so that it will be\\nautomatically set for all user projects."
    fast_a_two_crr: "Convert fasta files to a crr file (a binary format for\\nfaster access) that can be used by variant tools. This\\nis only needed if you are working with a reference\\ngenome that is not supported by variant tools. This\\nparameter accepts a list of fastq files (URLs and .gz\\nformat are acceptable) followed by the name of the\\n.crr file. The .crr file should be put under the\\nproject directory or the local resource directory\\n(under directory reference) to be usable by variant\\ntools.\\n"
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}