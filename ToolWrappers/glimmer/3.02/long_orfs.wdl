version 1.0

task Longorfs {
  input {
    String? a
    String? start_codons
    File? e
    File? entropy
    Boolean? f
    Boolean? fixed
    String? g
    Int? min_len
    Boolean? help
    File? i
    File? ignore
    Boolean? var_11
    Boolean? linear
    Boolean? var_13
    Boolean? length_opt
    Boolean? n
    Boolean? no_header
    String? o
    Int? max_olap
    String? t
    String? cut_off
    Boolean? w
    Boolean? without_stops
    String? var_23
    Int? trans_table
    String? var_25
    String? stop_codons
    File sequence_file
    File output_file
  }
  command <<<
    long_orfs \
      ~{sequence_file} \
      ~{output_file} \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""} \
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (fixed) then "--fixed" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (var_11) then "-l" else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if (var_13) then "-L" else ""} \
      ~{if (length_opt) then "--length_opt" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(max_olap) then ("--max_olap " +  '"' + max_olap + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (w) then "-w" else ""} \
      ~{if (without_stops) then "--without_stops" else ""} \
      ~{if defined(var_23) then ("-z " +  '"' + var_23 + '"') else ""} \
      ~{if defined(trans_table) then ("--trans_table " +  '"' + trans_table + '"') else ""} \
      ~{if defined(var_25) then ("-Z " +  '"' + var_25 + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    start_codons: "Use comma-separated list of codons as start codons\\nSample format:  -A atg,gtg"
    e: ""
    entropy: "Read entropy profiles from <filename>.  Format is one header\\nline, then 20 lines of 3 columns each.  Columns are amino acid,\\npositive entropy, negative entropy.  Rows must be in order\\nby amino acid code letter"
    f: ""
    fixed: "Do *NOT* automatically determine the minimum gene length so as\\nto maximize the total length of output regions"
    g: ""
    min_len: "Only genes with length >= <n> will be considered"
    help: "Print this message"
    i: ""
    ignore: "<filename> specifies regions of bases that are off\\nlimits, so that no bases within that area will be examined"
    var_11: ""
    linear: "Assume linear rather than circular genome, i.e., no wraparound"
    var_13: ""
    length_opt: "Find and use the minimum gene length that maximizes the total\\nlength of non-overlapping genes, instead of maximizing the\\nnumber of such genes"
    n: ""
    no_header: "Do not include heading information in the output; only output\\nthe orf-coordinate lines"
    o: ""
    max_olap: "Set maximum overlap length to <n>.  Overlaps this short or shorter\\nare ignored."
    t: ""
    cut_off: "Only genes with entropy distance score less than <x> will be considered"
    w: ""
    without_stops: "Do *NOT* include the stop codon in the output coordinates.\\nBy default, it is included."
    var_23: ""
    trans_table: "Use Genbank translation table number <n> for stop codons"
    var_25: ""
    stop_codons: "Use comma-separated list of codons as stop codons\\nSample format:  -Z tag,tga,taa\\n"
    sequence_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}