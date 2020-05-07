class: CommandLineTool
id: short_read_connector.sh.cwl
inputs:
- id: sh
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: short_read_connectors_h
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: b
  doc: /c1.fasta.gz
  type: string
  inputBinding:
    prefix: -b
- id: q
  doc: for query
  type: string
  inputBinding:
    prefix: -q
- id: c
  doc: short_read_connector_counter (SRC_counter)
  type: string
  inputBinding:
    prefix: -c
- id: w
  doc: window_size. See option -s. If the windows size is zero (default value), then
    the full read is considered. Default=0
  type: long
  inputBinding:
    prefix: -w
- id: p
  doc: prefix. All out files will start with this prefix. Default="short_read_connector_res"
  type: string
  inputBinding:
    prefix: -p
- id: g
  doc: this option, if a file of solid kmer exists with same prefix name and same
    k value, then it is re-used and not re-computed.
  type: string
  inputBinding:
    prefix: -g
- id: k
  doc: value. Set the length of used kmers. Must fit the compiled value. Default=31
  type: long
  inputBinding:
    prefix: -k
- id: f
  doc: value. Fingerprint size. Size of the key associated to each indexed value,
    limiting false positives. Default=12
  type: long
  inputBinding:
    prefix: -f
- id: g
  doc: value. gamma value. MPHF expert users parameter - Default=2
  type: long
  inputBinding:
    prefix: -G
- id: a
  doc: kmer_abundance_min (kmer from bank seen less than this value both in the bank
    are not indexed). Default=2
  type: long
  inputBinding:
    prefix: -a
- id: l
  doc: low complexity regions (default false)
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: number of thread used. Default=0 (all)
  type: long
  inputBinding:
    prefix: -t
- id: s
  doc: 'kmer_threshold: Minimal percentage of shared kmer span for considering a query
    read as similar to a data set.   The kmer span is the number of bases from the
    read query covered by a kmer shared with the bank. If a read of length 80 has
    a kmer-span of 60, then the percentage of shared kmer span is 75%. If a least
    a windows (of size "windows_size") contains at least kmer_threshold percent of
    positions covered by shared kmers, the read is output.'
  type: long
  inputBinding:
    prefix: -s
- id: s
  doc: 'kmer_threshold: Minimal percentage of shared kmer span for considering 2 reads
    as similar.   The kmer span is the number of bases from the read query covered
    by a kmer shared with the target read. If a read of length 80 has a kmer-span
    of 60 with another read (of unkonwn size) from the bank, then the percentage of
    shared kmer span is 75%. If a least a windows (of size "windows_size") contains
    at least kmer_threshold percent of position covered by shared kmers, the read
    couple is output. TRICK: with kmer_threshold<=0 a single kmer is sufficient in
    the linker mode to link two reads. '
  type: long
  inputBinding:
    prefix: -s
- id: a
  doc: kmers present at least 'kmer_abundance_min' times in the bank AND in the queries.
  type: string
  inputBinding:
    prefix: -A
- id: r
  doc: (incompatible with SRC_counter), do not output precision about pair of similar
    reads. Only ids of reads from queries similar to at least one read from bank are
    output.
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- short_read_connector.sh
