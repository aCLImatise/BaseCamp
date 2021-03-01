class: CommandLineTool
id: MetageneAnalysis.cwl
inputs:
- id: in_bam_list_file
  doc: "Bam file list, containing 4 columns.Namely\nbamFiles,readLength, offSet, bamLegend.\
    \ '-f' and '-i,\n-r, -s, -t' parameters are mutually\nexclusive.default=none."
  type: File?
  inputBinding:
    prefix: --bamListFile
- id: in_input
  doc: "Input file(s) in bam format. All files should be split\nby comma e.g. 1.bam,2.bam,3.bam[required].\
    \ '-i' and\n'-f' are mutually exclusive. default=none"
  type: File?
  inputBinding:
    prefix: --input
- id: in_coordinate_file
  doc: "The file should contain the coordinate of start and\nstop codon. Generated\
    \ by\nOutputTranscriptInfo.py.[required]"
  type: File?
  inputBinding:
    prefix: --coordinateFile
- id: in_ot_put_prefix
  doc: Prefix of output files.[required]
  type: string?
  inputBinding:
    prefix: --otput_prefix
- id: in_specific_reads_length
  doc: "Specific the lenght to do analysis, comma split. e.g.\n'28,29,30'.If use all\
    \ length set 'All'. Bam files diff\nlength select split by '_' e.g. '28,29,30_ALL_27,28'\n\
    [required]. '-r' and '-f' are mutually exclusive."
  type: long?
  inputBinding:
    prefix: --specific_reads_length
- id: in_offset
  doc: "Specific the offset corresponding to read length,\ncomma split. e.g. '12,13,13'.\
    \ No offset set 0. Bam\nfiles diff offset select split by '_' e.g.\n'12,13,13_0_12,12'\
    \ [required]. '-s' and '-f' are\nmutually exclusive."
  type: long?
  inputBinding:
    prefix: --offset
- id: in_bam_file_legend
  doc: "The legend of each bam files, comma split. e.g.\n'condition1,condition2,condition3'\
    \ [required]. '-t'\nand '-f' are mutually exclusive."
  type: File?
  inputBinding:
    prefix: --bam_file_legend
- id: in_unit_type
  doc: "Unit type we used for metagene analysis. Either 'nt'\nor 'codon'. default=codon"
  type: string?
  inputBinding:
    prefix: --unit_type
- id: in_filter_mode
  doc: "Mode for filtering transcripts. Either 'counts' or\n'RPKM'. default=counts."
  type: string?
  inputBinding:
    prefix: --filter_mode
- id: in_select_trans_list
  doc: "Selected transcript list used for metagene\nanalysis.This files requires the\
    \ first column must be\nthe transcript ID  with a column name."
  type: string?
  inputBinding:
    prefix: --select_trans_list
- id: in_minimum_cds_codon
  doc: "Minimum CDS codon (codon unit). CDS codons smaller\nthan \"minimum_cds_codon\"\
    \ will be skipped. default=150"
  type: long?
  inputBinding:
    prefix: --minimum_cds_codon
- id: in_minimum_cds_counts
  doc: "Minimum CDS counts. CDS counts smaller than\n\"min_cds_counts\" will be skipped.\
    \ default=128"
  type: long?
  inputBinding:
    prefix: --minimum_cds_counts
- id: in_minimum_norm_region_counts
  doc: "Minimum counts in normalization region . Counts in\nnorm region smaller than\
    \ \"minimum_norm_region_counts\"\nwill be skipped. default=64"
  type: long?
  inputBinding:
    prefix: --minimum_norm_region_counts
- id: in_upstream_codon
  doc: "Upstream codon corresponding to start codon (codon\nunit). While corresponding\
    \ to stop codon, it is the\ndownstream codon."
  type: string?
  inputBinding:
    prefix: --upstream_codon
- id: in_downstream_codon
  doc: "Downstream codon corresponding to start codon (codon\nunit). While corresponding\
    \ to stop codon, it is the\nupstream codon."
  type: string?
  inputBinding:
    prefix: --downstream_codon
- id: in_normalize_exclude_codon
  doc: "The region of the normalization for each genes should\nexclude the first \"\
    normalize_exclude_codon\".\ndefault=30"
  type: long?
  inputBinding:
    prefix: --normalize_exclude_codon
- id: in_normalize_codon_density_num
  doc: "Output the first \"normalize_codon_density_num\" from\nthe start codon for\
    \ each qualified genes in each bam\nfiles. Pay attention that this parameter should\
    \ not\nbigger than -l parameter. default=100"
  type: long?
  inputBinding:
    prefix: --normalize_codon_density_num
- id: in_type
  doc: "Type of counts statistics.[CDS/cds or\nUTR/utr].default=CDS"
  type: string?
  inputBinding:
    prefix: --type
- id: in_id_type
  doc: "define the id type users input. the default is\ntranscript id, if not, will\
    \ be transformed into\ntranscript id. default=transcript_id"
  type: string?
  inputBinding:
    prefix: --id-type
- id: in_ci
  doc: "The confidence intervals of mean on each position\nbased on t distribution.\
    \ default=0.95"
  type: double?
  inputBinding:
    prefix: --CI
- id: in_norm
  doc: "Use density beyound the first 30 (-e) codons for\nnormalization or not. [yes/no]"
  type: long?
  inputBinding:
    prefix: --norm
- id: in_plot
  doc: Output a metagene plot or not. default=yes
  type: string?
  inputBinding:
    prefix: --plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetageneAnalysis
