class: CommandLineTool
id: RiboCode_onestep.cwl
inputs:
- id: in_gtf
  doc: "Default, suitable for GENCODE and ENSEMBL GTF file,\nplease refer: https://en.wikipedia.org/wiki/GENCODE"
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_fast_a
  doc: The genome sequences file in fasta format.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_rpf_mapping_file
  doc: ribo-seq BAM/SAM file aligned to the transcriptome.
  type: File?
  inputBinding:
    prefix: --rpf_mapping_file
- id: in_input_file
  doc: "the file list the ribo-seq BAM/SAM files aligned to\nthe transcriptome."
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_stranded
  doc: "whether the data is strand-specific, reverse means\nreversed strand interpretation.(default:\
    \ yes)"
  type: string?
  inputBinding:
    prefix: --stranded
- id: in_minimum_length
  doc: minimum read length for metaplots analysis, default 24
  type: long?
  inputBinding:
    prefix: --minimum-length
- id: in_maximum_length
  doc: maximum read length for metaplots analysis, default 36
  type: long?
  inputBinding:
    prefix: --maximum-length
- id: in_frame_zero_percent
  doc: "proportion threshold of reads in frame0. For\nautomatically predicting P-site\
    \ location, default 0.65"
  type: long?
  inputBinding:
    prefix: --frame0_percent
- id: in_longest_orf
  doc: "Default: yes, the region from most distal AUG to stop\nwas defined as an ORF.\
    \ If set to no , the position of\nstart codon will be automatically determined\
    \ by\nprogram."
  type: string?
  inputBinding:
    prefix: --longest-orf
- id: in_pval_cut_off
  doc: P-value cutoff for ORF filtering, default 0.05
  type: double?
  inputBinding:
    prefix: --pval-cutoff
- id: in_start_codon
  doc: 'The canonical start codon. default: ATG'
  type: string?
  inputBinding:
    prefix: --start_codon
- id: in_alt_start_codons
  doc: "The alternative start codon, such as CTG,GTG, default:\nNone. Multiple codons\
    \ should be separated by comma."
  type: string?
  inputBinding:
    prefix: --alt_start_codons
- id: in_stop_codon
  doc: 'Stop codon, default: TAA,TAG,TGA'
  type: string?
  inputBinding:
    prefix: --stop_codon
- id: in_transl_table
  doc: "ORF translation table(Default: 1). Assign the correct\ngenetic code based\
    \ on your organism, [please refer: ht\ntps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\n\
    ]"
  type: long?
  inputBinding:
    prefix: --transl_table
- id: in_min_aa_length
  doc: The minimal length of predicted peptides,default 20
  type: long?
  inputBinding:
    prefix: --min-AA-length
- id: in_output_name
  doc: 'output file name, default: final_result'
  type: File?
  inputBinding:
    prefix: --output-name
- id: in_output_gtf
  doc: output the gtf file of predicted ORFs
  type: File?
  inputBinding:
    prefix: --output-gtf
- id: in_output_bed
  doc: output the bed file of predicted ORFs
  type: File?
  inputBinding:
    prefix: --output-bed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_name
  doc: 'output file name, default: final_result'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_name)
- id: out_output_gtf
  doc: output the gtf file of predicted ORFs
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gtf)
- id: out_output_bed
  doc: output the bed file of predicted ORFs
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1
cwlVersion: v1.1
baseCommand:
- RiboCode_onestep
