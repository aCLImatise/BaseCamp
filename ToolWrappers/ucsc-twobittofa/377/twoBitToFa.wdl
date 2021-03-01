version 1.0

task TwoBitToFa {
  input {
    String? seq
    String? start
    String? end
    File? seq_list
    Boolean? no_mask
    String? bpt
    String? bed
    Boolean? bed_pos
    Boolean? udc_dir
    Float input_dot_two_bit
  }
  command <<<
    twoBitToFa \
      ~{input_dot_two_bit} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if defined(seq_list) then ("-seqList " +  '"' + seq_list + '"') else ""} \
      ~{if (no_mask) then "-noMask" else ""} \
      ~{if defined(bpt) then ("-bpt " +  '"' + bpt + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if (bed_pos) then "-bedPos" else ""} \
      ~{if (udc_dir) then "-udcDir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq: "Restrict this to just one sequence."
    start: "Start at given position in sequence (zero-based)."
    end: "End at given position in sequence (non-inclusive)."
    seq_list: "File containing list of the desired sequence names\\nin the format seqSpec[:start-end], e.g. chr1 or chr1:0-189\\nwhere coordinates are half-open zero-based, i.e. [start,end)."
    no_mask: "Convert sequence to all upper case."
    bpt: "Use bpt index instead of built-in one."
    bed: "Grab sequences specified by input.bed. Will exclude introns."
    bed_pos: "With -bed, use chrom:start-end as the fasta ID in output.fa."
    udc_dir: "=/dir/to/cache  Place to put cache for remote bigBed/bigWigs."
    input_dot_two_bit: ""
  }
  output {
    File out_stdout = stdout()
  }
}