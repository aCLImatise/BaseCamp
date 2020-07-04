class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmagick_convert.cwl
inputs:
- id: alphabet
  doc: Input alphabet. Required for writing NEXUS.
  type: string
  inputBinding:
    prefix: --alphabet
- id: line_wrap
  doc: Adjust line wrap for sequence strings. When N is 0, all line breaks are removed.
    Only fasta files are supported for the output format.
  type: string
  inputBinding:
    prefix: --line-wrap
- id: sort
  doc: Perform sorting by length or name, ascending or descending. ASCII sorting is
    performed for names
  type: string
  inputBinding:
    prefix: --sort
- id: apply_function
  doc: /path/to/module.py:function_name[:parameter] Specify a custom function to apply
    to the input sequences, specified as /path/to/file.py:function_name. Function
    should accept an iterable of Bio.SeqRecord objects, and yield SeqRecords. If the
    parameter is specified, it will be passed as a string as the second argument to
    the function. Specify more than one to chain.
  type: boolean
  inputBinding:
    prefix: --apply-function
- id: cut
  doc: ':end[,start2:end2] Keep only the residues within the 1-indexed start and end
    positions specified, : separated. Includes last item. Start or end can be left
    unspecified to indicate start/end of sequence. A negative start may be provided
    to indicate an offset from the end of the sequence. Note that to prevent negative
    numbers being interpreted as flags, this should be written with an equals sign
    between `--cut` and the argument, e.g.: `--cut=-10:`'
  type: string
  inputBinding:
    prefix: --cut
- id: relative_to
  doc: Apply --cut relative to the indexes of non-gap residues in sequence identified
    by ID
  type: string
  inputBinding:
    prefix: --relative-to
- id: drop
  doc: :end[,start2:end2] Remove the residues at the specified indices. Same format
    as `--cut`.
  type: string
  inputBinding:
    prefix: --drop
- id: dash_gap
  doc: Replace any of the characters "?.:~" with a "-" for all sequences
  type: boolean
  inputBinding:
    prefix: --dash-gap
- id: lower
  doc: Translate the sequences to lower case
  type: boolean
  inputBinding:
    prefix: --lower
- id: mask
  doc: :end1[,start2:end2] Replace residues in 1-indexed slice with gap- characters.
    If --relative-to is also specified, coordinates are relative to the sequence ID
    provided.
  type: string
  inputBinding:
    prefix: --mask
- id: reverse
  doc: Reverse the order of sites in sequences
  type: boolean
  inputBinding:
    prefix: --reverse
- id: reverse_complement
  doc: Convert sequences into reverse complements
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: squeeze
  doc: Remove any gaps that are present in the same position across all sequences
    in an alignment (equivalent to --squeeze-threshold=1.0)
  type: boolean
  inputBinding:
    prefix: --squeeze
- id: squeeze_threshold
  doc: Trim columns from an alignment which have gaps in least the specified proportion
    of sequences.
  type: string
  inputBinding:
    prefix: --squeeze-threshold
- id: transcribe
  doc: Transcription and back transcription for generic DNA and RNA. Source sequences
    must be the correct alphabet or this action will likely produce incorrect results.
  type: string
  inputBinding:
    prefix: --transcribe
- id: translate
  doc: Translate from generic DNA/RNA to proteins. Options with "stop" suffix will
    NOT translate through stop codons . Source sequences must be the correct alphabet
    or this action will likely produce incorrect results.
  type: string
  inputBinding:
    prefix: --translate
- id: un_gap
  doc: Remove gaps in the sequence alignment
  type: boolean
  inputBinding:
    prefix: --ungap
- id: upper
  doc: Translate the sequences to upper case
  type: boolean
  inputBinding:
    prefix: --upper
- id: de_duplicate_sequences
  doc: Remove any duplicate sequences by sequence content, keep the first instance
    seen
  type: boolean
  inputBinding:
    prefix: --deduplicate-sequences
- id: de_duplicated_sequences_file
  doc: Write all of the deduplicated sequences to a file
  type: File
  inputBinding:
    prefix: --deduplicated-sequences-file
- id: de_duplicate_tax_a
  doc: Remove any duplicate sequences by ID, keep the first instance seen
  type: boolean
  inputBinding:
    prefix: --deduplicate-taxa
- id: exclude_from_file
  doc: Filter sequences, removing those sequence IDs in the specified file
  type: File
  inputBinding:
    prefix: --exclude-from-file
- id: include_from_file
  doc: Filter sequences, keeping only those sequence IDs in the specified file
  type: File
  inputBinding:
    prefix: --include-from-file
- id: head
  doc: Trim down to top N sequences. With the leading `-', print all but the last
    N sequences.
  type: string
  inputBinding:
    prefix: --head
- id: max_length
  doc: Discard any sequences beyond the specified maximum length. This operation occurs
    *before* all length- changing options such as cut and squeeze.
  type: string
  inputBinding:
    prefix: --max-length
- id: min_length
  doc: Discard any sequences less than the specified minimum length. This operation
    occurs *before* cut and squeeze.
  type: string
  inputBinding:
    prefix: --min-length
- id: min_un_gapped_length
  doc: Discard any sequences less than the specified minimum length, excluding gaps.
    This operation occurs *before* cut and squeeze.
  type: string
  inputBinding:
    prefix: --min-ungapped-length
- id: pattern_include
  doc: Filter the sequences by regular expression in ID or description
  type: string
  inputBinding:
    prefix: --pattern-include
- id: pattern_exclude
  doc: Filter the sequences by regular expression in ID or description
  type: string
  inputBinding:
    prefix: --pattern-exclude
- id: prune_empty
  doc: Prune sequences containing only gaps ('-')
  type: boolean
  inputBinding:
    prefix: --prune-empty
- id: sample
  doc: Select a random sampling of sequences
  type: string
  inputBinding:
    prefix: --sample
- id: sample_seed
  doc: Set random seed for sampling of sequences
  type: string
  inputBinding:
    prefix: --sample-seed
- id: seq_pattern_include
  doc: Filter the sequences by regular expression in sequence
  type: string
  inputBinding:
    prefix: --seq-pattern-include
- id: seq_pattern_exclude
  doc: Filter the sequences by regular expression in sequence
  type: string
  inputBinding:
    prefix: --seq-pattern-exclude
- id: tail
  doc: Trim down to bottom N sequences. Use +N to output sequences starting with the
    Nth.
  type: string
  inputBinding:
    prefix: --tail
- id: strip_range
  doc: Strip ranges from sequences IDs, matching </x-y>
  type: boolean
  inputBinding:
    prefix: --strip-range
- id: input_format
  doc: 'Input file format (default: determine from extension)'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: 'Output file format (default: determine from extension)'
  type: string
  inputBinding:
    prefix: --output-format
- id: source_file
  doc: Input sequence file
  type: string
  inputBinding:
    position: 0
- id: dest_file
  doc: Output file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- convert
