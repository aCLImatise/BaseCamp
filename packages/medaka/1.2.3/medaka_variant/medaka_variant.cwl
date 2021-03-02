class: CommandLineTool
id: medaka_variant.cwl
inputs:
- id: in_input_bam_reads
  doc: "input bam of reads aligned to ref. Read groups are currently ignored,\nso\
    \ the bam should only contain reads from a single sample."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_fasta_input
  doc: input fasta input reference (required).
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_region_strings_wrap
  doc: "region string(s). If providing multiple regions, wrap them in quotes.\nIf\
    \ not provided, will process all contigs in bam."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_output_folder_default
  doc: 'output folder (default: medaka_variant).'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_var_4
  doc: "medaka model for initial SNP calling from mixed reads prior to phasing,\n\
    (default: r941_prom_snp_g360).\nAvailable: r103_min_high_g345, r103_min_high_g360,\
    \ r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303,\
    \ r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330,\
    \ r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360,\
    \ r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344,\
    \ r941_prom_high_g360, r941_prom_high_g4011, r941_prom_snp_g303, r941_prom_snp_g322,\
    \ r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\n\
    Alternatively a .hdf file from 'medaka train'."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_m
  doc: "medaka model for final variant calling from phased reads,\n(default: r941_prom_variant_g360).\n\
    Available: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210,\
    \ r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303,\
    \ r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344,\
    \ r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303,\
    \ r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_high_g4011,\
    \ r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303,\
    \ r941_prom_variant_g322, r941_prom_variant_g360.\nAlternatively a .hdf file from\
    \ 'medaka train'."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_number_threads_create
  doc: 'number of threads with which to create features (default: 1).'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_phased_vcf
  doc: output phased vcf.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_batchsize_controls_default
  doc: 'batchsize, controls memory use (default: 100).'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_delete_intermediate_files
  doc: 'delete intermediate files. (default: keep).'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_threshold_filtering_indels
  doc: 'threshold for filtering indels in final VCF (default: 9)'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_threshold_filtering_snps
  doc: 'threshold for filtering SNPs in final VCF (default: 8)'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_avoid_filtering_final
  doc: 'Avoid filtering of final VCF (default: do filter)'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_stop_snp_calling
  doc: stop after initial SNP calling from mixed reads prior to phasing.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_split_mnps_snps
  doc: split MNPs into SNPs.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_sample_name
  doc: set this sample name in the output VCF and phased bam.
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_default
  doc: 'output folder (default: medaka_variant).'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder_default)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0
cwlVersion: v1.1
baseCommand:
- medaka_variant
