class: CommandLineTool
id: svaba_refilter.cwl
inputs:
- id: in_verbose
  doc: 'Select verbosity level (0-4). Default: 1'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reference_genome
  doc: Path to indexed reference genome to be used by BWA-MEM. Default is Broad hg19
    (/seq/reference/...)
  type: boolean?
  inputBinding:
    prefix: --reference-genome
- id: in_opt_bam
  doc: Input BAM file to get header from
  type: boolean?
  inputBinding:
    prefix: --opt-bam
- id: in_id_string
  doc: String specifying the analysis ID to be used as part of ID common.
  type: boolean?
  inputBinding:
    prefix: --id-string
- id: in_input_bps
  doc: Original bps.txt.gz file
  type: boolean?
  inputBinding:
    prefix: --input-bps
- id: in_bam
  doc: BAM file used to grab header from
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_dbsnp_vcf
  doc: DBsnp database (VCF) to compare indels against
  type: boolean?
  inputBinding:
    prefix: --dbsnp-vcf
- id: in_blacklist
  doc: BED-file with blacklisted regions to not extract any reads from.
  type: boolean?
  inputBinding:
    prefix: --blacklist
- id: in_microbial_genome
  doc: Path to indexed reference genome of microbial sequences to be used by BWA-MEM
    to filter reads.
  type: boolean?
  inputBinding:
    prefix: --microbial-genome
- id: in_germline_sv_database
  doc: BED file containing sites of known germline SVs. Used as additional filter
    for somatic SV detection
  type: boolean?
  inputBinding:
    prefix: --germline-sv-database
- id: in_simple_seq_database
  doc: BED file containing sites of simple DNA that can confuse the contig re-alignment.
  type: boolean?
  inputBinding:
    prefix: --simple-seq-database
- id: in_lod
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    [8]
  type: boolean?
  inputBinding:
    prefix: --lod
- id: in_lod_dbsnp
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    at DBSnp indel site [5]
  type: boolean?
  inputBinding:
    prefix: --lod-dbsnp
- id: in_lod_somatic
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    [2.5]
  type: boolean?
  inputBinding:
    prefix: --lod-somatic
- id: in_lod_somatic_dbsnp
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    at DBSnp indel site [4]
  type: boolean?
  inputBinding:
    prefix: --lod-somatic-dbsnp
- id: in_scale_errors
  doc: Scale the priors that a site is artifact at given repeat count. 0 means assume
    low (const) error rate [1]
  type: boolean?
  inputBinding:
    prefix: --scale-errors
- id: in_read_tracking
  doc: Track supporting reads by qname. Increases file sizes. [off]
  type: boolean?
  inputBinding:
    prefix: --read-tracking
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svaba
- refilter
