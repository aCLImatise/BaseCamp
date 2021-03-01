class: CommandLineTool
id: angsd.cwl
inputs:
- id: in_n_threads
  doc: 1       Number of threads to use
  type: boolean?
  inputBinding:
    prefix: -nThreads
- id: in_n_queue_size
  doc: Maximum number of queud elements
  type: boolean?
  inputBinding:
    prefix: -nQueueSize
- id: in_how_often
  doc: 100     How often should the program show progress
  type: boolean?
  inputBinding:
    prefix: -howOften
- id: in_gl
  doc: Estimate genotype likelihoods
  type: boolean?
  inputBinding:
    prefix: -GL
- id: in_do_counts
  doc: Calculate various counts statistics
  type: boolean?
  inputBinding:
    prefix: -doCounts
- id: in_do_asso
  doc: Perform association study
  type: boolean?
  inputBinding:
    prefix: -doAsso
- id: in_do_maf
  doc: Estimate allele frequencies
  type: boolean?
  inputBinding:
    prefix: -doMaf
- id: in_do_error
  doc: Estimate the type specific error rates
  type: boolean?
  inputBinding:
    prefix: -doError
- id: in_do_anc_error
  doc: Estimate the errorrate based on perfect fastas
  type: boolean?
  inputBinding:
    prefix: -doAncError
- id: in_h_we_pval
  doc: Est inbreedning per site or use as filter
  type: boolean?
  inputBinding:
    prefix: -HWE_pval
- id: in_do_geno
  doc: Call genotypes
  type: boolean?
  inputBinding:
    prefix: -doGeno
- id: in_do_fast_a
  doc: Generate a fasta for a BAM file
  type: boolean?
  inputBinding:
    prefix: -doFasta
- id: in_do_abba_baba
  doc: Perform an ABBA-BABA test
  type: boolean?
  inputBinding:
    prefix: -doAbbababa
- id: in_sites
  doc: Analyse specific sites (can force major/minor)
  type: boolean?
  inputBinding:
    prefix: -sites
- id: in_do_saf
  doc: Estimate the SFS and/or neutrality tests genotype calling
  type: boolean?
  inputBinding:
    prefix: -doSaf
- id: in_do_het_plas
  doc: Estimate hetplasmy by calculating a pooled haploid frequency
  type: boolean?
  inputBinding:
    prefix: -doHetPlas
- id: in_bam
  doc: Options relating to bam reading
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_do_major_minor
  doc: Infer the major/minor using different approaches
  type: boolean?
  inputBinding:
    prefix: -doMajorMinor
- id: in_ref
  doc: Read reference or ancestral genome
  type: boolean?
  inputBinding:
    prefix: -ref
- id: in_do_snp_stat
  doc: Calculate various SNPstat
  type: boolean?
  inputBinding:
    prefix: -doSNPstat
- id: in_cig_stat
  doc: Printout CIGAR stat across readlength
  type: boolean?
  inputBinding:
    prefix: -cigstat
- id: in_do_bcf
  doc: Wrapper around -dopost -domajorminor -dofreq -gl -dovcf docounts
  type: boolean?
  inputBinding:
    prefix: -doBcf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- angsd
