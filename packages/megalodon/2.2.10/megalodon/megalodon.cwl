class: CommandLineTool
id: megalodon.cwl
inputs:
- id: in_guppy_config
  doc: "Guppy config. Default: dna_r9.4.1_450bps_modbases_dam-\ndcm-cpg_hac.cfg"
  type: double?
  inputBinding:
    prefix: --guppy-config
- id: in_guppy_server_path
  doc: "Path to guppy server executable. Default: ./ont-\nguppy/bin/guppy_basecall_server"
  type: File?
  inputBinding:
    prefix: --guppy-server-path
- id: in_live_processing
  doc: "Process reads from a live sequencing run. The\n[fast5s_dir] must be the base\
    \ MinKNOW output\ndirectory. Megalodon will continue searching for FAST5\nfiles\
    \ until the file starting with \"final_summary\" is\nfound."
  type: File?
  inputBinding:
    prefix: --live-processing
- id: in_outputs
  doc: "[{basecalls,mod_basecalls,mappings,per_read_variants,variants,variant_mappings,per_read_mods,mods,mod_mappings,signal_mappings,per_read_refs}\
    \ ...]\nDesired output(s).\nOptions:\nbasecalls: Called bases (FASTA/Q)\nmod_basecalls:\
    \ Basecall-anchored modified base scores (HDF5)\nmappings: Mapped reads (BAM/CRAM/SAM)\n\
    per_read_variants: Per-read, per-site sequence variant scores database\nvariants:\
    \ Sample-level aggregated sequence variant calls (VCF)\nvariant_mappings: Per-read\
    \ mappings annotated with variant calls\nper_read_mods: Per-read, per-site modified\
    \ base scores database\nmods: Sample-level aggregated modified base calls (modVCF)\n\
    mod_mappings: Per-read mappings annotated with modified base calls\nsignal_mappings:\
    \ Signal mappings for taiyaki model training (HDF5)\nper_read_refs: Per-read reference\
    \ sequence for model training (FASTA)\nDefault: ['basecalls']"
  type: string?
  inputBinding:
    prefix: --outputs
- id: in_output_directory
  doc: "Directory to store output results. Default:\nmegalodon_results"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  inputBinding:
    prefix: --overwrite
- id: in_mappings_format
  doc: 'Mappings output format. Choices: bam, cram, sam'
  type: string?
  inputBinding:
    prefix: --mappings-format
- id: in_reference
  doc: "Reference FASTA or minimap2 index file used for\nmapping called reads."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_haploid
  doc: "Compute variant aggregation for haploid genotypes.\nDefault: diploid"
  type: boolean?
  inputBinding:
    prefix: --haploid
- id: in_variant_filename
  doc: "Sequence variants to call for each read in VCF/BCF\nformat (required for variant\
    \ output)."
  type: File?
  inputBinding:
    prefix: --variant-filename
- id: in_mod_motif
  doc: "MOTIF REL_POSITION\nRestrict modified base calls to specified motif(s).\n\
    Argument takes 3 values representing 1) the single\nletter modified base(s), 2)\
    \ sequence motif and 3)\nrelative modified base position. Multiple --mod-motif\n\
    arguments may be provided to a single command. For\nexample to restrict to CpG\
    \ sites use \"--mod-motif Z CG\n0\"."
  type: long?
  inputBinding:
    prefix: --mod-motif
- id: in_processes
  doc: 'Number of parallel processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_devices
  doc: GPU devices for guppy or taiyaki basecalling backends.
  type: string[]
  inputBinding:
    prefix: --devices
- id: in_help_long
  doc: Show all options.
  type: boolean?
  inputBinding:
    prefix: --help-long
- id: in_rna
  doc: 'RNA input data. Requires RNA model. Default: DNA input'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_data
  doc: -v, --version         show megalodon version and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_live_processing
  doc: "Process reads from a live sequencing run. The\n[fast5s_dir] must be the base\
    \ MinKNOW output\ndirectory. Megalodon will continue searching for FAST5\nfiles\
    \ until the file starting with \"final_summary\" is\nfound."
  type: File?
  outputBinding:
    glob: $(inputs.in_live_processing)
- id: out_output_directory
  doc: "Directory to store output results. Default:\nmegalodon_results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon
