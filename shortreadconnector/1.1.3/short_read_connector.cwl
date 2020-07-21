class: CommandLineTool
id: ../../../short_read_connector.sh.cwl
inputs:
- id: shortreadconnectorcounter_srccounter
  doc: short_read_connector_counter (SRC_counter)
  type: string
  inputBinding:
    prefix: -c
- id: windowsize_see_option
  doc: window_size. See option -s. If the windows size is zero (default value), then
    the full read is considered. Default=0
  type: long
  inputBinding:
    prefix: -w
- id: prefix_files_start
  doc: prefix. All out files will start with this prefix. Default="short_read_connector_res"
  type: string
  inputBinding:
    prefix: -p
- id: option_file_exists
  doc: this option, if a file of solid kmer exists with same prefix name and same
    k value, then it is re-used and not re-computed.
  type: string
  inputBinding:
    prefix: -g
- id: value_set_fit
  doc: value. Set the length of used kmers. Must fit the compiled value. Default=31
  type: long
  inputBinding:
    prefix: -k
- id: value_fingerprint_size
  doc: value. Fingerprint size. Size of the key associated to each indexed value,
    limiting false positives. Default=12
  type: long
  inputBinding:
    prefix: -f
- id: value_gamma_value
  doc: value. gamma value. MPHF expert users parameter - Default=2
  type: long
  inputBinding:
    prefix: -G
- id: kmerabundancemin_kmer_bank
  doc: kmer_abundance_min (kmer from bank seen less than this value both in the bank
    are not indexed). Default=2
  type: long
  inputBinding:
    prefix: -a
- id: low_complexity_regions
  doc: low complexity regions (default false)
  type: string
  inputBinding:
    prefix: -l
- id: number_thread_used
  doc: number of thread used. Default=0 (all)
  type: long
  inputBinding:
    prefix: -t
- id: kmers_present_times
  doc: kmers present at least 'kmer_abundance_min' times in the bank AND in the queries.
  type: string
  inputBinding:
    prefix: -A
- id: incompatible_srccounter_output
  doc: (incompatible with SRC_counter), do not output precision about pair of similar
    reads. Only ids of reads from queries similar to at least one read from bank are
    output.
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- short_read_connector.sh
