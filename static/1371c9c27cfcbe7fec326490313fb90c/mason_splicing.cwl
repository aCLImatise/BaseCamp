class: CommandLineTool
id: mason_splicing.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_quiet
  doc: Low verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Higher verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Highest verbosity.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_seed
  doc: 'Seed for random number generation. Default: 0.'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_out
  doc: "Output of materialized contigs. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  inputBinding:
    prefix: --out
- id: in_haplotype_name_sep
  doc: 'String separating contig name from haplotype number. Default: /.'
  type: long?
  inputBinding:
    prefix: --haplotype-name-sep
- id: in_in_gff
  doc: "Path to input GFF or GTF file, must be sorted by reference name.\nValid filetypes\
    \ are: .gtf[.*], .gff[.*], .gff3[.*], and .gff, where\n* is any of the following\
    \ extensions: gz and bgzf for transparent\n(de)compression."
  type: File?
  inputBinding:
    prefix: --in-gff
- id: in_gff_type
  doc: "Splicing will filter to the records that have this type. Default:\nexon."
  type: File?
  inputBinding:
    prefix: --gff-type
- id: in_gff_group_by
  doc: "Assign features to their parent using the tag with this name.\nDefault: Parent."
  type: File?
  inputBinding:
    prefix: --gff-group-by
- id: in_input_reference
  doc: "Path to FASTA file to read the reference from. Valid filetypes are:\n.sam[.*],\
    \ .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\n.fastq[.*], .fasta[.*],\
    \ .faa[.*], .fa[.*], .embl[.*], and .bam,\nwhere * is any of the following extensions:\
    \ gz and bgzf for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-reference
- id: in_input_vcf
  doc: "Path to the VCF file with variants to apply. Valid filetype is:\n.vcf[.*],\
    \ where * is any of the following extensions: gz and bgzf\nfor transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-vcf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output of materialized contigs. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mason_splicing
