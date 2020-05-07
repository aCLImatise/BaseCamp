class: CommandLineTool
id: plink2.cwl
inputs:
- id: out
  doc: '[prefix]   : Specify prefix for output files.'
  type: boolean
  inputBinding:
    prefix: --out
- id: real_ref_alleles
  doc: your command.
  type: string
  inputBinding:
    prefix: --real-ref-alleles
- id: check_sex
  doc: ', the first two control these thresholds.'
  type: boolean
  inputBinding:
    prefix: --check-sex
- id: homo_zy_g_window_snp
  doc: .
  type: boolean
  inputBinding:
    prefix: --homozyg-window-snp
- id: extract
  doc: are considered.
  type: File
  inputBinding:
    prefix: --extract
- id: meta_analysis
  doc: '[PLINK report filenames...]'
  type: boolean
  inputBinding:
    prefix: --meta-analysis
- id: meta_analysis
  doc: '[PLINK report filenames...] + <logscale | qt> <no-map | no-allele> <study>
    <report-all> <weighted-z>'
  type: boolean
  inputBinding:
    prefix: --meta-analysis
- id: extract
  doc: are considered.
  type: File
  inputBinding:
    prefix: --extract
- id: snps
  doc: split a job across multiple machines.)
  type: string
  inputBinding:
    prefix: --snps
- id: missing_code
  doc: )      values for Oxford-format filesets (def. 'NA').
  type: boolean
  inputBinding:
    prefix: --missing_code
- id: simulate_n_cases
  doc: '[num]   : Set --simulate case count (default 1000).'
  type: boolean
  inputBinding:
    prefix: --simulate-ncases
- id: simulate_n_controls
  doc: '[n]  : Set --simulate control count (default 1000).'
  type: boolean
  inputBinding:
    prefix: --simulate-ncontrols
- id: simulate_prevalence
  doc: '[p] : Set --simulate disease prevalence (default 0.01).'
  type: boolean
  inputBinding:
    prefix: --simulate-prevalence
- id: simulate_n
  doc: '[num]        : Set --simulate-qt sample count (default 1000).'
  type: boolean
  inputBinding:
    prefix: --simulate-n
- id: simulate_label
  doc: '[prefix] : Set --simulate{-qt} FID/IID name prefix.'
  type: boolean
  inputBinding:
    prefix: --simulate-label
- id: simulate_missing
  doc: '[freq] : Set --simulate{-qt} missing genotype frequency.'
  type: boolean
  inputBinding:
    prefix: --simulate-missing
- id: allow_extra_chr
  doc: "<0>     : Permit unrecognized chromosome codes.  The '0'"
  type: boolean
  inputBinding:
    prefix: --allow-extra-chr
- id: parameters
  doc: .
  type: boolean
  inputBinding:
    prefix: --parameters
- id: r_port
  doc: '[port #]  : Connect to Rserve on a port other than 6311.'
  type: boolean
  inputBinding:
    prefix: --R-port
- id: parallel
  doc: '[k] [n] : Divide the output matrix into n pieces, and only compute the kth
    piece.  The primary output file will have the piece number included in its name,
    e.g. plink.rel.13 or plink.rel.13.gz if k is 13.  Concatenating these files in
    order will yield the full matrix of interest.  (Yes, this can be done before unzipping.)
    N.B. This generally cannot be used to directly write a symmetric square matrix.  Choose
    square0 or triangle shape instead, and postprocess as necessary.'
  type: boolean
  inputBinding:
    prefix: --parallel
- id: memory
  doc: '[val]     : Set size, in MB, of initial workspace malloc attempt. (Practically
    mandatory when using GNU parallel.)'
  type: boolean
  inputBinding:
    prefix: --memory
- id: threads
  doc: '[val]    : Set maximum number of concurrent threads. This has one known limitation:
    some BLAS/LAPACK linear algebra operations are multithreaded in a way that PLINK
    cannot control.  If this is problematic, you should recompile against single-threaded
    BLAS/LAPACK.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: d
  doc: "[char]         : Change variant/covariate range delimiter (normally '-')."
  type: boolean
  inputBinding:
    prefix: --d
- id: seed
  doc: '[val...]    : Set random number seed(s).  Each value must be an integer between
    0 and 4294967295 inclusive.'
  type: boolean
  inputBinding:
    prefix: --seed
- id: perm_batch_size
  doc: '[val] : Set number of permutations per batch for some permutation tests.'
  type: boolean
  inputBinding:
    prefix: --perm-batch-size
- id: output_min_p
  doc: '[p] : Specify minimum p-value to write to reports.'
  type: boolean
  inputBinding:
    prefix: --output-min-p
- id: debug
  doc: ': Use slower, more crash-resistant logging method.'
  type: boolean
  inputBinding:
    prefix: --debug
- id: cnv_del
  doc: ': Exclude all variants with more than one copy.'
  type: boolean
  inputBinding:
    prefix: --cnv-del
- id: cnv_dup
  doc: ': Exclude all variants with fewer than three copies.'
  type: boolean
  inputBinding:
    prefix: --cnv-dup
- id: cnv_kb
  doc: '[kb len]        : Exclude segments shorter than the given length.'
  type: boolean
  inputBinding:
    prefix: --cnv-kb
- id: cnv_max_kb
  doc: '[kb len]    : Exclude segments longer than the given length.'
  type: boolean
  inputBinding:
    prefix: --cnv-max-kb
- id: cnv_score
  doc: '[val]        : Exclude all variants with confidence score < val.'
  type: boolean
  inputBinding:
    prefix: --cnv-score
- id: cnv_max_score
  doc: '[val]    : Exclude all variants with confidence score > val.'
  type: boolean
  inputBinding:
    prefix: --cnv-max-score
- id: cnv_sites
  doc: '[ct]         : Exclude all segments with fewer than ct probes.'
  type: boolean
  inputBinding:
    prefix: --cnv-sites
- id: cnv_max_sites
  doc: '[ct]     : Exclude all segments with more than ct probes.'
  type: boolean
  inputBinding:
    prefix: --cnv-max-sites
- id: cnv_intersect
  doc: '[fname]  : Only include segments which intersect a region in the given region
    list.'
  type: boolean
  inputBinding:
    prefix: --cnv-intersect
- id: cnv_exclude
  doc: '[fname]    : Exclude all segments which intersect a region in the given region
    list.'
  type: boolean
  inputBinding:
    prefix: --cnv-exclude
- id: cnv_subset
  doc: "[fname]     : Ignore all regions in the --cnv-intersect/-exclude /-count list\
    \ that aren't named in the given file."
  type: boolean
  inputBinding:
    prefix: --cnv-subset
- id: cnv_overlap
  doc: '[x]        : Only count intersections of length at least xn, where n is the
    segment size.'
  type: boolean
  inputBinding:
    prefix: --cnv-overlap
- id: cnv_region_overlap
  doc: '[x] : x >= [overlap] / [region size].'
  type: boolean
  inputBinding:
    prefix: --cnv-region-overlap
- id: cnv_union_overlap
  doc: '[x]  : x >= [overlap] / [union size].'
  type: boolean
  inputBinding:
    prefix: --cnv-union-overlap
- id: cnv_disrupt
  doc: ': Only include/exclude segments with an endpoint in a region.'
  type: boolean
  inputBinding:
    prefix: --cnv-disrupt
- id: cnv_freq_exclude_above
  doc: '[k] : Exclude all segments where any portion is included by more than k total
    segments.'
  type: boolean
  inputBinding:
    prefix: --cnv-freq-exclude-above
- id: cnv_freq_exclude_below
  doc: '[k] : Exclude all segments where no portion is included by k or more total
    segments.'
  type: boolean
  inputBinding:
    prefix: --cnv-freq-exclude-below
- id: cnv_freq_exclude_exact
  doc: '[k] : Exclude all segments which have a portion included by at least k total
    segments, but no portion included by more.'
  type: boolean
  inputBinding:
    prefix: --cnv-freq-exclude-exact
- id: cnv_freq_include_exact
  doc: '[k] : Reverse of --cnv-freq-exclude-exact.'
  type: boolean
  inputBinding:
    prefix: --cnv-freq-include-exact
- id: cnv_freq_overlap
  doc: ': Only count portions of length at least xn, where n is the segment size.'
  type: string
  inputBinding:
    prefix: --cnv-freq-overlap
- id: cnv_freq_method_2
  doc: ': Causes k to instead be compared against the number of segments for which
    x >= [overlap] / [union].'
  type: string
  inputBinding:
    prefix: --cnv-freq-method2
- id: cnv_exclude_off_by_1
  doc: ': Exclude .cnv segments where the terminal .cnv.map entry is off by 1.'
  type: boolean
  inputBinding:
    prefix: --cnv-exclude-off-by-1
- id: cnv_test_window
  doc: '[size] : Specify window size (in kb) for CNV assoc. test.'
  type: boolean
  inputBinding:
    prefix: --cnv-test-window
- id: cnv_count
  doc: '[fname]      : Specify region list for --cnv-indiv-perm (optional) or --cnv-enrichment-test
    (required).'
  type: boolean
  inputBinding:
    prefix: --cnv-count
outputs: []
cwlVersion: v1.1
baseCommand:
- plink2
