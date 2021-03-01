version 1.0

task Structure2Gspanpl {
  input {
    Boolean? man
    String? input_structure_type
    Boolean? stack
    Boolean? seq_graph_win
    Boolean? seq_graph_t
    String? seq_graph_alph
    Boolean? annotate
    Boolean? abstr
    Boolean? match_shape
    Boolean? vp
    Boolean? tmp
    Directory? string_eg_output_directory
    Boolean? group
    Boolean? stdout
    Boolean? ignore_header
    Boolean? debug
    String help
    String compulsory
    String options
    String instances_dot
  }
  command <<<
    structure_2_gspan_pl \
      ~{help} \
      ~{compulsory} \
      ~{options} \
      ~{instances_dot} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(input_structure_type) then ("-input-structure-type " +  '"' + input_structure_type + '"') else ""} \
      ~{if (stack) then "-stack" else ""} \
      ~{if (seq_graph_win) then "-seq-graph-win" else ""} \
      ~{if (seq_graph_t) then "-seq-graph-t" else ""} \
      ~{if defined(seq_graph_alph) then ("-seq-graph-alph " +  '"' + seq_graph_alph + '"') else ""} \
      ~{if (annotate) then "-annotate" else ""} \
      ~{if (abstr) then "-abstr" else ""} \
      ~{if (match_shape) then "-match-shape" else ""} \
      ~{if (vp) then "-vp" else ""} \
      ~{if (tmp) then "-tmp" else ""} \
      ~{if (string_eg_output_directory) then "-o" else ""} \
      ~{if (group) then "-group" else ""} \
      ~{if (stdout) then "-stdout" else ""} \
      ~{if (ignore_header) then "-ignore-header" else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "full documentation"
    input_structure_type: "Structure type from the input to use. Allowed types: \\\"MFE\\\", \\\"MEA\\\""
    stack: "Adds stacking information to graphs. This adds an additional\\nvertex (type P) for each pair of stacked base-pairs and four edges\\n(type p) from each of the involved bases to the new vertex."
    seq_graph_win: "add for each window a graph which contains no structure"
    seq_graph_t: "add for each 't #' a graph which contains no structure"
    seq_graph_alph: "the alphabet of unstructured graphs"
    annotate: "<STRING> annotation.tab\\nA file with annotations to be added as abstract graphs\\non the sequence leven (if given) and on the structure\\n(SHREP) level. The format is has the following TAB-delimited\\ncolumns: SEQID, START, END, NAMESPACE#LABEL.\\nLabels with the same name-space and SEQID form connected\\ncomponents, which is a sequence of label vertices ordered\\nby the START position in the sequence."
    abstr: "Add abstract structure graphs to the single shrep graph"
    match_shape: "<SHAPE>\\nall seqs/windows will be constraint folded into that shape via\\nRNAshapes (if structure is given in another way this struct will be kept),\\nif this shape is not possible within given energy range, produce a\\nspecific t graph with only one vertex 'X'. By this the instance\\nbecomes very unsimilar to all other graphs (for knn)"
    vp: "enable graph computation with viewpoints:\\nsvmsgdnspdk will center on those nucleotides that are given\\nvia capital letters and ignore those given as lowercase letters"
    tmp: "<STRING> e.g. \\\"/scratch/1/sita/tmp\\\"\\nA directory for writing temporary files"
    string_eg_output_directory: "<STRING> e.g. \\\"ProjectX/MySequences/GSPAN/\\\"\\nOutput directory for gspan files containing graphs."
    group: "<INTEGER> e.g. 5\\nCombine/group that number of input seqs into 1 gspan file\\noutput name is then '<INT>.group.gspan.bz2'"
    stdout: "send graphs to stdout instead of writing to files"
    ignore_header: "don't write fasta id part after first space to gspan"
    debug: "additional debug output"
    help: "-help   brief help message"
    compulsory: "-input-file     <STRING> e.g. \\\"sequence.fasta\\\"\\nThe sequence and structure data, the output of structure prediction tool."
    options: "-input-format Sequence Structure format of the input. Allowed formats: \\\"vrna-simple\\\", \\\"vrna-mea\\\""
    instances_dot: "-nostr                  Calculate no structures, only add sequence information,"
  }
  output {
    File out_stdout = stdout()
    Directory out_string_eg_output_directory = "${in_string_eg_output_directory}"
  }
}