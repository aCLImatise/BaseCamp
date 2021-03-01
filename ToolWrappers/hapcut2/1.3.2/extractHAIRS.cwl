class: CommandLineTool
id: extractHAIRS.cwl
inputs:
- id: in_qv_offset
  doc: ': quality value offset, 33/64 depending on how quality values were encoded,
    default is 33'
  type: long?
  inputBinding:
    prefix: --qvoffset
- id: in_mbq
  doc: ': minimum base quality to consider a base for haplotype fragment, default
    13'
  type: long?
  inputBinding:
    prefix: --mbq
- id: in_mmq
  doc: ': minimum read mapping quality to consider a read for phasing, default 20'
  type: long?
  inputBinding:
    prefix: --mmq
- id: in_realign_variants
  doc: ': Perform sensitive realignment and scoring of variants.'
  type: long?
  inputBinding:
    prefix: --realign_variants
- id: in_hic
  doc: ': sets default maxIS to 40MB, prints matrix in new HiC format'
  type: long?
  inputBinding:
    prefix: --hic
- id: in_one_zero_x
  doc: ': 10X reads. NOTE: Output fragments MUST be processed with LinkReads.py script
    after extractHAIRS to work with HapCUT2.'
  type: long?
  inputBinding:
    prefix: --10X
- id: in_pac_bio
  doc: ': Pacific Biosciences reads. Similar to --realign_variants, but with alignment
    parameters tuned for PacBio reads.'
  type: long?
  inputBinding:
    prefix: --pacbio
- id: in_ont
  doc: ': Oxford nanopore technology reads. Similar to --realign_variants, but with
    alignment parameters tuned for Oxford Nanopore Reads.'
  type: long?
  inputBinding:
    prefix: --ONT
- id: in_new_format
  doc: ': prints matrix in new format. Requires --new_format option when running HapCUT2.'
  type: long?
  inputBinding:
    prefix: --new_format
- id: in_vcf
  doc: ': variant file with genotypes for a single individual in VCF format (unzipped)'
  type: File?
  inputBinding:
    prefix: --VCF
- id: in_maxis
  doc: ': maximum insert size for a paired-end read to be considered as a single fragment
    for phasing, default 1000'
  type: long?
  inputBinding:
    prefix: --maxIS
- id: in_minis
  doc: ': minimum insert size for a paired-end read to be considered as single fragment
    for phasing, default 0'
  type: long?
  inputBinding:
    prefix: --minIS
- id: in_pe_only
  doc: ': do not use single end reads, default is 0 (use all reads)'
  type: long?
  inputBinding:
    prefix: --PEonly
- id: in_indels
  doc: ': extract reads spanning INDELS, default is 0, variants need to specified
    in VCF format to use this option'
  type: long?
  inputBinding:
    prefix: --indels
- id: in_no_quality
  doc: ': if the bam file does not have quality string, this value will be used as
    the uniform quality value, default 0'
  type: long?
  inputBinding:
    prefix: --noquality
- id: in_tri_allelic
  doc: ': include variants with genotype 1/2 for parsing, default 0'
  type: long?
  inputBinding:
    prefix: --triallelic
- id: in_ref
  doc: ': reference sequence file (in fasta format, gzipped is okay), optional but
    required for indels, should be indexed'
  type: File?
  inputBinding:
    prefix: --ref
- id: in_out
  doc: ': output filename for haplotype fragments, if not provided, fragments will
    be output to stdout'
  type: File?
  inputBinding:
    prefix: --out
- id: in_region
  doc: '<chr:start-end> : chromosome and region in BAM file, useful to process individual
    chromosomes or genomic regions'
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_ep
  doc: ': set to 1 to estimate HMM parameters from aligned reads (only with long reads),
    default = 0'
  type: long?
  inputBinding:
    prefix: --ep
- id: in_hom
  doc: ': set to 1 to include homozygous variants for processing, default = 0 (only
    heterozygous)'
  type: long?
  inputBinding:
    prefix: --hom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: ': output filename for haplotype fragments, if not provided, fragments will
    be output to stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- extractHAIRS
