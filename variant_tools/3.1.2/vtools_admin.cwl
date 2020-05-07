class: CommandLineTool
id: vtools_admin.cwl
inputs:
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: update_resource
  doc: "[TYPE], --update-resource [TYPE] Download resources of specified type, which\
    \ can be 'current' (latest version of all resources), 'all' (all resources including\
    \ obsolete databases), 'existing' (only update resources that exist locally),\
    \ 'hg18' or 'hg19' (all resources for reference genome hg18 or hg19), 'annotation'\
    \ (all current annotation databases), 'format' (all formats), and 'snapshot' (all\
    \ online snapshots). Identical resources that are available locally (under ~/.variant_tools\
    \ or runtime option $local_resource) are ignored. Note that option 'all' will\
    \ download all versions of annotation databases which can be slow and take a lot\
    \ of disk spaces."
  type: boolean
  inputBinding:
    prefix: --update_resource
- id: mirror_repository
  doc: Mirror the main variant tools repository to a local directory. This command
    will check files under dest, download all missing or outdated files. Existing
    files that do not belong to the repository will not be removed.
  type: string
  inputBinding:
    prefix: --mirror_repository
- id: merge_samples
  doc: Merge samples with the same sample names by combining genotypes belonging to
    these samples. Phenotypes related to individual samples will be merged.
  type: boolean
  inputBinding:
    prefix: --merge_samples
- id: rename_samples
  doc: This argument takes a condition by which samples are selected, followed by
    either a new sample name (assign a new name to selected samples) or an OLDNAME
    NEWNAME pair of patterns for which the first instance of OLDNAME in sample names
    will be replaced by NEWNAME.
  type: string[]
  inputBinding:
    prefix: --rename_samples
- id: validate_build
  doc: Validate the build of project's reference genome by checking if the reference
    alleles of variants agree with the reference genome sequence. A reference genome
    will be automatically downloaded if it does not exist in the local resource directory.
  type: boolean
  inputBinding:
    prefix: --validate_build
- id: validate_sex
  doc: "[{report,force-heterozygote}], --validate-sex [{report,force-heterozygote}]\
    \ Validate the sex of samples by checking the genotypes of samples on sex chromosomes\
    \ (excluding pseudo- autosomal regions). Sex of samples are determined by a phenotype\
    \ named sex or gender with values 1/2, M/F or Male/Female. Inconsistency will\
    \ be reported if, for example, a female sample has genotypes on chromosome Y.\
    \ This argument accepts an option argument, which is report by default (report\
    \ inconsistent genotype or sex), but can also be 'force-heterozygote' for male\
    \ individuals on chromosome X."
  type: boolean
  inputBinding:
    prefix: --validate_sex
- id: save_snapshot
  doc: MESSAGE, --save-snapeshot NAME MESSAGE Create a snapshot of the current project
    with NAME, which could be re-loaded using command 'vtools admin --load_snapshot'.
    A filename with extension .tar, .tgz or .tar.gz can be used to save the snapshot
    to a specific directory with compression but such snapshots are not listed by
    command 'vtools show snapshots'.
  type: string
  inputBinding:
    prefix: --save_snapshot
- id: extra_files
  doc: '[FILE [FILE ...]], --extra-files [FILE [FILE ...]] Additional files that will
    be saved along with the project and genotype databases. This could include customized
    format files, project-specific annotations, and results. Files outside of the
    current project directory are not allowed due to security considerations.'
  type: boolean
  inputBinding:
    prefix: --extra_files
- id: load_snapshot
  doc: Revert the current project to specified snapshot. All changes since the that
    snapshot will be lost. The NAME should be one of the project snapshots or online
    snapshots listed by command 'vtools show snapshots', or name of a local snapshot
    file (with extension .tar, .tgz or .tar.gz).
  type: string
  inputBinding:
    prefix: --load_snapshot
- id: set_runtime_option
  doc: Set value to internal options such as the batch size for database options.
    The default values of these options were chosen to fit most usage patterns but
    tweaking them might provide better performance under certain circumstances. Please
    use command "vtools show runtime_options" to list all currently supported runtime
    options.
  type: string[]
  inputBinding:
    prefix: --set_runtime_option
- id: reset_runtime_option
  doc: Reset value to a runtime option to its default value.
  type: string
  inputBinding:
    prefix: --reset_runtime_option
- id: global
  doc: Save option to user_options.py so that it will be automatically set for all
    user projects.
  type: boolean
  inputBinding:
    prefix: --global
- id: fasta2crr
  doc: Convert fasta files to a crr file (a binary format for faster access) that
    can be used by variant tools. This is only needed if you are working with a reference
    genome that is not supported by variant tools. This parameter accepts a list of
    fastq files (URLs and .gz format are acceptable) followed by the name of the .crr
    file. The .crr file should be put under the project directory or the local resource
    directory (under directory reference) to be usable by variant tools.
  type: string[]
  inputBinding:
    prefix: --fasta2crr
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- admin
