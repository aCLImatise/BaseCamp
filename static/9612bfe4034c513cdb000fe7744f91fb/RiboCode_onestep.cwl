class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RiboCode_onestep.cwl
inputs:
- id: gtf
  doc: 'Default, suitable for GENCODE and ENSEMBL GTF file, please refer: https://en.wikipedia.org/wiki/GENCODE'
  type: string
  inputBinding:
    prefix: --gtf
- id: fast_a
  doc: The genome sequences file in fasta format.
  type: string
  inputBinding:
    prefix: --fasta
- id: rpf_mapping_file
  doc: ribo-seq BAM/SAM file aligned to the transcriptome.
  type: string
  inputBinding:
    prefix: --rpf_mapping_file
- id: input_file
  doc: the file list the ribo-seq BAM/SAM files aligned to the transcriptome.
  type: string
  inputBinding:
    prefix: --input_file
- id: stranded
  doc: 'whether the data is strand-specific, reverse means reversed strand interpretation.(default:
    yes)'
  type: string
  inputBinding:
    prefix: --stranded
- id: minimum_length
  doc: minimum read length for metaplots analysis, default 24
  type: long
  inputBinding:
    prefix: --minimum-length
- id: maximum_length
  doc: maximum read length for metaplots analysis, default 36
  type: long
  inputBinding:
    prefix: --maximum-length
- id: frame_zero_percent
  doc: proportion threshold of reads in frame0. For automatically predicting P-site
    location, default 0.65
  type: string
  inputBinding:
    prefix: --frame0_percent
- id: longest_orf
  doc: 'Default: yes, the region from most distal AUG to stop was defined as an ORF.
    If set to no , the position of start codon will be automatically determined by
    program.'
  type: string
  inputBinding:
    prefix: --longest-orf
- id: pval_cut_off
  doc: P-value cutoff for ORF filtering, default 0.05
  type: string
  inputBinding:
    prefix: --pval-cutoff
- id: start_codon
  doc: 'The canonical start codon. default: ATG'
  type: string
  inputBinding:
    prefix: --start_codon
- id: alt_start_codons
  doc: 'The alternative start codon, such as CTG,GTG, default: None. Multiple codons
    should be separated by comma.'
  type: string
  inputBinding:
    prefix: --alt_start_codons
- id: stop_codon
  doc: 'Stop codon, default: TAA,TAG,TGA'
  type: string
  inputBinding:
    prefix: --stop_codon
- id: transl_table
  doc: 'ORF translation table(Default: 1). Assign the correct genetic code based on
    your organism, [please refer: ht tps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi
    ]'
  type: string
  inputBinding:
    prefix: --transl_table
- id: min_aa_length
  doc: The minimal length of predicted peptides,default 20
  type: long
  inputBinding:
    prefix: --min-AA-length
- id: output_name
  doc: 'output file name, default: final_result'
  type: string
  inputBinding:
    prefix: --output-name
- id: output_gtf
  doc: output the gtf file of predicted ORFs
  type: boolean
  inputBinding:
    prefix: --output-gtf
- id: output_bed
  doc: output the bed file of predicted ORFs
  type: boolean
  inputBinding:
    prefix: --output-bed
outputs: []
cwlVersion: v1.1
baseCommand:
- RiboCode_onestep
