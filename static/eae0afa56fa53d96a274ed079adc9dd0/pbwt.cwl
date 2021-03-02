class: CommandLineTool
id: pbwt.cwl
inputs:
- id: in_log
  doc: log file; '-' for stderr
  type: File?
  inputBinding:
    prefix: -log
- id: in_check
  doc: do various checks
  type: boolean?
  inputBinding:
    prefix: -check
- id: in_stats
  doc: print stats depending on commands; writes to stdout
  type: boolean?
  inputBinding:
    prefix: -stats
- id: in_read
  doc: read pbwt file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -read
- id: in_read_sites
  doc: read sites file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readSites
- id: in_read_samples
  doc: read samples file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readSamples
- id: in_read_missing
  doc: read missing file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readMissing
- id: in_read_dosage
  doc: read dosage file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readDosage
- id: in_read_reverse
  doc: read reverse file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readReverse
- id: in_read_all
  doc: read .pbwt and if present .sites, .samples, .missing - note not by default
    dosage
  type: string?
  inputBinding:
    prefix: -readAll
- id: in_read_vcf_gt
  doc: read GTs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only
    - require diploid!
  type: File?
  inputBinding:
    prefix: -readVcfGT
- id: in_read_vc_fpl
  doc: read PLs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only
    - require diploid!
  type: File?
  inputBinding:
    prefix: -readVcfPL
- id: in_read_macs
  doc: read MaCS output file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readMacs
- id: in_read_vcf_q
  doc: read VCFQ file; '-' for stdin
  type: File?
  inputBinding:
    prefix: -readVcfq
- id: in_read_gen
  doc: <chrom>   read impute2 gen file - must set chrom
  type: File?
  inputBinding:
    prefix: -readGen
- id: in_read_hap
  doc: <chrom>   read impute2 hap file - must set chrom
  type: File?
  inputBinding:
    prefix: -readHap
- id: in_read_hap_legend
  doc: "<legend_file> <chrom>\nread impute2 hap and legend file - must set chrom"
  type: File?
  inputBinding:
    prefix: -readHapLegend
- id: in_read_phase
  doc: read Li and Stephens phase file
  type: File?
  inputBinding:
    prefix: -readPhase
- id: in_checkpoint
  doc: checkpoint every n sites while reading
  type: string?
  inputBinding:
    prefix: -checkpoint
- id: in_merge
  doc: '...         merge two or more pbwt files'
  type: File?
  inputBinding:
    prefix: -merge
- id: in_write
  doc: write pbwt file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -write
- id: in_write_sites
  doc: write sites file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeSites
- id: in_write_samples
  doc: write samples file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeSamples
- id: in_write_missing
  doc: write missing file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeMissing
- id: in_write_dosage
  doc: write missing file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeDosage
- id: in_write_reverse
  doc: write reverse file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeReverse
- id: in_write_all
  doc: write .pbwt and if present .sites, .samples, .missing, .dosage
  type: string?
  inputBinding:
    prefix: -writeAll
- id: in_write_impute_ref
  doc: write .imputeHaps and .imputeLegend
  type: string?
  inputBinding:
    prefix: -writeImputeRef
- id: in_write_impute_haps_g
  doc: write haplotype file for IMPUTE -known_haps_g
  type: File?
  inputBinding:
    prefix: -writeImputeHapsG
- id: in_write_phase
  doc: write FineSTRUCTURE/ChromoPainter input format (Impute/ShapeIT output format)
    phase file
  type: File?
  inputBinding:
    prefix: -writePhase
- id: in_write_transpose_haplotypes
  doc: write transposed haplotype file (one hap per row); '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeTransposeHaplotypes
- id: in_haps
  doc: write haplotype file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -haps
- id: in_write_gen
  doc: write impute2 gen file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeGen
- id: in_write_vcf_gz
  doc: write VCF or BCF; uncompressed or bgzip (Gz) compressed file; '-' for stdout
  type: File?
  inputBinding:
    prefix: -writeVcfGz
- id: in_reference_fast_a
  doc: reference fasta filename for VCF/BCF writing (optional)
  type: File?
  inputBinding:
    prefix: -referenceFasta
- id: in_subsites
  doc: <frac>   subsample <frac> sites with AF > <fmin>
  type: string?
  inputBinding:
    prefix: -subsites
- id: in_subsample
  doc: <n>    subsample <n> samples from index <start>
  type: string?
  inputBinding:
    prefix: -subsample
- id: in_subrange
  doc: <end>   cut down to sites in [start,end)
  type: string?
  inputBinding:
    prefix: -subrange
- id: in_corrupt_sites
  doc: <q>     randomise fraction q of positions at fraction p of sites, according
    to site frequency
  type: string?
  inputBinding:
    prefix: -corruptSites
- id: in_corrupt_samples
  doc: <q>   randomise fraction q of positions for fraction p of samples, according
    to site frequency
  type: string?
  inputBinding:
    prefix: -corruptSamples
- id: in_copy_samples
  doc: <len>    make M new samples copied from current haplotypes with mean switch
    length len
  type: long?
  inputBinding:
    prefix: -copySamples
- id: in_select_sites
  doc: select sites as in sites file
  type: File?
  inputBinding:
    prefix: -selectSites
- id: in_remove_sites
  doc: remove sites as in sites file
  type: File?
  inputBinding:
    prefix: -removeSites
- id: in_select_samples
  doc: select samples as in samples file
  type: File?
  inputBinding:
    prefix: -selectSamples
- id: in_long_within
  doc: find matches within set longer than L
  type: string?
  inputBinding:
    prefix: -longWithin
- id: in_max_within
  doc: find maximal matches within set
  type: boolean?
  inputBinding:
    prefix: -maxWithin
- id: in_match_naive
  doc: maximal match seqs in pbwt file to reference
  type: File?
  inputBinding:
    prefix: -matchNaive
- id: in_match_indexed
  doc: maximal match seqs in pbwt file to reference
  type: File?
  inputBinding:
    prefix: -matchIndexed
- id: in_match_dynamic
  doc: maximal match seqs in pbwt file to reference
  type: File?
  inputBinding:
    prefix: -matchDynamic
- id: in_impute_explore
  doc: n'th impute test
  type: string?
  inputBinding:
    prefix: -imputeExplore
- id: in_phase
  doc: phase with n sparse pbwts
  type: string?
  inputBinding:
    prefix: -phase
- id: in_reference_phase
  doc: phase current pbwt against reference whose root name is the argument - only
    keeps shared sites
  type: string?
  inputBinding:
    prefix: -referencePhase
- id: in_reference_impute
  doc: "[nSparse=1] [fSparse=1]  impute current pbwt into reference whose root name\
    \ is the first argument;\ndoes not rephase either pbwt; optional nSparse > 1 also\
    \ does sparse matching, fSparse is relative weight"
  type: long?
  inputBinding:
    prefix: -referenceImpute
- id: in_genotype_compare
  doc: compare genotypes with those from reference whose root name is the argument
    - need compatible sites
  type: string?
  inputBinding:
    prefix: -genotypeCompare
- id: in_impute_missing
  doc: impute data marked as missing
  type: boolean?
  inputBinding:
    prefix: -imputeMissing
- id: in_fit_alphabet_a
  doc: fit probabilistic model 1..3
  type: double?
  inputBinding:
    prefix: -fitAlphaBeta
- id: in_ll_copy_model
  doc: <rho>  log likelihood of Li-Stephens model
  type: string?
  inputBinding:
    prefix: -llCopyModel
- id: in_paint
  doc: '[n] output painting co-ancestry matrix to fileroot, optionally specififying
    the number per region'
  type: File?
  inputBinding:
    prefix: -paint
- id: in_paint_sparse
  doc: '[n] output sparse painting to fileroot, optionally specififying the number
    per region'
  type: File?
  inputBinding:
    prefix: -paintSparse
- id: in_pretty
  doc: <k>        pretty plot at site k
  type: File?
  inputBinding:
    prefix: -pretty
- id: in_sfs
  doc: print site frequency spectrum (log scale) - also writes sites.freq file
  type: boolean?
  inputBinding:
    prefix: -sfs
- id: in_ref_freq
  doc: read site frequency information into the refFreq field of current sites
  type: File?
  inputBinding:
    prefix: -refFreq
- id: in_site_info
  doc: <kmin> <kmax> export PBWT information at sites with allele count kmin <= k
    < kmax
  type: File?
  inputBinding:
    prefix: -siteInfo
- id: in_build_reverse
  doc: build reverse pbwt
  type: boolean?
  inputBinding:
    prefix: -buildReverse
- id: in_read_genetic_map
  doc: read Oxford format genetic map file
  type: File?
  inputBinding:
    prefix: -readGeneticMap
- id: in_four_haps_stats
  doc: mu:rho 4 hap test stats
  type: boolean?
  inputBinding:
    prefix: -4hapsStats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_read_macs
  doc: read MaCS output file; '-' for stdin
  type: File?
  outputBinding:
    glob: $(inputs.in_read_macs)
hints: []
cwlVersion: v1.1
baseCommand:
- pbwt
