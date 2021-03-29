version 1.0

task BnMapperpy {
  input {
    String? format
    File? output_file_mandatory
    Float? threshold
    Boolean? screen
    Int? gap
    String? verbose
    Boolean? keep_split
    String? in_format
    String input_process_more
    String alignment
  }
  command <<<
    bnMapper_py \
      ~{input_process_more} \
      ~{alignment} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_file_mandatory) then ("--output " +  '"' + output_file_mandatory + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (screen) then "--screen" else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (keep_split) then "--keep_split" else ""} \
      ~{if defined(in_format) then ("--in_format " +  '"' + in_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    format: "Output format. BED4 output reports all aligned blocks\\nas separate BED records. BED12 reports a single BED\\nrecord for each mapped element, with individual blocks\\ngiven in the BED12 fields. NarrowPeak reports a single\\nnarrowPeak record for each mapped element, in which\\nthe chromosome, start, end, and peak positions are\\nmapped to the target species and all other columns are\\npassed through unchanged. (default: BED4)"
    output_file_mandatory: "Output file. Mandatory if more than on file in input.\\n(default: stdout)"
    threshold: "Mapping threshold i.e., |elem| * threshold <=\\n|mapped_elem| (default: 0.0)"
    screen: "Only report elements in the alignment (without\\nmapping). -t has not effect here (TODO) (default:\\nFalse)"
    gap: "Ignore elements with an insertion/deletion of this or\\nbigger size. (default: -1)"
    verbose: "Verbosity level (default: info)"
    keep_split: "If elements span multiple chains, report the segment\\nwith the longest overlap instead of silently dropping\\nthem. (This is the default behavior for liftOver.)\\n(default: False)"
    in_format: "Input file format. (default: BED)"
    input_process_more: "Input to process. If more than a file is specified,\\nall files will be mapped and placed on --output, which\\nshould be a directory."
    alignment: "Alignment file (.chain or .pkl)"
  }
  output {
    File out_stdout = stdout()
  }
}