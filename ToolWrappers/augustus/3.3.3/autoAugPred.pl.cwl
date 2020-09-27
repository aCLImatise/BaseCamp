class: CommandLineTool
id: autoAugPred.pl.cwl
inputs:
- id: in_genome
  doc: fasta file with DNA sequences for training
  type: File
  inputBinding:
    prefix: --genome
- id: in_species
  doc: species name as used by AUGUSTUS
  type: string
  inputBinding:
    prefix: --species
- id: in_continue
  doc: after cluster jobs are finished, continue to compile prediction sets
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_use_existing
  doc: use and change the present config and parameter files if they exist for 'species'
  type: boolean
  inputBinding:
    prefix: --useexisting
- id: in_single_cpu
  doc: run sequentially on a single CPU instead of parallel jobs on a cluster
  type: boolean
  inputBinding:
    prefix: --singleCPU
- id: in_noninteractive
  doc: "for Sun Grid Engine users, who have configurated an openssh key\nwith this\
    \ option AUGUSTUS is executed automatically on the SGE cluster"
  type: boolean
  inputBinding:
    prefix: --noninteractive
- id: in_working_dir
  doc: =/path/to/wd/      in the working directory results and temporary files are
    stored.
  type: boolean
  inputBinding:
    prefix: --workingdir
- id: in_utr
  doc: switch it on to run AUGUSTUS with untranslated regions. Off by default
  type: boolean
  inputBinding:
    prefix: --utr
- id: in_hints
  doc: run AUGUSTUS using extrinsic information from hintsfile
  type: File
  inputBinding:
    prefix: --hints
- id: in_extrinsic_cfg
  doc: "configuration file with parameters (boni/mali) for hints.\ndefault $AUGUSTUS_CONFIG_PATH/config/extrinsic/extrinsic.cfg"
  type: File
  inputBinding:
    prefix: --extrinsiccfg
- id: in_verbose
  doc: the verbosity level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_remote
  doc: specify the SGE cluster name for noninteractive, default "fe"
  type: string
  inputBinding:
    prefix: --remote
- id: in_augustus_config_path
  doc: 'path to augustus/config directory. default: use environment variable'
  type: File
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- autoAugPred.pl
