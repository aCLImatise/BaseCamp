class: CommandLineTool
id: pbalign.cwl
inputs:
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: INFO)'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_pdb
  doc: 'Enable Python debugger (default: False)'
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean?
  inputBinding:
    prefix: --profile
- id: in_region_table
  doc: "Specify a region table for filtering reads. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --regionTable
- id: in_config_file
  doc: "Specify a set of user-defined argument values.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --configFile
- id: in_pulse_file
  doc: "When input reads are in fasta format and output is a\ncmp.h5 this option can\
    \ specify pls.h5 or bas.h5 or\nFOFN files from which pulse metrics can be loaded\
    \ for\nQuiver. (default: None)"
  type: File?
  inputBinding:
    prefix: --pulseFile
- id: in_algorithm
  doc: "Select an aligorithm from ('blasr', 'bowtie', 'gmap').\n(default: blasr)"
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_max_hits
  doc: "The maximum number of matches of each read to the\nreference sequence that\
    \ will be evaluated. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --maxHits
- id: in_min_anchor_size
  doc: "The minimum anchor size defines the length of the read\nthat must match against\
    \ the reference sequence.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --minAnchorSize
- id: in_max_match
  doc: "BLASR maxMatch option. (Will be overriden if is also\nset in algorithmOptions)\
    \ (default: 30)"
  type: long?
  inputBinding:
    prefix: --maxMatch
- id: in_use_ccs
  doc: "Map the ccsSequence to the genome first, then align\nsubreads to the interval\
    \ that the CCS reads mapped to.\nuseccs: only maps subreads that span the length\
    \ of the\ntemplate. useccsall: maps all subreads. useccsdenovo:\nmaps ccs only.\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --useccs
- id: in_no_split_sub_reads
  doc: "Do not split reads into subreads even if subread\nregions are available. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --noSplitSubreads
- id: in_concordant
  doc: "Map subreads of a ZMW to the same genomic location.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --concordant
- id: in_nproc
  doc: 'Number of threads. (default: 8)'
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_algorithm_options
  doc: 'Pass alignment options through. (default: None)'
  type: string?
  inputBinding:
    prefix: --algorithmOptions
- id: in_max_divergence
  doc: "The maximum allowed percentage divergence of a read\nfrom the reference sequence.\
    \ (default: 30.0)"
  type: long?
  inputBinding:
    prefix: --maxDivergence
- id: in_min_accuracy
  doc: "The minimum concordance of alignments that will be\nevaluated. (default: 70.0)"
  type: long?
  inputBinding:
    prefix: --minAccuracy
- id: in_minlength
  doc: "The minimum aligned read length of alignments that\nwill be evaluated. (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --minLength
- id: in_score_cut_off
  doc: "The worst score to output an alignment. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --scoreCutoff
- id: in_hit_policy
  doc: "Specify a policy for how to treat multiple hit random\n: selects a random\
    \ hit. all : selects all hits.\nallbest : selects all the best score hits. randombest:\n\
    selects a random hit from all best score hits.\nleftmost : selects a hit which\
    \ has the best score and\nthe smallest mapping coordinate in any reference.\n\
    (default: randombest)"
  type: string?
  inputBinding:
    prefix: --hitPolicy
- id: in_filter_adapter_only
  doc: "If specified, do not report adapter-only hits using\nannotations with the\
    \ reference entry. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --filterAdapterOnly
- id: in_unaligned
  doc: "Output names of unaligned reads to specified file.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --unaligned
- id: in_seed
  doc: "Initialize the random number generator with a none-\nzero integer. Zero means\
    \ that current system time is\nused. (default: 1)"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_tmpdir
  doc: "Specify a directory for saving temporary files.\n(default: /tmp)\n"
  type: Directory?
  inputBinding:
    prefix: --tmpDir
- id: in_input_file_name
  doc: SubreadSet or unaligned .bam
  type: string
  inputBinding:
    position: 0
- id: in_reference_path
  doc: Reference DataSet or FASTA file
  type: string
  inputBinding:
    position: 1
- id: in_output_file_name
  doc: Alignment results dataset
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_unaligned
  doc: "Output names of unaligned reads to specified file.\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_unaligned)
hints: []
cwlVersion: v1.1
baseCommand:
- pbalign
