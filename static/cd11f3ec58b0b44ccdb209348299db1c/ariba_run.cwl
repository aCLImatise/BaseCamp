class: CommandLineTool
id: ariba_run.cwl
inputs:
- id: in_nuc_mer_min_id
  doc: Minimum alignment identity (delta-filter -i) [90]
  type: long
  inputBinding:
    prefix: --nucmer_min_id
- id: in_nuc_mer_min_len
  doc: Minimum alignment length (delta-filter -i) [20]
  type: long
  inputBinding:
    prefix: --nucmer_min_len
- id: in_nuc_mer_break_len
  doc: Value to use for -breaklen when running nucmer [200]
  type: long
  inputBinding:
    prefix: --nucmer_breaklen
- id: in_assembler
  doc: Assembler to use
  type: string
  inputBinding:
    prefix: --assembler
- id: in_assembly_cov
  doc: "Target read coverage when sampling reads for assembly\n[50]"
  type: long
  inputBinding:
    prefix: --assembly_cov
- id: in_min_sc_aff_depth
  doc: "Minimum number of read pairs needed as evidence for\nscaffold link between\
    \ two contigs [10]"
  type: long
  inputBinding:
    prefix: --min_scaff_depth
- id: in_spades_mode
  doc: "If using Spades assembler, either use default WGS\nmode, Single Cell mode\
    \ (`spades.py --sc`) or RNA mode\n(`spades.py --rna`). Use SC or RNA mode if your\
    \ input\nis from a viral sequencing with very uneven and deep\ncoverage. Set `--assembly_cov`\
    \ to some high value if\nusing SC or RNA mode"
  type: string
  inputBinding:
    prefix: --spades_mode
- id: in_spades_options
  doc: "Extra options to pass to Spades assembler. Sensible\ndefault options will\
    \ be picked based on\n`--spades_mode` argument. Anything set here will\nreplace\
    \ the defaults completely"
  type: string
  inputBinding:
    prefix: --spades_options
- id: in_threads
  doc: "Experimental. Number of threads. Will run clusters in\nparallel, but not minimap\
    \ (yet) [1]"
  type: long
  inputBinding:
    prefix: --threads
- id: in_assembled_threshold
  doc: "(between 0 and 1)\nIf proportion of gene assembled (regardless of into\nhow\
    \ many contigs) is at least this value then the flag\ngene_assembled is set [0.95]"
  type: double
  inputBinding:
    prefix: --assembled_threshold
- id: in_gene_nt_extend
  doc: "Max number of nucleotides to extend ends of gene\nmatches to look for start/stop\
    \ codons [30]"
  type: long
  inputBinding:
    prefix: --gene_nt_extend
- id: in_unique_threshold
  doc: "(between 0 and 1)\nIf proportion of bases in gene assembled more than\nonce\
    \ is <= this value, then the flag unique_contig is\nset [0.03]"
  type: double
  inputBinding:
    prefix: --unique_threshold
- id: in_force
  doc: Overwrite output directory, if it already exists
  type: Directory
  inputBinding:
    prefix: --force
- id: in_no_clean
  doc: Do not clean up intermediate files
  type: boolean
  inputBinding:
    prefix: --noclean
- id: in_tmp_dir
  doc: "Existing directory in which to create a temporary\ndirectory used for local\
    \ assemblies"
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_prepare_ref_dir
  doc: Name of output directory when "ariba prepareref" was
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: reads_1               Name of fwd reads fastq file
  type: string
  inputBinding:
    position: 1
- id: in_reads_two
  doc: Name of rev reads fastq file
  type: long
  inputBinding:
    position: 2
- id: in_outdir
  doc: Output directory (must not already exist)
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Overwrite output directory, if it already exists
  type: Directory
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- ariba
- run
