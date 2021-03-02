class: CommandLineTool
id: map_single_fragments.py.cwl
inputs:
- id: in_fast_q_one
  doc: "A list of the first read of the sequencing. (default:\nNone)"
  type: long[]
  inputBinding:
    prefix: --fastq_1
- id: in_list_second_optionaldefault
  doc: "[FASTQ_2 [FASTQ_2 ...]], --fastq_2 [FASTQ_2 [FASTQ_2 ...]]\nA list of the\
    \ second read of the sequencing. The order\nof these files should be as same as\
    \ -1. Optional.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_genes_gff
  doc: "Name of gff file to count the reads per gene. If not\ngiven or not readable,\
    \ skip this stage. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --genes_gff
- id: in_reverse_complement
  doc: "Treat the reads as reverse complement only when\ncounting number of reads\
    \ per gene and generating wig\nfile. The resulting BAM files will be the original\n\
    ones. Use this when treating libraries built using\nLivny's protocol. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --reverse_complement
- id: in_feature
  doc: "Name of features to count on the GTF file (column 2).\n(default: exon)"
  type: File?
  inputBinding:
    prefix: --feature
- id: in_identifier
  doc: "Name of identifier to print (in column 8 of the GTF\nfile). (default: gene_id)"
  type: File?
  inputBinding:
    prefix: --identifier
- id: in_overlap
  doc: "Minimal required overlap between the fragment and the\nfeature. (default:\
    \ 5)"
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_allowed_mismatches
  doc: 'Allowed mismatches for BWA mapping. (default: 2)'
  type: long?
  inputBinding:
    prefix: --allowed_mismatches
- id: in_out_head
  doc: "Output file names of counts table (suffixed\n_counts.txt) and wiggle file\
    \ (suffixed _coverage.wig)\n(default: bwa_mapped_single_reads)"
  type: File?
  inputBinding:
    prefix: --outhead
- id: in_dir_out
  doc: "Output directory, default is this directory. (default:\n.)"
  type: Directory?
  inputBinding:
    prefix: --dirout
- id: in_bwa_exec
  doc: 'bwa command (default: bwa)'
  type: string?
  inputBinding:
    prefix: --bwa_exec
- id: in_sam_tools_cmd
  doc: 'Samtools executable. (default: samtools)'
  type: string?
  inputBinding:
    prefix: --samtools_cmd
- id: in_params_aln
  doc: "Additional parameters for aln function of bwa.\n(default: -t 8 -R 200)"
  type: long?
  inputBinding:
    prefix: --params_aln
- id: in_sampe_params
  doc: "Additional parameters for sampe function of bwa.\n(default: -a 1500 -P)"
  type: long?
  inputBinding:
    prefix: --sampe_params
- id: in_sam_se_params
  doc: "Additional parameters for samse function of bwa.\n(default: )"
  type: string?
  inputBinding:
    prefix: --samse_params
- id: in_create_wig
  doc: 'Create a coverage wiggle file. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --create_wig
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_head
  doc: "Output file names of counts table (suffixed\n_counts.txt) and wiggle file\
    \ (suffixed _coverage.wig)\n(default: bwa_mapped_single_reads)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_head)
- id: out_dir_out
  doc: "Output directory, default is this directory. (default:\n.)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- map_single_fragments.py
