class: CommandLineTool
id: ../../../pbwt.cwl
inputs:
- id: log
  doc: log file; '-' for stderr
  type: File
  inputBinding:
    prefix: -log
- id: check
  doc: do various checks
  type: boolean
  inputBinding:
    prefix: -check
- id: stats
  doc: print stats depending on commands; writes to stdout
  type: boolean
  inputBinding:
    prefix: -stats
- id: read
  doc: read pbwt file; '-' for stdin
  type: File
  inputBinding:
    prefix: -read
- id: read_sites
  doc: read sites file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readSites
- id: read_samples
  doc: read samples file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readSamples
- id: read_missing
  doc: read missing file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readMissing
- id: read_dosage
  doc: read dosage file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readDosage
- id: read_reverse
  doc: read reverse file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readReverse
- id: read_all
  doc: read .pbwt and if present .sites, .samples, .missing - note not by default
    dosage
  type: string
  inputBinding:
    prefix: -readAll
- id: read_vcf_gt
  doc: read GTs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only
    - require diploid!
  type: File
  inputBinding:
    prefix: -readVcfGT
- id: read_vc_fpl
  doc: read PLs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only
    - require diploid!
  type: File
  inputBinding:
    prefix: -readVcfPL
- id: read_macs
  doc: read MaCS output file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readMacs
- id: read_vcf_q
  doc: read VCFQ file; '-' for stdin
  type: File
  inputBinding:
    prefix: -readVcfq
- id: read_gen
  doc: <chrom>   read impute2 gen file - must set chrom
  type: File
  inputBinding:
    prefix: -readGen
- id: read_hap
  doc: <chrom>   read impute2 hap file - must set chrom
  type: File
  inputBinding:
    prefix: -readHap
- id: read_hap_legend
  doc: <legend_file> <chrom> read impute2 hap and legend file - must set chrom
  type: string
  inputBinding:
    prefix: -readHapLegend
- id: read_phase
  doc: read Li and Stephens phase file
  type: File
  inputBinding:
    prefix: -readPhase
- id: checkpoint
  doc: checkpoint every n sites while reading
  type: string
  inputBinding:
    prefix: -checkpoint
- id: merge
  doc: '...         merge two or more pbwt files'
  type: File
  inputBinding:
    prefix: -merge
- id: write
  doc: write pbwt file; '-' for stdout
  type: File
  inputBinding:
    prefix: -write
- id: write_sites
  doc: write sites file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeSites
- id: write_samples
  doc: write samples file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeSamples
- id: write_missing
  doc: write missing file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeMissing
- id: write_dosage
  doc: write missing file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeDosage
- id: write_reverse
  doc: write reverse file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeReverse
- id: write_all
  doc: write .pbwt and if present .sites, .samples, .missing, .dosage
  type: string
  inputBinding:
    prefix: -writeAll
- id: write_impute_ref
  doc: write .imputeHaps and .imputeLegend
  type: string
  inputBinding:
    prefix: -writeImputeRef
- id: write_impute_haps_g
  doc: write haplotype file for IMPUTE -known_haps_g
  type: File
  inputBinding:
    prefix: -writeImputeHapsG
- id: write_phase
  doc: write FineSTRUCTURE/ChromoPainter input format (Impute/ShapeIT output format)
    phase file
  type: File
  inputBinding:
    prefix: -writePhase
- id: write_transpose_haplotypes
  doc: write transposed haplotype file (one hap per row); '-' for stdout
  type: File
  inputBinding:
    prefix: -writeTransposeHaplotypes
- id: haps
  doc: write haplotype file; '-' for stdout
  type: File
  inputBinding:
    prefix: -haps
- id: write_gen
  doc: write impute2 gen file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeGen
- id: write_vcf_gz
  doc: write VCF or BCF; uncompressed or bgzip (Gz) compressed file; '-' for stdout
  type: File
  inputBinding:
    prefix: -writeVcfGz
- id: reference_fast_a
  doc: reference fasta filename for VCF/BCF writing (optional)
  type: File
  inputBinding:
    prefix: -referenceFasta
- id: subsites
  doc: <frac>   subsample <frac> sites with AF > <fmin>
  type: string
  inputBinding:
    prefix: -subsites
- id: subsample
  doc: <n>    subsample <n> samples from index <start>
  type: string
  inputBinding:
    prefix: -subsample
- id: subrange
  doc: <end>   cut down to sites in [start,end)
  type: string
  inputBinding:
    prefix: -subrange
- id: corrupt_sites
  doc: <q>     randomise fraction q of positions at fraction p of sites, according
    to site frequency
  type: string
  inputBinding:
    prefix: -corruptSites
- id: corrupt_samples
  doc: <q>   randomise fraction q of positions for fraction p of samples, according
    to site frequency
  type: string
  inputBinding:
    prefix: -corruptSamples
- id: copy_samples
  doc: <len>    make M new samples copied from current haplotypes with mean switch
    length len
  type: string
  inputBinding:
    prefix: -copySamples
- id: select_sites
  doc: select sites as in sites file
  type: File
  inputBinding:
    prefix: -selectSites
- id: remove_sites
  doc: remove sites as in sites file
  type: File
  inputBinding:
    prefix: -removeSites
- id: select_samples
  doc: select samples as in samples file
  type: File
  inputBinding:
    prefix: -selectSamples
- id: long_within
  doc: find matches within set longer than L
  type: string
  inputBinding:
    prefix: -longWithin
- id: max_within
  doc: find maximal matches within set
  type: boolean
  inputBinding:
    prefix: -maxWithin
- id: match_naive
  doc: maximal match seqs in pbwt file to reference
  type: File
  inputBinding:
    prefix: -matchNaive
- id: match_indexed
  doc: maximal match seqs in pbwt file to reference
  type: File
  inputBinding:
    prefix: -matchIndexed
- id: match_dynamic
  doc: maximal match seqs in pbwt file to reference
  type: File
  inputBinding:
    prefix: -matchDynamic
- id: impute_explore
  doc: n'th impute test
  type: string
  inputBinding:
    prefix: -imputeExplore
- id: phase
  doc: phase with n sparse pbwts
  type: string
  inputBinding:
    prefix: -phase
- id: reference_phase
  doc: phase current pbwt against reference whose root name is the argument - only
    keeps shared sites
  type: string
  inputBinding:
    prefix: -referencePhase
- id: reference_impute
  doc: '[nSparse=1] [fSparse=1]  impute current pbwt into reference whose root name
    is the first argument; does not rephase either pbwt; optional nSparse > 1 also
    does sparse matching, fSparse is relative weight'
  type: string
  inputBinding:
    prefix: -referenceImpute
- id: genotype_compare
  doc: compare genotypes with those from reference whose root name is the argument
    - need compatible sites
  type: string
  inputBinding:
    prefix: -genotypeCompare
- id: impute_missing
  doc: impute data marked as missing
  type: boolean
  inputBinding:
    prefix: -imputeMissing
- id: fit_alphabet_a
  doc: fit probabilistic model 1..3
  type: string
  inputBinding:
    prefix: -fitAlphaBeta
- id: ll_copy_model
  doc: <rho>  log likelihood of Li-Stephens model
  type: string
  inputBinding:
    prefix: -llCopyModel
- id: paint
  doc: '[n] output painting co-ancestry matrix to fileroot, optionally specififying
    the number per region'
  type: File
  inputBinding:
    prefix: -paint
- id: paint_sparse
  doc: '[n] output sparse painting to fileroot, optionally specififying the number
    per region'
  type: File
  inputBinding:
    prefix: -paintSparse
- id: pretty
  doc: <k>        pretty plot at site k
  type: File
  inputBinding:
    prefix: -pretty
- id: sfs
  doc: print site frequency spectrum (log scale) - also writes sites.freq file
  type: boolean
  inputBinding:
    prefix: -sfs
- id: ref_freq
  doc: read site frequency information into the refFreq field of current sites
  type: File
  inputBinding:
    prefix: -refFreq
- id: site_info
  doc: <kmin> <kmax> export PBWT information at sites with allele count kmin <= k
    < kmax
  type: File
  inputBinding:
    prefix: -siteInfo
- id: build_reverse
  doc: build reverse pbwt
  type: boolean
  inputBinding:
    prefix: -buildReverse
- id: read_genetic_map
  doc: read Oxford format genetic map file
  type: File
  inputBinding:
    prefix: -readGeneticMap
- id: four_haps_stats
  doc: mu:rho 4 hap test stats
  type: boolean
  inputBinding:
    prefix: -4hapsStats
outputs: []
cwlVersion: v1.1
baseCommand:
- pbwt
