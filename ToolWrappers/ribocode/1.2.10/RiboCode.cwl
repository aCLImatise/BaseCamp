class: CommandLineTool
id: RiboCode.cwl
inputs:
- id: in_an_not_dir
  doc: "transcripts annotation directory, generated by\nprepare_transcripts."
  type: Directory
  inputBinding:
    prefix: --annot_dir
- id: in_config_file
  doc: "list bam file and P-sites information in this file,\nplease refer to the example\
    \ file in data folder."
  type: File
  inputBinding:
    prefix: --config_file
- id: in_longest_orf
  doc: "Default: yes, the region from most distal AUG to stop\nwas defined as an ORF.\
    \ If set to no , the position of\nstart codon will be automatically determined\
    \ by\nprogram."
  type: string
  inputBinding:
    prefix: --longest-orf
- id: in_pval_cut_off
  doc: P-value cutoff for ORF filtering, default 0.05
  type: double
  inputBinding:
    prefix: --pval-cutoff
- id: in_start_codon
  doc: 'The canonical start codon. default: ATG'
  type: string
  inputBinding:
    prefix: --start_codon
- id: in_alt_start_codons
  doc: "The alternative start codon, such as CTG,GTG, default:\nNone. Multiple codons\
    \ should be separated by comma."
  type: string
  inputBinding:
    prefix: --alt_start_codons
- id: in_stop_codon
  doc: 'Stop codon, default: TAA,TAG,TGA'
  type: string
  inputBinding:
    prefix: --stop_codon
- id: in_transl_table
  doc: "ORF translation table(Default: 1). Assign the correct\ngenetic code based\
    \ on your organism, [please refer: ht\ntps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\n\
    ]"
  type: long
  inputBinding:
    prefix: --transl_table
- id: in_min_aa_length
  doc: The minimal length of predicted peptides,default 20
  type: long
  inputBinding:
    prefix: --min-AA-length
- id: in_output_gtf
  doc: output the gtf file of predicted ORFs
  type: File
  inputBinding:
    prefix: --output-gtf
- id: in_output_bed
  doc: output the bed file of predicted ORFs
  type: File
  inputBinding:
    prefix: --output-bed
- id: in_output_name
  doc: 'output file name, default: final_result'
  type: File
  inputBinding:
    prefix: --output-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gtf
  doc: output the gtf file of predicted ORFs
  type: File
  outputBinding:
    glob: $(inputs.in_output_gtf)
- id: out_output_bed
  doc: output the bed file of predicted ORFs
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed)
- id: out_output_name
  doc: 'output file name, default: final_result'
  type: File
  outputBinding:
    glob: $(inputs.in_output_name)
cwlVersion: v1.1
baseCommand:
- RiboCode
