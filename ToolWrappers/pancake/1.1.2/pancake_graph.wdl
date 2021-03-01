version 1.0

task PancakeGraph {
  input {
    File? pan_file
    Array[String] chrom_s
    Array[String] starts
    Array[String] stops
    Int? max_nodes
    Int? max_edges
    Int? max_entries
    Boolean? all
    Boolean? regions
    File? output_dot_file
  }
  command <<<
    pancake graph \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(chrom_s) then ("--chroms " +  '"' + chrom_s + '"') else ""} \
      ~{if defined(starts) then ("-starts " +  '"' + starts + '"') else ""} \
      ~{if defined(stops) then ("-stops " +  '"' + stops + '"') else ""} \
      ~{if defined(max_nodes) then ("--max_nodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(max_edges) then ("--max_edges " +  '"' + max_edges + '"') else ""} \
      ~{if defined(max_entries) then ("--max_entries " +  '"' + max_entries + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (regions) then "-regions" else ""} \
      ~{if defined(output_dot_file) then ("--output " +  '"' + output_dot_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom_s: "Chromosomes in Output (by default all chromosomes\\ncovered in PAN_FILE)"
    starts: "Start positions (in same order as chromosomes),\\nDEFAULT=1 on all chromosomes"
    stops: "Stop positions (in same order as chromosomes),\\nDEFAULT=length of chromosomes"
    max_nodes: "Maximal number of nodes in output graph.\\n(DEFAULT=10,000): if exceeded, PanCake will warn and\\ninterrupt!"
    max_edges: "Maximal number of edges in output graph.\\n(DEFAULT=10,000): if exceeded, PanCake will warn and\\ninterrupt!"
    max_entries: "Shared features are truncated in output if number of\\ncontained feature instances > MAX_ENTRIES (DEFAULT:\\nMAX_ENTRIES=50)"
    all: "if set, all chromosomes contained in PAN_FILE appear\\nin output (irrespective to CHROMS), DEFAULT=False"
    regions: "if set, only specified regions are shown in output\\n(DEFAULT=False), ignored if -all is set"
    output_dot_file: "output DOT file (DEFAULT: STDOUT)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dot_file = "${in_output_dot_file}"
  }
}