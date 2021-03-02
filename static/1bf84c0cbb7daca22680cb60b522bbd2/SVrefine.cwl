class: CommandLineTool
id: SVrefine.cwl
inputs:
- id: in_bam
  doc: "Specify a BAM file produced by MiniMap2 with the alignments to be\nused for\
    \ retrieving SV sequence information. (Either a BAM file or a\nMUMmer-generated\
    \ delta file is required)."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_delta
  doc: "Specify a delta file produced by MUMmer with the alignments to be\nused for\
    \ retrieving SV sequence information. Generally, one would\nuse the same filtered\
    \ delta file that was used to create the \"diff\"\nfile (see below). (Either a\
    \ BAM file or a MUMmer-generated delta\nfile is required)."
  type: File?
  inputBinding:
    prefix: --delta
- id: in_regions
  doc: "Specify a BED file of regions to be investigated for structural\nvariants\
    \ in the assembly (i.e., the query fasta file). If not\nprovided, potential regions\
    \ with structural variation are discovered\nfrom the endpoints of alignments in\
    \ the supplied MUMmer alignment\nfile. (Optional)."
  type: File?
  inputBinding:
    prefix: --regions
- id: in_ref_fast_a
  doc: "Specify the path to a multi-fasta file containing the sequences used\nas reference\
    \ in the alignments. If not specified, and a MUMmer delta\nfile path is provided\
    \ using the --delta option on the command line,\nthe script uses the reference\
    \ path obtained by parsing the delta\nfile's first line. (Optional)."
  type: File?
  inputBinding:
    prefix: --ref_fasta
- id: in_query_fast_a
  doc: "Specify the path to a multi-fasta file containing the sequences used\nas the\
    \ query in the alignments. If not specified, and a MUMmer delta\nfile path is\
    \ provided using the --delta option on the command line,\nthe script uses the\
    \ query path obtained by parsing the delta file's\nfirst line. (Optional)."
  type: File?
  inputBinding:
    prefix: --query_fasta
- id: in_prefix
  doc: "Specify a string to use as the prefix to output files created by\nthis program.\
    \ Unless specified by a different option, the output VCF\nfile will be <prefix>.vcf.gz,\
    \ the log file will be <prefix>.log,\netc. (Default: \"SVrefine\")"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_out_vcf
  doc: "Specify the path to which to write a new VCF file containing the\nstructural\
    \ variants discovered in this comparison. BEWARE: if this\nfile already exists,\
    \ it will be overwritten!"
  type: File?
  inputBinding:
    prefix: --outvcf
- id: in_refname
  doc: "Specify a string to be written as the reference name in the\n##reference line\
    \ of the VCF header. (Optional)."
  type: string?
  inputBinding:
    prefix: --refname
- id: in_sample_name
  doc: "<string to include as the sample name in the \"CHROM\" line>\nSpecify a string\
    \ to be written as the sample name in the header\nspecifying a genotype column\
    \ in the VCF line beginning with \"CHROM\".\n(Optional)."
  type: boolean?
  inputBinding:
    prefix: --samplename
- id: in_maxsize
  doc: Specify an integer for the maximum size of SV to report. (Optional).
  type: long?
  inputBinding:
    prefix: --maxsize
- id: in_noheader
  doc: Flag option to suppress printout of the VCF header.
  type: boolean?
  inputBinding:
    prefix: --noheader
- id: in_no_cov
  doc: "<path to write a BED file with \"no coverage\" regions>\nSpecify the path\
    \ to which to write a BED file containing the regions\nof the input BED file which\
    \ had no spanning coverage in the query\nalignments. (Optional)."
  type: boolean?
  inputBinding:
    prefix: --nocov
- id: in_sv_regions
  doc: "Specify the path to which to write a BED file containing the widened\ncoordinates\
    \ of structural variants. These are the same coordinates\nreported in the \"WIDENEDREF\"\
    \ tag in the variant VCF. (Optional)."
  type: File?
  inputBinding:
    prefix: --svregions
- id: in_includes_eqs
  doc: "Write sequences from the reference FASTA file into the \"REF\" and\n\"ALT\"\
    \ fields of the VCF."
  type: boolean?
  inputBinding:
    prefix: --includeseqs
- id: in_verbose
  doc: Write verbose output, debugging information, etc. to the log file.
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_out_ref
  doc: ''
  type: File?
  inputBinding:
    prefix: --outref
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_complete
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_documentation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Specify a string to use as the prefix to output files created by\nthis program.\
    \ Unless specified by a different option, the output VCF\nfile will be <prefix>.vcf.gz,\
    \ the log file will be <prefix>.log,\netc. (Default: \"SVrefine\")"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_verbose
  doc: Write verbose output, debugging information, etc. to the log file.
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- SVrefine
