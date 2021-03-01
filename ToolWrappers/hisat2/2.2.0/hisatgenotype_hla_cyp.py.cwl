class: CommandLineTool
id: hisatgenotype_hla_cyp.py.cwl
inputs:
- id: in_base
  doc: "base filename for backbone HLA sequence, HLA variants,\nand HLA linking info"
  type: File?
  inputBinding:
    prefix: --base
- id: in_default_list
  doc: "A comma-separated list of HLA alleles to be tested.\nAlleles are retrieved\
    \ from default backbone data (all\nalleles included in backbone)."
  type: string?
  inputBinding:
    prefix: --default-list
- id: in_reference_type
  doc: "Reference type: gene, chromosome, and genome (default:\ngene)"
  type: string?
  inputBinding:
    prefix: --reference-type
- id: in_hla_list
  doc: "A comma-separated list of HLA genes (default:\nA,B,C,DQA1,DQB1,DRB1)"
  type: long?
  inputBinding:
    prefix: --hla-list
- id: in_partial
  doc: Include partial alleles (e.g. A_nuc.fasta)
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_aligner_list
  doc: "A comma-separated list of aligners (default:\nhisat2.graph,hisat2.linear,bowtie2.linear)"
  type: long?
  inputBinding:
    prefix: --aligner-list
- id: in_reads
  doc: Fastq read file name
  type: File?
  inputBinding:
    prefix: --reads
- id: in_alignment
  doc: BAM file name
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_simulate_interval
  doc: 'Reads simulated at every these base pairs (default: 1)'
  type: long?
  inputBinding:
    prefix: --simulate-interval
- id: in_coverage
  doc: Experimental purpose (assign reads based on coverage)
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_exclude_allele_list
  doc: "A comma-separated list of alleles to be excluded.\nEnter a number N to randomly\
    \ select N alleles for\nexclusion and N non-excluded alleles for testing (2N\n\
    tested in total)."
  type: long?
  inputBinding:
    prefix: --exclude-allele-list
- id: in_num_mismatch
  doc: "Maximum number of mismatches per read alignment to be\nconsidered (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --num-mismatch
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: long?
  inputBinding:
    prefix: --debug
- id: in_novel_allele_detection
  doc: "Change test to detection of new alleles. Report\nsensitivity and specificity\
    \ rate at the end.\n"
  type: boolean?
  inputBinding:
    prefix: --novel_allele_detection
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_hla_cyp.py
