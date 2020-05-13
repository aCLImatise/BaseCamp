class: CommandLineTool
id: tango_assign.cwl
inputs:
- id: diamond_results
  doc: Diamond blastx results
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: Output file
  type: string
  inputBinding:
    position: 1
- id: format
  doc: Type of file format for diamond results. blast=blast tabular output, 'tango'=blast
    tabular output with taxid in 12th column
  type: string
  inputBinding:
    prefix: --format
- id: taxid_map
  doc: Provide custom protein to taxid mapfile.
  type: string
  inputBinding:
    prefix: --taxidmap
- id: tax_dir
  doc: Directory specified during 'tango download taxonomy'. Defaults to taxonomy/.
  type: string
  inputBinding:
    prefix: --taxdir
- id: sqlite_db
  doc: Name of ete3 sqlite file to be created within --taxdir. Defaults to 'taxonomy.sqlite'
  type: string
  inputBinding:
    prefix: --sqlitedb
- id: blob_out
  doc: Output hits.tsv table compatible with blobtools
  type: string
  inputBinding:
    prefix: --blobout
- id: taxid_out
  doc: Write output with taxonomy ids instead of taxonomy names to file
  type: string
  inputBinding:
    prefix: --taxidout
- id: mode
  doc: "Mode to use for parsing taxonomy: 'rank_lca' (default), 'rank_vote' or 'score'"
  type: string
  inputBinding:
    prefix: --mode
- id: assign_ranks
  doc: Ranks to use when assigning taxa. Defaults to phylum genus species
  type: string[]
  inputBinding:
    prefix: --assignranks
- id: report_ranks
  doc: Ranks to report in output. Defaults to superkingom phylum class orderfamily
    genus species
  type: string[]
  inputBinding:
    prefix: --reportranks
- id: rank_thresholds
  doc: Rank-specific thresholds corresponding to percent identity of a hit.Defaults
    to 45 (phylum), 60 (genus) and 85 (species)
  type: string[]
  inputBinding:
    prefix: --rank_thresholds
- id: vote_threshold
  doc: Minimum fraction required when voting on rank assignments.
  type: string
  inputBinding:
    prefix: --vote_threshold
- id: top
  doc: Top percent of best score to consider hits for (default=5)
  type: string
  inputBinding:
    prefix: --top
- id: evalue
  doc: Maximum e-value to store hits. Default 0.001
  type: string
  inputBinding:
    prefix: --evalue
- id: cpus
  doc: Number of cpus to use. Defaults to 1.
  type: string
  inputBinding:
    prefix: --cpus
- id: chunksize
  doc: Size of chunks sent to process pool. For large input files using a large chunksize
    can make the job complete much faster than using the default value of 1.
  type: string
  inputBinding:
    prefix: --chunksize
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- assign
