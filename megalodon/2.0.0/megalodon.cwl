class: CommandLineTool
id: megalodon.cwl
inputs:
- id: fast5s_dir
  doc: Directory containing raw fast5 (will be searched recursively).
  type: string
  inputBinding:
    position: 0
- id: guppy_config
  doc: 'Guppy config. Default: dna_r9.4.1_450bps_modbases_dam- dcm-cpg_hac.cfg'
  type: string
  inputBinding:
    prefix: --guppy-config
- id: guppy_server_path
  doc: 'Path to guppy server executable. Default: ./ont- guppy/bin/guppy_basecall_server'
  type: string
  inputBinding:
    prefix: --guppy-server-path
- id: guppy_server_port
  doc: 'Guppy server port. Default: 5555'
  type: string
  inputBinding:
    prefix: --guppy-server-port
- id: output_directory
  doc: 'Directory to store output results. Default: megalodon_results'
  type: string
  inputBinding:
    prefix: --output-directory
- id: overwrite
  doc: Overwrite output directory if it exists.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: mappings_format
  doc: 'Mappings output format. Choices: bam, cram, sam'
  type: string
  inputBinding:
    prefix: --mappings-format
- id: reference
  doc: Reference FASTA or minimap2 index file used for mapping called reads.
  type: string
  inputBinding:
    prefix: --reference
- id: haploid
  doc: 'Compute variant aggregation for haploid genotypes. Default: diploid'
  type: boolean
  inputBinding:
    prefix: --haploid
- id: variant_filename
  doc: Sequence variants to call for each read in VCF/BCF format (required for variant
    output).
  type: string
  inputBinding:
    prefix: --variant-filename
- id: variant_calibration_filename
  doc: 'File containing emperical calibration for variant scores. See megalodon/scripts/calibrate_variant_llr_scores.py.
    Default: Load default calibration for specified guppy config.'
  type: string
  inputBinding:
    prefix: --variant-calibration-filename
- id: mod_motif
  doc: MOTIF REL_POSITION Restrict modified base calls to specified motif(s). For
    example to restrict to CpG sites use "--mod-motif Z CG 0".
  type: string
  inputBinding:
    prefix: --mod-motif
- id: mod_calibration_filename
  doc: 'File containing emperical calibration for modified base scores. See megalodon/scripts/calibrate_mod_llr_scores.py.
    Default: Load default calibration for specified guppy config.'
  type: string
  inputBinding:
    prefix: --mod-calibration-filename
- id: help_long
  doc: Show all options.
  type: boolean
  inputBinding:
    prefix: --help-long
- id: processes
  doc: 'Number of parallel processes. Default: 1'
  type: string
  inputBinding:
    prefix: --processes
- id: devices
  doc: GPU devices for guppy or taiyaki basecalling backends.
  type: string[]
  inputBinding:
    prefix: --devices
- id: verbose_read_progress
  doc: 'Output verbose output on read progress. Outputs N most common points where
    reads could not be processed further. Default: 3'
  type: string
  inputBinding:
    prefix: --verbose-read-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- megalodon
