class: CommandLineTool
id: omero_admin_reindex.cwl
inputs:
- id: jd_wp
  doc: Activate remote debugging
  type: boolean
  inputBinding:
    prefix: --jdwp
- id: mem
  doc: Heap size to use
  type: string
  inputBinding:
    prefix: --mem
- id: batch
  doc: Number of items to index before reporting status
  type: string
  inputBinding:
    prefix: --batch
- id: merge_factor
  doc: Higher means merge less frequently. Faster but needs more RAM
  type: string
  inputBinding:
    prefix: --merge-factor
- id: ram_buffer_size
  doc: Number of MBs to use for the indexing. Higher is faster.
  type: string
  inputBinding:
    prefix: --ram-buffer-size
- id: lock_factory
  doc: Choose Lucene lock factory by class or 'native', 'simple', 'none'
  type: string
  inputBinding:
    prefix: --lock-factory
- id: prepare
  doc: Disables the background indexer in preparation for indexing
  type: boolean
  inputBinding:
    prefix: --prepare
- id: full
  doc: Reindexes all non-excluded tables sequentially
  type: boolean
  inputBinding:
    prefix: --full
- id: events
  doc: Reindexes all non-excluded event logs chronologically
  type: boolean
  inputBinding:
    prefix: --events
- id: reset
  doc: Reset the index counter
  type: string
  inputBinding:
    prefix: --reset
- id: dry_run
  doc: Run through all events, incrementing the counter. NO INDEXING OCCURS
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: foreground
  doc: Run indexer in the foreground
  type: boolean
  inputBinding:
    prefix: --foreground
- id: class
  doc: Reindexes the given classes sequentially
  type: string[]
  inputBinding:
    prefix: --class
- id: wipe
  doc: Delete the existing index files
  type: boolean
  inputBinding:
    prefix: --wipe
- id: finish
  doc: Re-enables the background indexer after for indexing
  type: boolean
  inputBinding:
    prefix: --finish
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- reindex
