#!/usr/bin/env cwl-runner

baseCommand:
- megalodon
class: CommandLineTool
cwlVersion: v1.0
id: megalodon
inputs:
- doc: Directory containing raw fast5 (will be searched recursively).
  id: fast5s_dir
  inputBinding:
    position: 0
  type: string
- doc: 'Guppy config. Default: dna_r9.4.1_450bps_modbases_dam- dcm-cpg_hac.cfg'
  id: guppy_config
  inputBinding:
    prefix: --guppy-config
  type: string
- doc: 'Path to guppy server executable. Default: ./ont- guppy/bin/guppy_basecall_server'
  id: guppy_server_path
  inputBinding:
    prefix: --guppy-server-path
  type: string
- doc: 'Guppy server port. Default: 5555'
  id: guppy_server_port
  inputBinding:
    prefix: --guppy-server-port
  type: string
- doc: 'Directory to store output results. Default: megalodon_results'
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: Overwrite output directory if it exists.
  id: overwrite
  inputBinding:
    prefix: --overwrite
  type: boolean
- doc: 'Mappings output format. Choices: bam, cram, sam'
  id: mappings_format
  inputBinding:
    prefix: --mappings-format
  type: string
- doc: Reference FASTA or minimap2 index file used for mapping called reads.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Compute variant aggregation for haploid genotypes. Default: diploid'
  id: haploid
  inputBinding:
    prefix: --haploid
  type: boolean
- doc: Sequence variants to call for each read in VCF/BCF format (required for variant
    output).
  id: variant_filename
  inputBinding:
    prefix: --variant-filename
  type: string
- doc: 'File containing emperical calibration for variant scores. See megalodon/scripts/calibrate_variant_llr_scores.py.
    Default: Load default calibration for specified guppy config.'
  id: variant_calibration_filename
  inputBinding:
    prefix: --variant-calibration-filename
  type: string
- doc: MOTIF REL_POSITION Restrict modified base calls to specified motif(s). For
    example to restrict to CpG sites use "--mod-motif Z CG 0".
  id: mod_motif
  inputBinding:
    prefix: --mod-motif
  type: string
- doc: 'File containing emperical calibration for modified base scores. See megalodon/scripts/calibrate_mod_llr_scores.py.
    Default: Load default calibration for specified guppy config.'
  id: mod_calibration_filename
  inputBinding:
    prefix: --mod-calibration-filename
  type: string
- doc: Show all options.
  id: help_long
  inputBinding:
    prefix: --help-long
  type: boolean
- doc: 'Number of parallel processes. Default: 1'
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: GPU devices for guppy or taiyaki basecalling backends.
  id: devices
  inputBinding:
    prefix: --devices
  type:
    items: string
    type: array
- doc: 'Output verbose output on read progress. Outputs N most common points where
    reads could not be processed further. Default: 3'
  id: verbose_read_progress
  inputBinding:
    prefix: --verbose-read-progress
  type: string
