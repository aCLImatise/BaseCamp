class: CommandLineTool
id: map_chimeric_fragments.py.cwl
inputs:
- id: in_reverse_complement
  doc: "Treat the reads as reverse complement. This means that\nthe first read is\
    \ actually the 3' end of the fragment.\nUse this when using Jonathan Livny's protocol\
    \ for\nlibrary construction (default: False)"
  type: boolean?
  inputBinding:
    prefix: --reverse_complement
- id: in_transcripts
  doc: "A gff file of transcripts. If given, screen reads that\nmight reside from\
    \ the same transcript. Very useful for\nscreening ribosomal RNAs. Otherwise use\
    \ only the size\nlimit. (default: None)"
  type: long?
  inputBinding:
    prefix: --transcripts
- id: in_distance
  doc: "Maximal distance between concordant reads. If they are\ngenerated from the\
    \ same strand but larger than this\ndistance they will be considered as chimeric.\n\
    (default: 1000)"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_dust_thr
  doc: 'Threshold for dust filter. If 0 skip. (default: 10)'
  type: long?
  inputBinding:
    prefix: --dust_thr
- id: in_dir_out
  doc: "Output directory, default is this directory. (default:\n./remapped-data/)"
  type: Directory?
  inputBinding:
    prefix: --dirout
- id: in_all_reads
  doc: "Map all reads in the BAM file, write all the fragments\nthat are not chimeric\
    \ to the file specified here e.g.\n-a single_fragments_mapping.txt. By default\
    \ these\nreads will be written to the standard output.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --all_reads
- id: in_add_all_reads
  doc: "By default map all reads in the BAM file, write all\nthe fragments, either\
    \ chimeric ro single to the output\nfile (stdout). If this option is selected\
    \ don't wirte\nthe single reads. (default: True)"
  type: File?
  inputBinding:
    prefix: --add_all_reads
- id: in_keep_circular
  doc: "Remove reads that are probably a result of circular\nRNAs by default. If the\
    \ reads are close but in\nopposite order they will be removed unless this\nargument\
    \ is set. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep_circular
- id: in_length
  doc: "Length of sequence to map. Take the ends of the\nfragment and map each to\
    \ the genome. The length of the\nregion will be this length. (default: 25)"
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_mismatches
  doc: "Find alignment allowing this number of mismatches. If\nthere are more than\
    \ one match with this number of\nmismatches the read will be treated as if it\
    \ might\nmatch all of them and if there is one scenario in\nwhich the two ends\
    \ are concordant it will be removed.\n(default: 3)"
  type: long?
  inputBinding:
    prefix: --max_mismatches
- id: in_allowed_mismatches
  doc: "This number of mismatches is allowed between the a\nmatch and the genome.\
    \ If there are mapped reads with\nless than --max_mismatches mismatches but more\
    \ than\nthis number the read will be ignored. (default: 1)"
  type: long?
  inputBinding:
    prefix: --allowed_mismatches
- id: in_skip_mapping
  doc: "Skip the mapping step, use previously mapped files.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_mapping
- id: in_maxg
  doc: "If a read has more than this fraction of Gs remove\nthis readfrom the screen.\
    \ This is due to nextseq\ntechnology which puts G where there is no signal, the\n\
    poly G might just be noise. When using other\nsequencing technologies set to 1.\
    \ (default: 0.8)"
  type: double?
  inputBinding:
    prefix: --maxG
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
  doc: "Additional parameters for aln function of bwa.\n(default: -t 8 -N -M 0)"
  type: long?
  inputBinding:
    prefix: --params_aln
- id: in_sam_se_params
  doc: "Additional parameters for samse function of bwa.\n(default: -n 1000)\n"
  type: long?
  inputBinding:
    prefix: --samse_params
- id: in_genome_fast_a
  doc: "Name of genome fasta file. The file must be indexed\nusingbwa index command\
    \ prior to this run."
  type: string
  inputBinding:
    position: 0
- id: in_bam_files
  doc: One or more bam files.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir_out
  doc: "Output directory, default is this directory. (default:\n./remapped-data/)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir_out)
- id: out_all_reads
  doc: "Map all reads in the BAM file, write all the fragments\nthat are not chimeric\
    \ to the file specified here e.g.\n-a single_fragments_mapping.txt. By default\
    \ these\nreads will be written to the standard output.\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_all_reads)
- id: out_add_all_reads
  doc: "By default map all reads in the BAM file, write all\nthe fragments, either\
    \ chimeric ro single to the output\nfile (stdout). If this option is selected\
    \ don't wirte\nthe single reads. (default: True)"
  type: File?
  outputBinding:
    glob: $(inputs.in_add_all_reads)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- map_chimeric_fragments.py
