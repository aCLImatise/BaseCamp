version 1.0

task SeqmagickConvert {
  input {
    String? alphabet
    String? line_wrap
    String? sort
    Boolean? apply_function
    String? cut
    String? relative_to
    String? drop
    Boolean? dash_gap
    Boolean? lower
    String? mask
    Boolean? reverse
    Boolean? reverse_complement
    Boolean? squeeze
    String? squeeze_threshold
    String? transcribe
    String? translate
    Boolean? un_gap
    Boolean? upper
    Boolean? de_duplicate_sequences
    File? de_duplicated_sequences_file
    Boolean? de_duplicate_tax_a
    File? exclude_from_file
    File? include_from_file
    String? head
    String? max_length
    String? min_length
    String? min_un_gapped_length
    String? pattern_include
    String? pattern_exclude
    Boolean? prune_empty
    String? sample
    String? sample_seed
    String? seq_pattern_include
    String? seq_pattern_exclude
    String? tail
    Boolean? strip_range
    String? input_format
    String? output_format
    String source_file
    String dest_file
  }
  command <<<
    seqmagick convert \
      ~{source_file} \
      ~{dest_file} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(line_wrap) then ("--line-wrap " +  '"' + line_wrap + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--apply-function" false="" apply_function} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if defined(relative_to) then ("--relative-to " +  '"' + relative_to + '"') else ""} \
      ~{if defined(drop) then ("--drop " +  '"' + drop + '"') else ""} \
      ~{true="--dash-gap" false="" dash_gap} \
      ~{true="--lower" false="" lower} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{true="--squeeze" false="" squeeze} \
      ~{if defined(squeeze_threshold) then ("--squeeze-threshold " +  '"' + squeeze_threshold + '"') else ""} \
      ~{if defined(transcribe) then ("--transcribe " +  '"' + transcribe + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{true="--ungap" false="" un_gap} \
      ~{true="--upper" false="" upper} \
      ~{true="--deduplicate-sequences" false="" de_duplicate_sequences} \
      ~{if defined(de_duplicated_sequences_file) then ("--deduplicated-sequences-file " +  '"' + de_duplicated_sequences_file + '"') else ""} \
      ~{true="--deduplicate-taxa" false="" de_duplicate_tax_a} \
      ~{if defined(exclude_from_file) then ("--exclude-from-file " +  '"' + exclude_from_file + '"') else ""} \
      ~{if defined(include_from_file) then ("--include-from-file " +  '"' + include_from_file + '"') else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_un_gapped_length) then ("--min-ungapped-length " +  '"' + min_un_gapped_length + '"') else ""} \
      ~{if defined(pattern_include) then ("--pattern-include " +  '"' + pattern_include + '"') else ""} \
      ~{if defined(pattern_exclude) then ("--pattern-exclude " +  '"' + pattern_exclude + '"') else ""} \
      ~{true="--prune-empty" false="" prune_empty} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(sample_seed) then ("--sample-seed " +  '"' + sample_seed + '"') else ""} \
      ~{if defined(seq_pattern_include) then ("--seq-pattern-include " +  '"' + seq_pattern_include + '"') else ""} \
      ~{if defined(seq_pattern_exclude) then ("--seq-pattern-exclude " +  '"' + seq_pattern_exclude + '"') else ""} \
      ~{if defined(tail) then ("--tail " +  '"' + tail + '"') else ""} \
      ~{true="--strip-range" false="" strip_range} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  parameter_meta {
    alphabet: "Input alphabet. Required for writing NEXUS."
    line_wrap: "Adjust line wrap for sequence strings. When N is 0, all line breaks are removed. Only fasta files are supported for the output format."
    sort: "Perform sorting by length or name, ascending or descending. ASCII sorting is performed for names"
    apply_function: "/path/to/module.py:function_name[:parameter] Specify a custom function to apply to the input sequences, specified as /path/to/file.py:function_name. Function should accept an iterable of Bio.SeqRecord objects, and yield SeqRecords. If the parameter is specified, it will be passed as a string as the second argument to the function. Specify more than one to chain."
    cut: ":end[,start2:end2] Keep only the residues within the 1-indexed start and end positions specified, : separated. Includes last item. Start or end can be left unspecified to indicate start/end of sequence. A negative start may be provided to indicate an offset from the end of the sequence. Note that to prevent negative numbers being interpreted as flags, this should be written with an equals sign between `--cut` and the argument, e.g.: `--cut=-10:`"
    relative_to: "Apply --cut relative to the indexes of non-gap residues in sequence identified by ID"
    drop: ":end[,start2:end2] Remove the residues at the specified indices. Same format as `--cut`."
    dash_gap: "Replace any of the characters \"?.:~\" with a \"-\" for all sequences"
    lower: "Translate the sequences to lower case"
    mask: ":end1[,start2:end2] Replace residues in 1-indexed slice with gap- characters. If --relative-to is also specified, coordinates are relative to the sequence ID provided."
    reverse: "Reverse the order of sites in sequences"
    reverse_complement: "Convert sequences into reverse complements"
    squeeze: "Remove any gaps that are present in the same position across all sequences in an alignment (equivalent to --squeeze-threshold=1.0)"
    squeeze_threshold: "Trim columns from an alignment which have gaps in least the specified proportion of sequences."
    transcribe: "Transcription and back transcription for generic DNA and RNA. Source sequences must be the correct alphabet or this action will likely produce incorrect results."
    translate: "Translate from generic DNA/RNA to proteins. Options with \"stop\" suffix will NOT translate through stop codons . Source sequences must be the correct alphabet or this action will likely produce incorrect results."
    un_gap: "Remove gaps in the sequence alignment"
    upper: "Translate the sequences to upper case"
    de_duplicate_sequences: "Remove any duplicate sequences by sequence content, keep the first instance seen"
    de_duplicated_sequences_file: "Write all of the deduplicated sequences to a file"
    de_duplicate_tax_a: "Remove any duplicate sequences by ID, keep the first instance seen"
    exclude_from_file: "Filter sequences, removing those sequence IDs in the specified file"
    include_from_file: "Filter sequences, keeping only those sequence IDs in the specified file"
    head: "Trim down to top N sequences. With the leading `-', print all but the last N sequences."
    max_length: "Discard any sequences beyond the specified maximum length. This operation occurs *before* all length- changing options such as cut and squeeze."
    min_length: "Discard any sequences less than the specified minimum length. This operation occurs *before* cut and squeeze."
    min_un_gapped_length: "Discard any sequences less than the specified minimum length, excluding gaps. This operation occurs *before* cut and squeeze."
    pattern_include: "Filter the sequences by regular expression in ID or description"
    pattern_exclude: "Filter the sequences by regular expression in ID or description"
    prune_empty: "Prune sequences containing only gaps ('-')"
    sample: "Select a random sampling of sequences"
    sample_seed: "Set random seed for sampling of sequences"
    seq_pattern_include: "Filter the sequences by regular expression in sequence"
    seq_pattern_exclude: "Filter the sequences by regular expression in sequence"
    tail: "Trim down to bottom N sequences. Use +N to output sequences starting with the Nth."
    strip_range: "Strip ranges from sequences IDs, matching </x-y>"
    input_format: "Input file format (default: determine from extension)"
    output_format: "Output file format (default: determine from extension)"
    source_file: "Input sequence file"
    dest_file: "Output file"
  }
}