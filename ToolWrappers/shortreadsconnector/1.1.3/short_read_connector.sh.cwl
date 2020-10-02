class: CommandLineTool
id: short_read_connector.sh.cwl
inputs:
- id: in_for_bankexample_b
  doc: "for bank\nExample: -b data/c1.fasta.gz"
  type: long
  inputBinding:
    prefix: -b
- id: in_queryexample_q_datafoftxt
  doc: "for query\nExample: -q data/fof.txt (with fof being a file of file descriptor)"
  type: File
  inputBinding:
    prefix: -q
- id: in_shortreadconnectorcounter_srccounter
  doc: short_read_connector_counter (SRC_counter)
  type: string
  inputBinding:
    prefix: -c
- id: in_see_option_s
  doc: window_size. See option -s. If the windows size is zero (default value), then
    the full read is considered. Default=0
  type: long
  inputBinding:
    prefix: -w
- id: in_prefix_files_start
  doc: prefix. All out files will start with this prefix. Default="short_read_connector_res"
  type: string
  inputBinding:
    prefix: -p
- id: in_option_file_exists
  doc: this option, if a file of solid kmer exists with same prefix name and same
    k value, then it is re-used and not re-computed.
  type: File
  inputBinding:
    prefix: -g
- id: in_value_set_length
  doc: value. Set the length of used kmers. Must fit the compiled value. Default=31
  type: long
  inputBinding:
    prefix: -k
- id: in_value_fingerprint_size
  doc: value. Fingerprint size. Size of the key associated to each indexed value,
    limiting false positives. Default=12
  type: long
  inputBinding:
    prefix: -f
- id: in_value_gamma_value
  doc: value. gamma value. MPHF expert users parameter - Default=2
  type: long
  inputBinding:
    prefix: -G
- id: in_kmerabundancemin_kmer_bank
  doc: kmer_abundance_min (kmer from bank seen less than this value both in the bank
    are not indexed). Default=2
  type: long
  inputBinding:
    prefix: -a
- id: in_low_complexity_regions
  doc: low complexity regions (default false)
  type: string
  inputBinding:
    prefix: -l
- id: in_number_thread_used
  doc: number of thread used. Default=0 (all)
  type: long
  inputBinding:
    prefix: -t
- id: in_kmers_present_times
  doc: kmers present at least 'kmer_abundance_min' times in the bank AND in the queries.
  type: string
  inputBinding:
    prefix: -A
- id: in_incompatible_srccounter_output
  doc: (incompatible with SRC_counter), do not output precision about pair of similar
    reads. Only ids of reads from queries similar to at least one read from bank are
    output.
  type: boolean
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- short_read_connector.sh
