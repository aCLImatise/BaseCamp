class: CommandLineTool
id: MapCaller.cwl
inputs:
- id: in_bwtindexprefix
  doc: BWT_Index_Prefix
  type: string?
  inputBinding:
    prefix: -i
- id: in_reference_filename_formatfa
  doc: Reference filename (format:fa)
  type: File?
  inputBinding:
    prefix: -r
- id: in_f
  doc: 'files with #1 mates reads (format:fa, fq, fq.gz)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_f_two
  doc: 'files with #2 mates reads (format:fa, fq, fq.gz)'
  type: boolean?
  inputBinding:
    prefix: -f2
- id: in_number_of_threads
  doc: number of threads [16]
  type: long?
  inputBinding:
    prefix: -t
- id: in_size
  doc: sequencing fragment size [500]
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_in_del
  doc: maximal indel size [30]
  type: long?
  inputBinding:
    prefix: -indel
- id: in_ad
  doc: minimal ALT allele count [5]
  type: long?
  inputBinding:
    prefix: -ad
- id: in_dup
  doc: maximal PCR duplicates [5]
  type: long?
  inputBinding:
    prefix: -dup
- id: in_max_mm
  doc: maximal mismatch rate in read alignment [0.05]
  type: double?
  inputBinding:
    prefix: -maxmm
- id: in_max_clip
  doc: maximal clip size at either ends [5]
  type: long?
  inputBinding:
    prefix: -maxclip
- id: in_sam
  doc: SAM output filename [NULL]
  type: File?
  inputBinding:
    prefix: -sam
- id: in_bam
  doc: BAM output filename [NULL]
  type: File?
  inputBinding:
    prefix: -bam
- id: in_alg
  doc: 'gapped alignment algorithm (option: nw|ksw2)'
  type: long?
  inputBinding:
    prefix: -alg
- id: in_vcf
  doc: VCF output filename [output.vcf]
  type: File?
  inputBinding:
    prefix: -vcf
- id: in_gvc_f
  doc: GVCF mode [false]
  type: boolean?
  inputBinding:
    prefix: -gvcf
- id: in_log
  doc: log filename [job.log]
  type: File?
  inputBinding:
    prefix: -log
- id: in_monomorphic
  doc: report all loci which do not have any potential alternates.
  type: boolean?
  inputBinding:
    prefix: -monomorphic
- id: in_min_cnv
  doc: the minimal cnv size to be reported [50].
  type: long?
  inputBinding:
    prefix: -min_cnv
- id: in_min_gap
  doc: the minimal gap(unmapped) size to be reported [50].
  type: long?
  inputBinding:
    prefix: -min_gap
- id: in_ploidy
  doc: number of sets of chromosomes in a cell (1:monoploid, 2:diploid) [2]
  type: long?
  inputBinding:
    prefix: -ploidy
- id: in_output_multiple_alignments
  doc: output multiple alignments
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_somatic
  doc: detect somatic mutations [false]
  type: boolean?
  inputBinding:
    prefix: -somatic
- id: in_no_vcf
  doc: No VCF output [false]
  type: boolean?
  inputBinding:
    prefix: -no_vcf
- id: in_pairedend_reads_interlaced
  doc: paired-end reads are interlaced in the same file
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_filter
  doc: apply variant filters (under test) [false]
  type: boolean?
  inputBinding:
    prefix: -filter
- id: in_version
  doc: version
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam
  doc: SAM output filename [NULL]
  type: File?
  outputBinding:
    glob: $(inputs.in_sam)
- id: out_bam
  doc: BAM output filename [NULL]
  type: File?
  outputBinding:
    glob: $(inputs.in_bam)
- id: out_vcf
  doc: VCF output filename [output.vcf]
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- MapCaller
