class: CommandLineTool
id: illumina_cleanup.cwl
inputs:
- id: '8'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_qs
  doc: An input file containing the sample name and absolute paths to FASTQs to process.
  type: string
  inputBinding:
    prefix: --fastqs
- id: coverage
  doc: 'Reduce samples to a given coverage. (Default: 100)'
  type: long
  inputBinding:
    prefix: --coverage
- id: genome_size
  doc: 'Expected genome size (bp) for all samples. (Default: 0).'
  type: long
  inputBinding:
    prefix: --genome_size
- id: outdir
  doc: Directory to write results to. (Default ./)
  type: string
  inputBinding:
    prefix: --outdir
- id: max_cpus
  doc: 'The maximum number of processors this workflow should have access to at any
    given moment. (Default: 1)'
  type: long
  inputBinding:
    prefix: --max_cpus
- id: cpus
  doc: 'Number of processors made available to a single process. If greater than "--max_cpus"
    it will be set equal to "--max_cpus" (Default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: example_fast_qs
  doc: Print an example of expected input for FASTQs file.
  type: boolean
  inputBinding:
    prefix: --example_fastqs
- id: check_fast_qs
  doc: Verify "--fastqs" produces the expected inputs.
  type: boolean
  inputBinding:
    prefix: --check_fastqs
- id: keep_cache
  doc: Keeps 'work' and '.nextflow' logs, default is to delete on successful completion.
  type: boolean
  inputBinding:
    prefix: --keep_cache
- id: adapters
  doc: 'Illumina adapters to remove (Default: BBmap adapters)'
  type: string
  inputBinding:
    prefix: --adapters
- id: adapter_k
  doc: 'Kmer length used for finding adapters. Adapters shorter than k will not be
    found. (Default: 23)'
  type: long
  inputBinding:
    prefix: --adapter_k
- id: phi_x
  doc: 'phiX174 reference genome to remove (Default: NC_001422)'
  type: string
  inputBinding:
    prefix: --phix
- id: phi_x_k
  doc: 'Kmer length used for finding phiX174. Contaminants shorter than k will not
    be found. (Default: 31)'
  type: long
  inputBinding:
    prefix: --phix_k
- id: k_trim
  doc: 'Trim reads to remove bases matching reference kmers. Values: f (do not trim)
    r (trim to the right, Default) l (trim to the left)'
  type: string
  inputBinding:
    prefix: --ktrim
- id: mink
  doc: 'Look for shorter kmers at read tips down to this length, when k-trimming or
    masking. 0 means disabled. Enabling this will disable maskmiddle. (Default: 11)'
  type: long
  inputBinding:
    prefix: --mink
- id: h_dist
  doc: 'Maximum Hamming distance for ref kmers (subs only). Memory use is proportional
    to (3*K)^hdist. (Default: 1)'
  type: long
  inputBinding:
    prefix: --hdist
- id: tpe
  doc: 'When kmer right-trimming, trim both reads to the minimum length of either.
    Values: f (do not equally trim) t (equally trim to the right, Default)'
  type: boolean
  inputBinding:
    prefix: --tpe
- id: tbo
  doc: 'Trim adapters based on where paired reads overlap. Values: f (do not trim
    by overlap) t (trim by overlap, Default)'
  type: boolean
  inputBinding:
    prefix: --tbo
- id: q_trim
  doc: 'Trim read ends to remove bases with quality below trimq. Performed AFTER looking
    for kmers. Values: rl (trim both ends, Default) f (neither end) r (right end only)
    l (left end only) w (sliding window)'
  type: string
  inputBinding:
    prefix: --qtrim
- id: trim_q
  doc: 'Regions with average quality BELOW this will be trimmed if qtrim is set to
    something other than f. (Default: 6)'
  type: double
  inputBinding:
    prefix: --trimq
- id: maq
  doc: 'Reads with average quality (after trimming) below this will be discarded.
    (Default: 20)'
  type: long
  inputBinding:
    prefix: --maq
- id: minlength
  doc: 'Reads shorter than this after trimming will be discarded. Pairs will be discarded
    if both are shorter. (Default: 35)'
  type: long
  inputBinding:
    prefix: --minlength
- id: ftm
  doc: 'If positive, right-trim length to be equal to zero, modulo this number. (Default:
    0)'
  type: long
  inputBinding:
    prefix: --ftm
- id: toss_junk
  doc: 'Discard reads with invalid characters as bases. Values: f (keep all reads)
    t (toss reads with ambiguous bases, Default)'
  type: boolean
  inputBinding:
    prefix: --tossjunk
- id: q_out
  doc: 'Output quality offset. Values: 33 (PHRED33 offset quality scores, Default)
    64 (PHRED64 offset quality scores) auto (keeps the current input offset)'
  type: string
  inputBinding:
    prefix: --qout
- id: x_mx
  doc: 'This will be passed to Java to set memory usage. Examples: 8g will specify
    8 gigs of RAM (Default) 20g will specify 20 gigs of RAM 200m will specify 200
    megs of RAM'
  type: string
  inputBinding:
    prefix: --xmx
- id: max_cor
  doc: 'Max number of corrections within a 20bp window (Default: 1)'
  type: long
  inputBinding:
    prefix: --maxcor
- id: sample_seed
  doc: Set to a positive number to use that prng seed for sampling (Default 42).
  type: long
  inputBinding:
    prefix: --sampleseed
outputs: []
cwlVersion: v1.1
baseCommand:
- illumina-cleanup
