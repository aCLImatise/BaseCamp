class: CommandLineTool
id: single_sample_vcf2tsv.py.cwl
inputs:
- id: vcf_format
  doc: 'Input file is VCF formatted. (default: None)'
  type: string
  inputBinding:
    prefix: --vcf-format
- id: bed_format
  doc: 'Input file is BED formatted. (default: None)'
  type: string
  inputBinding:
    prefix: --bed-format
- id: positions_list
  doc: 'A list of positions: tab seperating contig and positions. (default: None)'
  type: string
  inputBinding:
    prefix: --positions-list
- id: in_bam
  doc: 'Tumor tBAM File (default: None)'
  type: string
  inputBinding:
    prefix: --in-bam
- id: ground_truth_vcf
  doc: 'VCF of true hits (default: None)'
  type: string
  inputBinding:
    prefix: --ground-truth-vcf
- id: dbsnp_vcf
  doc: 'dbSNP VCF: do not use if input VCF is annotated (default: None)'
  type: string
  inputBinding:
    prefix: --dbsnp-vcf
- id: cosmic_vcf
  doc: 'COSMIC VCF: do not use if input VCF is annotated (default: None)'
  type: string
  inputBinding:
    prefix: --cosmic-vcf
- id: mute_ct_vcf
  doc: 'MuTect VCF (default: None)'
  type: string
  inputBinding:
    prefix: --mutect-vcf
- id: vars_can_vcf
  doc: 'VarScan2 VCF (default: None)'
  type: string
  inputBinding:
    prefix: --varscan-vcf
- id: var_dict_vcf
  doc: 'VarDict VCF (default: None)'
  type: string
  inputBinding:
    prefix: --vardict-vcf
- id: lo_freq_vcf
  doc: 'LoFreq VCF (default: None)'
  type: string
  inputBinding:
    prefix: --lofreq-vcf
- id: scalpel_vcf
  doc: 'Scalpel VCF (default: None)'
  type: string
  inputBinding:
    prefix: --scalpel-vcf
- id: str_elka_vcf
  doc: 'Strelka VCF (default: None)'
  type: string
  inputBinding:
    prefix: --strelka-vcf
- id: genome_reference
  doc: '.fasta.fai file to get the contigs (default: None)'
  type: string
  inputBinding:
    prefix: --genome-reference
- id: de_duplicate
  doc: 'Do not consider duplicate reads from tBAM files. Default is to count everything
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --deduplicate
- id: minimum_mapping_quality
  doc: 'Minimum mapping quality below which is considered poor (default: 1)'
  type: long
  inputBinding:
    prefix: --minimum-mapping-quality
- id: minimum_base_quality
  doc: 'Minimum base quality below which is considered poor (default: 5)'
  type: long
  inputBinding:
    prefix: --minimum-base-quality
- id: minimum_num_callers
  doc: 'Minimum number of tools to be considered (default: 0)'
  type: long
  inputBinding:
    prefix: --minimum-num-callers
- id: p_scale
  doc: 'phred, fraction, or none (default: None)'
  type: string
  inputBinding:
    prefix: --p-scale
- id: output_tsv_file
  doc: "Output TSV Name (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output-tsv-file
outputs: []
cwlVersion: v1.1
baseCommand:
- single_sample_vcf2tsv.py
