class: CommandLineTool
id: metabat1.cwl
inputs:
- id: i
  doc: '[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --outFile ] arg              Base file name for each bin. The default output
    is fasta format. Use -l  option to output only contig names [Mandatory]'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: '[ --abdFile ] arg              A file having mean and variance of base coverage
    depth (tab delimited;  the first column should be contig names, and the first
    row will be  considered as the header and be skipped) [Optional]'
  type: boolean
  inputBinding:
    prefix: -a
- id: cv_ext
  doc: When a coverage file without variance (from third party tools) is used  instead
    of abdFile from jgi_summarize_bam_contig_depths
  type: boolean
  inputBinding:
    prefix: --cvExt
- id: p
  doc: '[ --pairFile ] arg             A file having paired reads mapping information.
    Use it to increase  sensitivity. (tab delimited; should have 3 columns of contig
    index  (ordered by), its mate contig index, and supporting mean read coverage.  The
    first row will be considered as the header and be skipped) [Optional]'
  type: boolean
  inputBinding:
    prefix: -p
- id: p1
  doc: (=0)                     Probability cutoff for bin seeding. It mainly controls
    the number of  potential bins and their specificity. The higher, the more (specific)  bins
    would be. (Percentage; Should be between 0 and 100)
  type: string
  inputBinding:
    prefix: --p1
- id: p2
  doc: (=0)                     Probability cutoff for secondary neighbors. It supports
    p1 and better be  close to p1. (Percentage; Should be between 0 and 100)
  type: string
  inputBinding:
    prefix: --p2
- id: min_prob
  doc: (=0)                Minimum probability for binning consideration. It controls
    sensitivity.  Usually it should be >= 75. (Percentage; Should be between 0 and
    100)
  type: string
  inputBinding:
    prefix: --minProb
- id: min_binned
  doc: (=0)              Minimum proportion of already binned neighbors for one's
    membership  inference. It contorls specificity. Usually it would be <= 50  (Percentage;
    Should be between 0 and 100)
  type: string
  inputBinding:
    prefix: --minBinned
- id: very_sensitive
  doc: For greater sensitivity, especially in a simple community. It is the  shortcut
    for --p1 90 --p2 85 --pB 20 --minProb 75 --minBinned 20  --minCorr 90
  type: boolean
  inputBinding:
    prefix: --verysensitive
- id: sensitive
  doc: For better sensitivity [default]. It is the shortcut for --p1 90 --p2 90  --pB
    20 --minProb 80 --minBinned 40 --minCorr 92
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: specific
  doc: For better specificity. Different from --sensitive when using correlation binning
    or ensemble binning. It is the shortcut for --p1 90 --p2 90 --pB  30 --minProb
    80 --minBinned 40 --minCorr 96
  type: boolean
  inputBinding:
    prefix: --specific
- id: very_specific
  doc: For greater specificity. No correlation binning for short contig  recruiting.
    It is the shortcut for --p1 90 --p2 90 --pB 40 --minProb 80  --minBinned 40
  type: boolean
  inputBinding:
    prefix: --veryspecific
- id: super_specific
  doc: For the best specificity. It is the shortcut for --p1 95 --p2 90 --pB 50  --minProb
    80 --minBinned 20
  type: boolean
  inputBinding:
    prefix: --superspecific
- id: min_corr
  doc: (=0)                Minimum pearson correlation coefficient for binning missed
    contigs to  increase sensitivity (Helpful when there are many samples). Should
    be  very high (>=90) to reduce contamination. (Percentage; Should be between  0
    and 100; 0 disables)
  type: string
  inputBinding:
    prefix: --minCorr
- id: min_samples
  doc: (=10)            Minimum number of sample sizes for considering correlation
    based  recruiting
  type: string
  inputBinding:
    prefix: --minSamples
- id: x
  doc: '[ --minCV ] arg (=1)           Minimum mean coverage of a contig to consider
    for abundance distance  calculation in each library'
  type: boolean
  inputBinding:
    prefix: -x
- id: min_cvs_um
  doc: (=2)               Minimum total mean coverage of a contig (sum of all libraries)
    to  consider for abundance distance calculation
  type: string
  inputBinding:
    prefix: --minCVSum
- id: s
  doc: '[ --minClsSize ] arg (=200000) Minimum size of a bin to be considered as the
    output'
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: '[ --minContig ] arg (=2500)    Minimum size of a contig to be considered for
    binning (should be >=1500;  ideally >=2500). If # of samples >= minSamples, small
    contigs (>=1000)  will be given a chance to be recruited to existing bins by default.'
  type: boolean
  inputBinding:
    prefix: -m
- id: min_contig_by_corr
  doc: '(=1000)     Minimum size of a contig to be considered for recruiting by pearson  correlation
    coefficients (activated only if # of samples >= minSamples;  disabled when minContigByCorr
    > minContig)'
  type: string
  inputBinding:
    prefix: --minContigByCorr
- id: t
  doc: '[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)'
  type: boolean
  inputBinding:
    prefix: -t
- id: min_shared
  doc: (=50)             Percentage cutoff for merging fuzzy contigs
  type: string
  inputBinding:
    prefix: --minShared
- id: fuzzy
  doc: Binning with fuzziness which assigns multiple memberships of a contig to  bins
    (activated only with --pairFile at the moment)
  type: boolean
  inputBinding:
    prefix: --fuzzy
- id: l
  doc: '[ --onlyLabel ]                Output only sequence labels as a list in a
    column without sequences'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: '[ --sumLowCV ]                 If set, then every sample that falls below
    the minCV will be used in an  aggregate sample'
  type: boolean
  inputBinding:
    prefix: -S
- id: v
  doc: '[ --maxVarRatio ] arg (=0)     Ignore any contigs where variance / mean exceeds
    this ratio (0 disables)'
  type: boolean
  inputBinding:
    prefix: -V
- id: save_tnf
  doc: File to save (or load if exists) TNF matrix for each contig in input
  type: string
  inputBinding:
    prefix: --saveTNF
- id: save_distance
  doc: File to save (or load if exists) distance graph at lowest probability  cutoff
  type: string
  inputBinding:
    prefix: --saveDistance
- id: save_cls
  doc: Save cluster memberships as a matrix format
  type: boolean
  inputBinding:
    prefix: --saveCls
- id: unbinned
  doc: Generate [outFile].unbinned.fa file for unbinned contigs
  type: boolean
  inputBinding:
    prefix: --unbinned
- id: no_bin_out
  doc: No bin output. Usually combined with --saveCls to check only contig  memberships
  type: boolean
  inputBinding:
    prefix: --noBinOut
- id: b
  doc: '[ --B ] arg (=20)              Number of bootstrapping for ensemble binning
    (Recommended to be >=20)'
  type: boolean
  inputBinding:
    prefix: -B
- id: pb
  doc: (=50)                    Proportion of shared membership in bootstrapping.
    Major control for  sensitivity/specificity. The higher, the specific. (Percentage;
    Should be between 0 and 100)
  type: string
  inputBinding:
    prefix: --pB
- id: seed
  doc: '(=0)                   For reproducibility in ensemble binning, though it
    might produce slightly different results. (0: use random seed)'
  type: string
  inputBinding:
    prefix: --seed
- id: keep
  doc: Keep the intermediate files for later usage
  type: boolean
  inputBinding:
    prefix: --keep
- id: d
  doc: '[ --debug ]                    Debug output'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: '[ --verbose ]                  Verbose output'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- metabat1
