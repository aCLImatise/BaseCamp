version 1.0

task Longorfs {
  input {
    String? start_codons
    File? entropy
    Boolean? fixed
    Int? min_len
    File? ignore
    Boolean? linear
    Boolean? length_opt
    Boolean? no_header
    Int? max_olap
    String? cut_off
    Boolean? without_stops
    Int? trans_table
    String? stop_codons
    File sequence_file
    File output_file
  }
  command <<<
    long_orfs \
      ~{sequence_file} \
      ~{output_file} \
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
      ~{if (fixed) then "--fixed" else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if (length_opt) then "--length_opt" else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if defined(max_olap) then ("--max_olap " +  '"' + max_olap + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (without_stops) then "--without_stops" else ""} \
      ~{if defined(trans_table) then ("--trans_table " +  '"' + trans_table + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start_codons: "Use comma-separated list of codons as start codons\\nSample format:  -A atg,gtg"
    entropy: "Read entropy profiles from <filename>.  Format is one header\\nline, then 20 lines of 3 columns each.  Columns are amino acid,\\npositive entropy, negative entropy.  Rows must be in order\\nby amino acid code letter"
    fixed: "Do *NOT* automatically determine the minimum gene length so as\\nto maximize the total length of output regions"
    min_len: "Only genes with length >= <n> will be considered"
    ignore: "<filename> specifies regions of bases that are off\\nlimits, so that no bases within that area will be examined"
    linear: "Assume linear rather than circular genome, i.e., no wraparound"
    length_opt: "Find and use the minimum gene length that maximizes the total\\nlength of non-overlapping genes, instead of maximizing the\\nnumber of such genes"
    no_header: "Do not include heading information in the output; only output\\nthe orf-coordinate lines"
    max_olap: "Set maximum overlap length to <n>.  Overlaps this short or shorter\\nare ignored."
    cut_off: "Only genes with entropy distance score less than <x> will be considered"
    without_stops: "Do *NOT* include the stop codon in the output coordinates.\\nBy default, it is included."
    trans_table: "Use Genbank translation table number <n> for stop codons"
    stop_codons: "Use comma-separated list of codons as stop codons\\nSample format:  -Z tag,tga,taa\\n"
    sequence_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}