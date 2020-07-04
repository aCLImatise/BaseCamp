version 1.0

task BnMapper.py {
  input {
    String? format
    File? output_file_mandatory
    Float? threshold
    Boolean? screen
    String? gap
    String? verbose
    Boolean? keep_split
    String? in_format
    String input_process_more
    String alignment
  }
  command <<<
    bnMapper.py \
      ~{input_process_more} \
      ~{alignment} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_file_mandatory) then ("--output " +  '"' + output_file_mandatory + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--screen" false="" screen} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--keep_split" false="" keep_split} \
      ~{if defined(in_format) then ("--in_format " +  '"' + in_format + '"') else ""}
  >>>
  parameter_meta {
    format: "Output format. BED4 output reports all aligned blocks as separate BED records. BED12 reports a single BED record for each mapped element, with individual blocks given in the BED12 fields. NarrowPeak reports a single narrowPeak record for each mapped element, in which the chromosome, start, end, and peak positions are mapped to the target species and all other columns are passed through unchanged. (default: BED4)"
    output_file_mandatory: "Output file. Mandatory if more than on file in input. (default: stdout)"
    threshold: "Mapping threshold i.e., |elem| * threshold <= |mapped_elem| (default: 0.0)"
    screen: "Only report elements in the alignment (without mapping). -t has not effect here (TODO) (default: False)"
    gap: "Ignore elements with an insertion/deletion of this or bigger size. (default: -1)"
    verbose: "Verbosity level (default: info)"
    keep_split: "If elements span multiple chains, report the segment with the longest overlap instead of silently dropping them. (This is the default behavior for liftOver.) (default: False)"
    in_format: "Input file format. (default: BED)"
    input_process_more: "Input to process. If more than a file is specified, all files will be mapped and placed on --output, which should be a directory."
    alignment: "Alignment file (.chain or .pkl)"
  }
}