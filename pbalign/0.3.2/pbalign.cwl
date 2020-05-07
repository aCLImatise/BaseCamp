class: CommandLineTool
id: pbalign.cwl
inputs:
- id: input_file_name
  doc: SubreadSet or unaligned .bam
  type: string
  inputBinding:
    position: 0
- id: reference_path
  doc: Reference DataSet or FASTA file
  type: string
  inputBinding:
    position: 1
- id: output_file_name
  doc: Alignment results dataset
  type: string
  inputBinding:
    position: 2
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: pdb
  doc: 'Enable Python debugger (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdb
- id: profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: region_table
  doc: 'Specify a region table for filtering reads. (default: None)'
  type: string
  inputBinding:
    prefix: --regionTable
- id: config_file
  doc: 'Specify a set of user-defined argument values. (default: None)'
  type: string
  inputBinding:
    prefix: --configFile
- id: pulse_file
  doc: 'When input reads are in fasta format and output is a cmp.h5 this option can
    specify pls.h5 or bas.h5 or FOFN files from which pulse metrics can be loaded
    for Quiver. (default: None)'
  type: string
  inputBinding:
    prefix: --pulseFile
- id: algorithm
  doc: "Select an aligorithm from ('blasr', 'bowtie', 'gmap'). (default: blasr)"
  type: string
  inputBinding:
    prefix: --algorithm
- id: max_hits
  doc: 'The maximum number of matches of each read to the reference sequence that
    will be evaluated. (default: None)'
  type: long
  inputBinding:
    prefix: --maxHits
- id: min_anchor_size
  doc: 'The minimum anchor size defines the length of the read that must match against
    the reference sequence. (default: None)'
  type: long
  inputBinding:
    prefix: --minAnchorSize
- id: max_match
  doc: 'BLASR maxMatch option. (Will be overriden if is also set in algorithmOptions)
    (default: 30)'
  type: long
  inputBinding:
    prefix: --maxMatch
- id: use_ccs
  doc: 'Map the ccsSequence to the genome first, then align subreads to the interval
    that the CCS reads mapped to. useccs: only maps subreads that span the length
    of the template. useccsall: maps all subreads. useccsdenovo: maps ccs only. (default:
    None)'
  type: string
  inputBinding:
    prefix: --useccs
- id: no_split_sub_reads
  doc: 'Do not split reads into subreads even if subread regions are available. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --noSplitSubreads
- id: concordant
  doc: 'Map subreads of a ZMW to the same genomic location. (default: False)'
  type: boolean
  inputBinding:
    prefix: --concordant
- id: nproc
  doc: 'Number of threads. (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: algorithm_options
  doc: 'Pass alignment options through. (default: None)'
  type: string
  inputBinding:
    prefix: --algorithmOptions
- id: max_divergence
  doc: 'The maximum allowed percentage divergence of a read from the reference sequence.
    (default: 30.0)'
  type: long
  inputBinding:
    prefix: --maxDivergence
- id: min_accuracy
  doc: 'The minimum concordance of alignments that will be evaluated. (default: 70.0)'
  type: long
  inputBinding:
    prefix: --minAccuracy
- id: minlength
  doc: 'The minimum aligned read length of alignments that will be evaluated. (default:
    50)'
  type: long
  inputBinding:
    prefix: --minLength
- id: score_cut_off
  doc: 'The worst score to output an alignment. (default: None)'
  type: string
  inputBinding:
    prefix: --scoreCutoff
- id: hit_policy
  doc: 'Specify a policy for how to treat multiple hit random : selects a random hit.
    all : selects all hits. allbest : selects all the best score hits. randombest:
    selects a random hit from all best score hits. leftmost : selects a hit which
    has the best score and the smallest mapping coordinate in any reference. (default:
    randombest)'
  type: string
  inputBinding:
    prefix: --hitPolicy
- id: filter_adapter_only
  doc: 'If specified, do not report adapter-only hits using annotations with the reference
    entry. (default: False)'
  type: boolean
  inputBinding:
    prefix: --filterAdapterOnly
- id: unaligned
  doc: 'Output names of unaligned reads to specified file. (default: None)'
  type: string
  inputBinding:
    prefix: --unaligned
- id: seed
  doc: 'Initialize the random number generator with a none- zero integer. Zero means
    that current system time is used. (default: 1)'
  type: string
  inputBinding:
    prefix: --seed
- id: tmpdir
  doc: 'Specify a directory for saving temporary files. (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpDir
outputs: []
cwlVersion: v1.1
baseCommand:
- pbalign
