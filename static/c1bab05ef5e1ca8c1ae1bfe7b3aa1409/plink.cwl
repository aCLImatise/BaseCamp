class: CommandLineTool
id: plink.cwl
inputs:
- id: out
  doc: '[prefix]   : Specify prefix for output files.'
  type: boolean
  inputBinding:
    prefix: --out
- id: reference
  doc: .
  type: boolean
  inputBinding:
    prefix: --reference
- id: t_file
  doc: .
  type: boolean
  inputBinding:
    prefix: --tfile
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
- id: r_host
  doc: '[host]    : Connect to Rserve host.'
  type: boolean
  inputBinding:
    prefix: --R-host
- id: r_socket
  doc: '[sock]  : Connect to Rserve socket.'
  type: boolean
  inputBinding:
    prefix: --R-socket
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
outputs: []
cwlVersion: v1.1
baseCommand:
- plink
