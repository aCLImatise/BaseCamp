version 1.0

task SeqmagickConvert {
  input {
    String? alphabet
    Int? line_wrap
    String? sort
    Boolean? apply_function
    Int? cut
    String? relative_to
    Int? drop
    Boolean? dash_gap
    Boolean? lower
    Int? mask
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
    Int? max_length
    Int? min_length
    Int? min_un_gapped_length
    String? pattern_include
    String? pattern_exclude
    Boolean? prune_empty
    String? sample
    String? sample_seed
    String? seq_pattern_include
    String? seq_pattern_exclude
    String? tail
    Boolean? first_name
    String? name_suffix
    String? name_prefix
    String? pattern_replace
    Boolean? strip_range
    File? input_format
    File? output_format
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
      ~{if (apply_function) then "--apply-function" else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if defined(relative_to) then ("--relative-to " +  '"' + relative_to + '"') else ""} \
      ~{if defined(drop) then ("--drop " +  '"' + drop + '"') else ""} \
      ~{if (dash_gap) then "--dash-gap" else ""} \
      ~{if (lower) then "--lower" else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (squeeze) then "--squeeze" else ""} \
      ~{if defined(squeeze_threshold) then ("--squeeze-threshold " +  '"' + squeeze_threshold + '"') else ""} \
      ~{if defined(transcribe) then ("--transcribe " +  '"' + transcribe + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if (un_gap) then "--ungap" else ""} \
      ~{if (upper) then "--upper" else ""} \
      ~{if (de_duplicate_sequences) then "--deduplicate-sequences" else ""} \
      ~{if defined(de_duplicated_sequences_file) then ("--deduplicated-sequences-file " +  '"' + de_duplicated_sequences_file + '"') else ""} \
      ~{if (de_duplicate_tax_a) then "--deduplicate-taxa" else ""} \
      ~{if defined(exclude_from_file) then ("--exclude-from-file " +  '"' + exclude_from_file + '"') else ""} \
      ~{if defined(include_from_file) then ("--include-from-file " +  '"' + include_from_file + '"') else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_un_gapped_length) then ("--min-ungapped-length " +  '"' + min_un_gapped_length + '"') else ""} \
      ~{if defined(pattern_include) then ("--pattern-include " +  '"' + pattern_include + '"') else ""} \
      ~{if defined(pattern_exclude) then ("--pattern-exclude " +  '"' + pattern_exclude + '"') else ""} \
      ~{if (prune_empty) then "--prune-empty" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(sample_seed) then ("--sample-seed " +  '"' + sample_seed + '"') else ""} \
      ~{if defined(seq_pattern_include) then ("--seq-pattern-include " +  '"' + seq_pattern_include + '"') else ""} \
      ~{if defined(seq_pattern_exclude) then ("--seq-pattern-exclude " +  '"' + seq_pattern_exclude + '"') else ""} \
      ~{if defined(tail) then ("--tail " +  '"' + tail + '"') else ""} \
      ~{if (first_name) then "--first-name" else ""} \
      ~{if defined(name_suffix) then ("--name-suffix " +  '"' + name_suffix + '"') else ""} \
      ~{if defined(name_prefix) then ("--name-prefix " +  '"' + name_prefix + '"') else ""} \
      ~{if defined(pattern_replace) then ("--pattern-replace " +  '"' + pattern_replace + '"') else ""} \
      ~{if (strip_range) then "--strip-range" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqmagick:0.8.4--py_1"
  }
  parameter_meta {
    alphabet: "Input alphabet. Required for writing NEXUS."
    line_wrap: "Adjust line wrap for sequence strings. When N is 0,\\nall line breaks are removed. Only fasta files are\\nsupported for the output format."
    sort: "Perform sorting by length or name, ascending or\\ndescending. ASCII sorting is performed for names"
    apply_function: "/path/to/module.py:function_name[:parameter]\\nSpecify a custom function to apply to the input\\nsequences, specified as\\n/path/to/file.py:function_name. Function should accept\\nan iterable of Bio.SeqRecord objects, and yield\\nSeqRecords. If the parameter is specified, it will be\\npassed as a string as the second argument to the\\nfunction. Specify more than one to chain."
    cut: ":end[,start2:end2]\\nKeep only the residues within the 1-indexed start and\\nend positions specified, : separated. Includes last\\nitem. Start or end can be left unspecified to indicate\\nstart/end of sequence. A negative start may be\\nprovided to indicate an offset from the end of the\\nsequence. Note that to prevent negative numbers being\\ninterpreted as flags, this should be written with an\\nequals sign between `--cut` and the argument, e.g.:\\n`--cut=-10:`"
    relative_to: "Apply --cut relative to the indexes of non-gap\\nresidues in sequence identified by ID"
    drop: ":end[,start2:end2]\\nRemove the residues at the specified indices. Same\\nformat as `--cut`."
    dash_gap: "Replace any of the characters \\\"?.:~\\\" with a \\\"-\\\" for\\nall sequences"
    lower: "Translate the sequences to lower case"
    mask: ":end1[,start2:end2]\\nReplace residues in 1-indexed slice with gap-\\ncharacters. If --relative-to is also specified,\\ncoordinates are relative to the sequence ID provided."
    reverse: "Reverse the order of sites in sequences"
    reverse_complement: "Convert sequences into reverse complements"
    squeeze: "Remove any gaps that are present in the same position\\nacross all sequences in an alignment (equivalent to\\n--squeeze-threshold=1.0)"
    squeeze_threshold: "Trim columns from an alignment which have gaps in\\nleast the specified proportion of sequences."
    transcribe: "Transcription and back transcription for generic DNA\\nand RNA. Source sequences must be the correct alphabet\\nor this action will likely produce incorrect results."
    translate: "Translate from generic DNA/RNA to proteins. Options\\nwith \\\"stop\\\" suffix will NOT translate through stop\\ncodons . Source sequences must be the correct alphabet\\nor this action will likely produce incorrect results."
    un_gap: "Remove gaps in the sequence alignment"
    upper: "Translate the sequences to upper case"
    de_duplicate_sequences: "Remove any duplicate sequences by sequence content,\\nkeep the first instance seen"
    de_duplicated_sequences_file: "Write all of the deduplicated sequences to a file"
    de_duplicate_tax_a: "Remove any duplicate sequences by ID, keep the first\\ninstance seen"
    exclude_from_file: "Filter sequences, removing those sequence IDs in the\\nspecified file"
    include_from_file: "Filter sequences, keeping only those sequence IDs in\\nthe specified file"
    head: "Trim down to top N sequences. With the leading `-',\\nprint all but the last N sequences."
    max_length: "Discard any sequences beyond the specified maximum\\nlength. This operation occurs *before* all length-\\nchanging options such as cut and squeeze."
    min_length: "Discard any sequences less than the specified minimum\\nlength. This operation occurs *before* cut and\\nsqueeze."
    min_un_gapped_length: "Discard any sequences less than the specified minimum\\nlength, excluding gaps. This operation occurs *before*\\ncut and squeeze."
    pattern_include: "Filter the sequences by regular expression in ID or\\ndescription"
    pattern_exclude: "Filter the sequences by regular expression in ID or\\ndescription"
    prune_empty: "Prune sequences containing only gaps ('-')"
    sample: "Select a random sampling of sequences"
    sample_seed: "Set random seed for sampling of sequences"
    seq_pattern_include: "Filter the sequences by regular expression in sequence"
    seq_pattern_exclude: "Filter the sequences by regular expression in sequence"
    tail: "Trim down to bottom N sequences. Use +N to output\\nsequences starting with the Nth."
    first_name: "Take only the first whitespace-delimited word as the\\nname of the sequence"
    name_suffix: "Append a suffix to all IDs."
    name_prefix: "Insert a prefix for all IDs."
    pattern_replace: "replace_pattern\\nReplace regex pattern \\\"search_pattern\\\" with\\n\\\"replace_pattern\\\" in sequence ID and description"
    strip_range: "Strip ranges from sequences IDs, matching </x-y>"
    input_format: "Input file format (default: determine from extension)"
    output_format: "Output file format (default: determine from extension)"
    source_file: "Input sequence file"
    dest_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
  }
}