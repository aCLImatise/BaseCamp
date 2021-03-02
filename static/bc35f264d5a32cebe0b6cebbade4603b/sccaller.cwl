class: CommandLineTool
id: sccaller.cwl
inputs:
- id: in_bam
  doc: ':      bamfile of a single cell'
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_fast_a
  doc: ':    fasta file of reference genome'
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: ':   output file name'
  type: File?
  inputBinding:
    prefix: --output
- id: in_snp_in
  doc: ':   Candidate snp input file, either from dbsnp data or heterozygous snp (hsnp)
    data of the bulk, for known heterogous call. file type: bed (1-based) or vcf.'
  type: boolean?
  inputBinding:
    prefix: --snp_in
- id: in_snp_type
  doc: ': SNP type for --snp_in. It could be either "dbsnp" or "hsnp". When choosing
    dbsnp, --bulk bulk_bamfile is required.'
  type: boolean?
  inputBinding:
    prefix: --snp_type
- id: in_rd
  doc: ':           min. read depth of known heterogous SNP called from bulk when
    choosing -t dbsnp. Default: 20. Recommand: 10,15,20, depending on average read
    depth'
  type: boolean?
  inputBinding:
    prefix: --RD
- id: in_bias
  doc: ':         default theta (bias) for SNVs whose theta cannot be estimated. Default=0.75'
  type: boolean?
  inputBinding:
    prefix: --bias
- id: in_bulk
  doc: ':         bamfile of bulk DNA sequencing'
  type: boolean?
  inputBinding:
    prefix: --bulk
- id: in_bulk_min_depth
  doc: ':min. reads for bulk. Default: 20'
  type: boolean?
  inputBinding:
    prefix: --bulk_min_depth
- id: in_bulk_min_mapq
  doc: ':min. mapQ for bulk. Default: 20'
  type: boolean?
  inputBinding:
    prefix: --bulk_min_mapq
- id: in_bulk_min_var
  doc: ': min. num. variant supporting reads for bulk. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --bulk_min_var
- id: in_format
  doc: ':       output file format. bed or vcf. Default: vcf'
  type: File?
  inputBinding:
    prefix: --format
- id: in_head
  doc: ':         first chromosome as sorted as in fasta file to analyze (1-based).
    Default: the first chr. in the fasta'
  type: boolean?
  inputBinding:
    prefix: --head
- id: in_mapq
  doc: ':         min. mapQ. Default: 40'
  type: boolean?
  inputBinding:
    prefix: --mapq
- id: in_min_depth
  doc: ':    min. reads. Default: 10'
  type: boolean?
  inputBinding:
    prefix: --min_depth
- id: in_min_var
  doc: ':       min. num. variant supporting reads. Default: 4'
  type: boolean?
  inputBinding:
    prefix: --minvar
- id: in_null
  doc: ':         min. allelic fraction considered. Default=0.03'
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_tail
  doc: ':         last chromosome as sorted as in fasta file to analyze (1-based).
    Default: the last chr. in the fasta'
  type: boolean?
  inputBinding:
    prefix: --tail
- id: in_wk_dir
  doc: ':    work dir. Default: ./'
  type: boolean?
  inputBinding:
    prefix: --wkdir
- id: in_engine
  doc: ':   pileup engine. samtools or pysam. Default: pysam'
  type: boolean?
  inputBinding:
    prefix: --engine
- id: in_lamb
  doc: ':     lambda for bias estimation. Default=10000'
  type: boolean?
  inputBinding:
    prefix: --lamb
- id: in_cpu_num
  doc: ':  num. processes. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --cpu_num
- id: in_work_num
  doc: ': num. splits per chromosome for multi-process computing. Default: 100'
  type: boolean?
  inputBinding:
    prefix: --work_num
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ':   output file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_format
  doc: ':       output file format. bed or vcf. Default: vcf'
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- sccaller
