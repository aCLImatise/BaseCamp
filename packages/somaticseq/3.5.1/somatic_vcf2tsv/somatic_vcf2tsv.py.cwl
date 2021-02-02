class: CommandLineTool
id: somatic_vcf2tsv.py.cwl
inputs:
- id: in_nba_m
  doc: "[-truth GROUND_TRUTH_VCF] [-dbsnp DBSNP_VCF]\n[-cosmic COSMIC_VCF] [-mutect\
    \ MUTECT_VCF]\n[-strelka STRELKA_VCF] [-sniper SOMATICSNIPER_VCF]\n[-varscan VARSCAN_VCF]\
    \ [-jsm JSM_VCF]\n[-vardict VARDICT_VCF] [-muse MUSE_VCF]\n[-lofreq LOFREQ_VCF]\
    \ [-scalpel SCALPEL_VCF]\n[-tnscope TNSCOPE_VCF] [-platypus PLATYPUS_VCF] -ref\n\
    GENOME_REFERENCE [-dedup]\n[-minMQ MINIMUM_MAPPING_QUALITY]\n[-minBQ MINIMUM_BASE_QUALITY]\n\
    [-mincaller MINIMUM_NUM_CALLERS] [-scale P_SCALE]\n[-outfile OUTPUT_TSV_FILE]"
  type: File
  inputBinding:
    prefix: -nbam
- id: in_vcf_format
  doc: 'Input file is VCF formatted. (default: None)'
  type: File
  inputBinding:
    prefix: --vcf-format
- id: in_bed_format
  doc: 'Input file is BED formatted. (default: None)'
  type: File
  inputBinding:
    prefix: --bed-format
- id: in_positions_list
  doc: "A list of positions: tab seperating contig and\npositions. (default: None)"
  type: string
  inputBinding:
    prefix: --positions-list
- id: in_normal_bam_file
  doc: 'Normal BAM File (default: None)'
  type: File
  inputBinding:
    prefix: --normal-bam-file
- id: in_tumor_bam_file
  doc: 'Tumor BAM File (default: None)'
  type: File
  inputBinding:
    prefix: --tumor-bam-file
- id: in_ground_truth_vcf
  doc: 'VCF of true hits (default: None)'
  type: string
  inputBinding:
    prefix: --ground-truth-vcf
- id: in_dbsnp_vcf
  doc: "dbSNP VCF: do not use if input VCF is annotated\n(default: None)"
  type: string
  inputBinding:
    prefix: --dbsnp-vcf
- id: in_cosmic_vcf
  doc: "COSMIC VCF: do not use if input VCF is annotated\n(default: None)"
  type: string
  inputBinding:
    prefix: --cosmic-vcf
- id: in_mute_ct_vcf
  doc: 'MuTect VCF (default: None)'
  type: string
  inputBinding:
    prefix: --mutect-vcf
- id: in_str_elka_vcf
  doc: 'Strelka VCF (default: None)'
  type: string
  inputBinding:
    prefix: --strelka-vcf
- id: in_somatic_sniper_vcf
  doc: 'SomaticSniper VCF (default: None)'
  type: string
  inputBinding:
    prefix: --somaticsniper-vcf
- id: in_vars_can_vcf
  doc: 'VarScan2 VCF (default: None)'
  type: long
  inputBinding:
    prefix: --varscan-vcf
- id: in_jsm_vcf
  doc: 'JointSNVMix2 VCF (default: None)'
  type: long
  inputBinding:
    prefix: --jsm-vcf
- id: in_var_dict_vcf
  doc: 'VarDict VCF (default: None)'
  type: string
  inputBinding:
    prefix: --vardict-vcf
- id: in_muse_vcf
  doc: 'MuSE VCF (default: None)'
  type: string
  inputBinding:
    prefix: --muse-vcf
- id: in_lo_freq_vcf
  doc: 'LoFreq VCF (default: None)'
  type: string
  inputBinding:
    prefix: --lofreq-vcf
- id: in_scalpel_vcf
  doc: 'Scalpel VCF (default: None)'
  type: string
  inputBinding:
    prefix: --scalpel-vcf
- id: in_tn_scope_vcf
  doc: 'TNscope VCF (default: None)'
  type: string
  inputBinding:
    prefix: --tnscope-vcf
- id: in_platypus_vcf
  doc: 'Platypus VCF (default: None)'
  type: string
  inputBinding:
    prefix: --platypus-vcf
- id: in_genome_reference
  doc: '.fasta.fai file to get the contigs (default: None)'
  type: File
  inputBinding:
    prefix: --genome-reference
- id: in_de_duplicate
  doc: "Do not consider duplicate reads from BAM files.\nDefault is to count everything\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --deduplicate
- id: in_minimum_mapping_quality
  doc: "Minimum mapping quality below which is considered poor\n(default: 1)"
  type: long
  inputBinding:
    prefix: --minimum-mapping-quality
- id: in_minimum_base_quality
  doc: "Minimum base quality below which is considered poor\n(default: 5)"
  type: long
  inputBinding:
    prefix: --minimum-base-quality
- id: in_minimum_num_callers
  doc: 'Minimum number of tools to be considered (default: 0)'
  type: long
  inputBinding:
    prefix: --minimum-num-callers
- id: in_p_scale
  doc: 'phred, fraction, or none (default: None)'
  type: string
  inputBinding:
    prefix: --p-scale
- id: in_output_tsv_file
  doc: "Output TSV Name (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"
  type: File
  inputBinding:
    prefix: --output-tsv-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tsv_file
  doc: "Output TSV Name (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_tsv_file)
cwlVersion: v1.1
baseCommand:
- somatic_vcf2tsv.py
