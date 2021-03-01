class: CommandLineTool
id: contigtax_assign.cwl
inputs:
- id: in_format
  doc: "Type of file format for diamond results. blast=blast\ntabular output, 'contigtax'=blast\
    \ tabular output with\ntaxid in 12th column"
  type: File?
  inputBinding:
    prefix: --format
- id: in_taxid_map
  doc: Provide custom protein to taxid mapfile.
  type: string?
  inputBinding:
    prefix: --taxidmap
- id: in_tax_dir
  doc: "Directory specified during 'contigtax download\ntaxonomy'. Defaults to taxonomy/."
  type: Directory?
  inputBinding:
    prefix: --taxdir
- id: in_sqlite_db
  doc: Name of ete3 sqlite file to be created within
  type: File?
  inputBinding:
    prefix: --sqlitedb
- id: in_tax_dir_dot
  doc: to 'taxonomy.sqlite'
  type: string?
  inputBinding:
    prefix: --taxdir.
- id: in_blob_out
  doc: Output hits.tsv table compatible with blobtools
  type: string?
  inputBinding:
    prefix: --blobout
- id: in_taxid_out
  doc: "Write output with taxonomy ids instead of taxonomy\nnames to file"
  type: File?
  inputBinding:
    prefix: --taxidout
- id: in_mode
  doc: "Mode to use for parsing taxonomy: 'rank_lca'\n(default), 'rank_vote' or 'score'"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_assign_ranks
  doc: "Ranks to use when assigning taxa. Defaults to phylum\ngenus species"
  type: string[]
  inputBinding:
    prefix: --assignranks
- id: in_report_ranks
  doc: "Ranks to report in output. Defaults to superkingom\nphylum class order family\
    \ genus species"
  type: string[]
  inputBinding:
    prefix: --reportranks
- id: in_rank_thresholds
  doc: "Rank-specific thresholds corresponding to percent\nidentity of a hit. Defaults\
    \ to 45 (phylum), 60 (genus)\nand 85 (species)"
  type: string[]
  inputBinding:
    prefix: --rank_thresholds
- id: in_vote_threshold
  doc: "Minimum fraction required when voting on rank\nassignments."
  type: string?
  inputBinding:
    prefix: --vote_threshold
- id: in_top
  doc: "Top percent of best score to consider hits for\n(default=5)"
  type: long?
  inputBinding:
    prefix: --top
- id: in_evalue
  doc: Maximum e-value to store hits. Default 0.001
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_cpus
  doc: Number of cpus to use. Defaults to 1.
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_chunksize
  doc: "Size of chunks sent to process pool. For large input\nfiles using a large\
    \ chunksize can make the job\ncomplete much faster than using the default value\
    \ of 1\n"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_diamond_results
  doc: Diamond blastx results
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: Output file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: "Type of file format for diamond results. blast=blast\ntabular output, 'contigtax'=blast\
    \ tabular output with\ntaxid in 12th column"
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
- id: out_taxid_out
  doc: "Write output with taxonomy ids instead of taxonomy\nnames to file"
  type: File?
  outputBinding:
    glob: $(inputs.in_taxid_out)
hints: []
cwlVersion: v1.1
baseCommand:
- contigtax
- assign
