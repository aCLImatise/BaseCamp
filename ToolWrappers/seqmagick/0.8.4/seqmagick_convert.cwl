class: CommandLineTool
id: seqmagick_convert.cwl
inputs:
- id: in_alphabet
  doc: Input alphabet. Required for writing NEXUS.
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_line_wrap
  doc: "Adjust line wrap for sequence strings. When N is 0,\nall line breaks are removed.\
    \ Only fasta files are\nsupported for the output format."
  type: long?
  inputBinding:
    prefix: --line-wrap
- id: in_sort
  doc: "Perform sorting by length or name, ascending or\ndescending. ASCII sorting\
    \ is performed for names"
  type: string?
  inputBinding:
    prefix: --sort
- id: in_apply_function
  doc: "/path/to/module.py:function_name[:parameter]\nSpecify a custom function to\
    \ apply to the input\nsequences, specified as\n/path/to/file.py:function_name.\
    \ Function should accept\nan iterable of Bio.SeqRecord objects, and yield\nSeqRecords.\
    \ If the parameter is specified, it will be\npassed as a string as the second\
    \ argument to the\nfunction. Specify more than one to chain."
  type: boolean?
  inputBinding:
    prefix: --apply-function
- id: in_cut
  doc: ":end[,start2:end2]\nKeep only the residues within the 1-indexed start and\n\
    end positions specified, : separated. Includes last\nitem. Start or end can be\
    \ left unspecified to indicate\nstart/end of sequence. A negative start may be\n\
    provided to indicate an offset from the end of the\nsequence. Note that to prevent\
    \ negative numbers being\ninterpreted as flags, this should be written with an\n\
    equals sign between `--cut` and the argument, e.g.:\n`--cut=-10:`"
  type: long?
  inputBinding:
    prefix: --cut
- id: in_relative_to
  doc: "Apply --cut relative to the indexes of non-gap\nresidues in sequence identified\
    \ by ID"
  type: string?
  inputBinding:
    prefix: --relative-to
- id: in_drop
  doc: ":end[,start2:end2]\nRemove the residues at the specified indices. Same\nformat\
    \ as `--cut`."
  type: long?
  inputBinding:
    prefix: --drop
- id: in_dash_gap
  doc: "Replace any of the characters \"?.:~\" with a \"-\" for\nall sequences"
  type: boolean?
  inputBinding:
    prefix: --dash-gap
- id: in_lower
  doc: Translate the sequences to lower case
  type: boolean?
  inputBinding:
    prefix: --lower
- id: in_mask
  doc: ":end1[,start2:end2]\nReplace residues in 1-indexed slice with gap-\ncharacters.\
    \ If --relative-to is also specified,\ncoordinates are relative to the sequence\
    \ ID provided."
  type: long?
  inputBinding:
    prefix: --mask
- id: in_reverse
  doc: Reverse the order of sites in sequences
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_reverse_complement
  doc: Convert sequences into reverse complements
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_squeeze
  doc: "Remove any gaps that are present in the same position\nacross all sequences\
    \ in an alignment (equivalent to\n--squeeze-threshold=1.0)"
  type: boolean?
  inputBinding:
    prefix: --squeeze
- id: in_squeeze_threshold
  doc: "Trim columns from an alignment which have gaps in\nleast the specified proportion\
    \ of sequences."
  type: string?
  inputBinding:
    prefix: --squeeze-threshold
- id: in_transcribe
  doc: "Transcription and back transcription for generic DNA\nand RNA. Source sequences\
    \ must be the correct alphabet\nor this action will likely produce incorrect results."
  type: string?
  inputBinding:
    prefix: --transcribe
- id: in_translate
  doc: "Translate from generic DNA/RNA to proteins. Options\nwith \"stop\" suffix\
    \ will NOT translate through stop\ncodons . Source sequences must be the correct\
    \ alphabet\nor this action will likely produce incorrect results."
  type: string?
  inputBinding:
    prefix: --translate
- id: in_un_gap
  doc: Remove gaps in the sequence alignment
  type: boolean?
  inputBinding:
    prefix: --ungap
- id: in_upper
  doc: Translate the sequences to upper case
  type: boolean?
  inputBinding:
    prefix: --upper
- id: in_de_duplicate_sequences
  doc: "Remove any duplicate sequences by sequence content,\nkeep the first instance\
    \ seen"
  type: boolean?
  inputBinding:
    prefix: --deduplicate-sequences
- id: in_de_duplicated_sequences_file
  doc: Write all of the deduplicated sequences to a file
  type: File?
  inputBinding:
    prefix: --deduplicated-sequences-file
- id: in_de_duplicate_tax_a
  doc: "Remove any duplicate sequences by ID, keep the first\ninstance seen"
  type: boolean?
  inputBinding:
    prefix: --deduplicate-taxa
- id: in_exclude_from_file
  doc: "Filter sequences, removing those sequence IDs in the\nspecified file"
  type: File?
  inputBinding:
    prefix: --exclude-from-file
- id: in_include_from_file
  doc: "Filter sequences, keeping only those sequence IDs in\nthe specified file"
  type: File?
  inputBinding:
    prefix: --include-from-file
- id: in_head
  doc: "Trim down to top N sequences. With the leading `-',\nprint all but the last\
    \ N sequences."
  type: string?
  inputBinding:
    prefix: --head
- id: in_max_length
  doc: "Discard any sequences beyond the specified maximum\nlength. This operation\
    \ occurs *before* all length-\nchanging options such as cut and squeeze."
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_min_length
  doc: "Discard any sequences less than the specified minimum\nlength. This operation\
    \ occurs *before* cut and\nsqueeze."
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_un_gapped_length
  doc: "Discard any sequences less than the specified minimum\nlength, excluding gaps.\
    \ This operation occurs *before*\ncut and squeeze."
  type: long?
  inputBinding:
    prefix: --min-ungapped-length
- id: in_pattern_include
  doc: "Filter the sequences by regular expression in ID or\ndescription"
  type: string?
  inputBinding:
    prefix: --pattern-include
- id: in_pattern_exclude
  doc: "Filter the sequences by regular expression in ID or\ndescription"
  type: string?
  inputBinding:
    prefix: --pattern-exclude
- id: in_prune_empty
  doc: Prune sequences containing only gaps ('-')
  type: boolean?
  inputBinding:
    prefix: --prune-empty
- id: in_sample
  doc: Select a random sampling of sequences
  type: string?
  inputBinding:
    prefix: --sample
- id: in_sample_seed
  doc: Set random seed for sampling of sequences
  type: string?
  inputBinding:
    prefix: --sample-seed
- id: in_seq_pattern_include
  doc: Filter the sequences by regular expression in sequence
  type: string?
  inputBinding:
    prefix: --seq-pattern-include
- id: in_seq_pattern_exclude
  doc: Filter the sequences by regular expression in sequence
  type: string?
  inputBinding:
    prefix: --seq-pattern-exclude
- id: in_tail
  doc: "Trim down to bottom N sequences. Use +N to output\nsequences starting with\
    \ the Nth."
  type: string?
  inputBinding:
    prefix: --tail
- id: in_first_name
  doc: "Take only the first whitespace-delimited word as the\nname of the sequence"
  type: boolean?
  inputBinding:
    prefix: --first-name
- id: in_name_suffix
  doc: Append a suffix to all IDs.
  type: string?
  inputBinding:
    prefix: --name-suffix
- id: in_name_prefix
  doc: Insert a prefix for all IDs.
  type: string?
  inputBinding:
    prefix: --name-prefix
- id: in_pattern_replace
  doc: "replace_pattern\nReplace regex pattern \"search_pattern\" with\n\"replace_pattern\"\
    \ in sequence ID and description"
  type: string?
  inputBinding:
    prefix: --pattern-replace
- id: in_strip_range
  doc: Strip ranges from sequences IDs, matching </x-y>
  type: boolean?
  inputBinding:
    prefix: --strip-range
- id: in_input_format
  doc: 'Input file format (default: determine from extension)'
  type: File?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: 'Output file format (default: determine from extension)'
  type: File?
  inputBinding:
    prefix: --output-format
- id: in_source_file
  doc: Input sequence file
  type: string
  inputBinding:
    position: 0
- id: in_dest_file
  doc: Output file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_format
  doc: 'Output file format (default: determine from extension)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqmagick:0.8.4--py_1
cwlVersion: v1.1
baseCommand:
- seqmagick
- convert
