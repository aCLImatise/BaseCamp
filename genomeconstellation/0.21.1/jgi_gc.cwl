class: CommandLineTool
id: jgi_gc.cwl
inputs:
- id: i
  doc: '[ --query ] arg                   Query file. Either a single column list
    file or precalculated  fingerprints file. [Mandatory]'
  type: boolean
  inputBinding:
    prefix: -i
- id: target
  doc: Target file. Either a single column list file or precalculated  fingerprints
    file.
  type: string
  inputBinding:
    prefix: --target
- id: out_gc
  doc: GC score output file.
  type: string
  inputBinding:
    prefix: --outGC
- id: out_fp
  doc: Fingerprints output file.
  type: string
  inputBinding:
    prefix: --outFP
- id: min_ani
  doc: (=70)                   Minimum ANI threshold to output [60-100]
  type: string
  inputBinding:
    prefix: --minANI
- id: min_score
  doc: (=18.721900000000002) Minimum score
  type: string
  inputBinding:
    prefix: --minScore
- id: no_ani
  doc: No ANI transformation. Keep raw GC Score.
  type: boolean
  inputBinding:
    prefix: --noANI
- id: append
  doc: Append new fingerprints to supplied reference fingerprint file.
  type: boolean
  inputBinding:
    prefix: --append
- id: self
  doc: Indicate query and target are the same. Set to true if target is  missing.
  type: boolean
  inputBinding:
    prefix: --self
- id: cache
  doc: (=50)                    Percentage of system memory allocated for caching
    [1-90]
  type: string
  inputBinding:
    prefix: --cache
- id: t
  doc: '[ --numThreads ] arg (=0)         Number of threads to use (0: use all cores)'
  type: boolean
  inputBinding:
    prefix: -t
- id: batch_index
  doc: '(=0)                Batch index (0: the first)'
  type: string
  inputBinding:
    prefix: --batchIndex
- id: batch_size
  doc: '(=0)                 Batch size (0: no batches)'
  type: string
  inputBinding:
    prefix: --batchSize
- id: min_fraction
  doc: (=1024)            (expert) Minimum hash threshold. 1 kmer out of minFraction
    bases in  the genome will be added to the fingerprint. It must be power of 2  (1==all)
  type: string
  inputBinding:
    prefix: --minFraction
- id: numb_its
  doc: (=131072)              (expert) Number of bits in the fingerprint. It must
    be a factor of  1024 and >=2048
  type: string
  inputBinding:
    prefix: --numBits
- id: d
  doc: '[ --debug ]                       Debug output'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: '[ --verbose ]                     Verbose output'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- jgi_gc
