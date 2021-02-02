class: CommandLineTool
id: vtools_admin.cwl
inputs:
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_update_resource
  doc: "[TYPE], --update-resource [TYPE]\nDownload resources of specified type, which\
    \ can be\n'current' (latest version of all resources), 'all'\n(all resources including\
    \ obsolete databases),\n'existing' (only update resources that exist locally),\n\
    'hg18' or 'hg19' (all resources for reference genome\nhg18 or hg19), 'annotation'\
    \ (all current annotation\ndatabases), 'format' (all formats), and 'snapshot'\n\
    (all online snapshots). Identical resources that are\navailable locally (under\
    \ ~/.variant_tools or runtime\noption $local_resource) are ignored. Note that\
    \ option\n'all' will download all versions of annotation\ndatabases which can\
    \ be slow and take a lot of disk\nspaces."
  type: boolean
  inputBinding:
    prefix: --update_resource
- id: in_mirror_repository
  doc: "Mirror the main variant tools repository to a local\ndirectory. This command\
    \ will check files under dest,\ndownload all missing or outdated files. Existing\
    \ files\nthat do not belong to the repository will not be\nremoved."
  type: Directory
  inputBinding:
    prefix: --mirror_repository
- id: in_merge_samples
  doc: "Merge samples with the same sample names by combining\ngenotypes belonging\
    \ to these samples. Phenotypes\nrelated to individual samples will be merged."
  type: boolean
  inputBinding:
    prefix: --merge_samples
- id: in_rename_samples
  doc: "This argument takes a condition by which samples are\nselected, followed by\
    \ either a new sample name (assign\na new name to selected samples) or an OLDNAME\
    \ NEWNAME\npair of patterns for which the first instance of\nOLDNAME in sample\
    \ names will be replaced by NEWNAME."
  type: string[]
  inputBinding:
    prefix: --rename_samples
- id: in_rename_table
  doc: "NEW_NAME, --rename-table NAME NEW_NAME\nChange table NAME to a NEW_NAME."
  type: string
  inputBinding:
    prefix: --rename_table
- id: in_describe_table
  doc: "NEW_DESCRIPTION, --describe-table TABLE NEW_DESCRIPTION\nUpdate description\
    \ for TABLE with a NEW_DESCRIPTION."
  type: string
  inputBinding:
    prefix: --describe_table
- id: in_validate_build
  doc: "Validate the build of project's reference genome by\nchecking if the reference\
    \ alleles of variants agree\nwith the reference genome sequence. A reference genome\n\
    will be automatically downloaded if it does not exist\nin the local resource directory."
  type: boolean
  inputBinding:
    prefix: --validate_build
- id: in_validate_sex
  doc: "[{report,force-heterozygote}], --validate-sex [{report,force-heterozygote}]\n\
    Validate the sex of samples by checking the genotypes\nof samples on sex chromosomes\
    \ (excluding pseudo-\nautosomal regions). Sex of samples are determined by a\n\
    phenotype named sex or gender with values 1/2, M/F or\nMale/Female. Inconsistency\
    \ will be reported if, for\nexample, a female sample has genotypes on chromosome\n\
    Y. This argument accepts an option argument, which is\nreport by default (report\
    \ inconsistent genotype or\nsex), but can also be 'force-heterozygote' for male\n\
    individuals on chromosome X."
  type: boolean
  inputBinding:
    prefix: --validate_sex
- id: in_save_snapshot
  doc: "MESSAGE, --save-snapeshot NAME MESSAGE\nCreate a snapshot of the current project\
    \ with NAME,\nwhich could be re-loaded using command 'vtools admin\n--load_snapshot'.\
    \ A filename with extension .tar, .tgz\nor .tar.gz can be used to save the snapshot\
    \ to a\nspecific directory with compression but such snapshots\nare not listed\
    \ by command 'vtools show snapshots'."
  type: File
  inputBinding:
    prefix: --save_snapshot
- id: in_extra_files
  doc: "[FILE [FILE ...]], --extra-files [FILE [FILE ...]]\nAdditional files that\
    \ will be saved along with the\nproject and genotype databases. This could include\n\
    customized format files, project-specific annotations,\nand results. Files outside\
    \ of the current project\ndirectory are not allowed due to security\nconsiderations."
  type: boolean
  inputBinding:
    prefix: --extra_files
- id: in_load_snapshot
  doc: "Revert the current project to specified snapshot. All\nchanges since the that\
    \ snapshot will be lost. The NAME\nshould be one of the project snapshots or online\n\
    snapshots listed by command 'vtools show snapshots',\nor name of a local snapshot\
    \ file (with extension .tar,\n.tgz or .tar.gz)."
  type: File
  inputBinding:
    prefix: --load_snapshot
- id: in_set_runtime_option
  doc: "Set value to internal options such as the batch size\nfor database options.\
    \ The default values of these\noptions were chosen to fit most usage patterns\
    \ but\ntweaking them might provide better performance under\ncertain circumstances.\
    \ Please use command \"vtools show\nruntime_options\" to list all currently supported\n\
    runtime options."
  type: string[]
  inputBinding:
    prefix: --set_runtime_option
- id: in_reset_runtime_option
  doc: Reset value to a runtime option to its default value.
  type: string
  inputBinding:
    prefix: --reset_runtime_option
- id: in_global
  doc: "Save option to user_options.py so that it will be\nautomatically set for all\
    \ user projects."
  type: boolean
  inputBinding:
    prefix: --global
- id: in_fast_a_two_crr
  doc: "Convert fasta files to a crr file (a binary format for\nfaster access) that\
    \ can be used by variant tools. This\nis only needed if you are working with a\
    \ reference\ngenome that is not supported by variant tools. This\nparameter accepts\
    \ a list of fastq files (URLs and .gz\nformat are acceptable) followed by the\
    \ name of the\n.crr file. The .crr file should be put under the\nproject directory\
    \ or the local resource directory\n(under directory reference) to be usable by\
    \ variant\ntools.\n"
  type: string[]
  inputBinding:
    prefix: --fasta2crr
- id: in_type
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- admin
