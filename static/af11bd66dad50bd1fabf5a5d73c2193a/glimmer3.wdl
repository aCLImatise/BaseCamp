version 1.0

task Glimmer3 {
  input {
    String? a
    String? start_codons
    File? b
    File? rbs_pwm
    String? c
    Float? gc_percent
    File? e
    File? entropy
    Boolean? f
    Boolean? first_codon
    String? g
    Int? gene_len
    Boolean? help
    File? i
    File? ignore
    Boolean? var_15
    Boolean? linear
    File? var_17
    File? orf_coords
    Boolean? m
    Boolean? separate_genes
    String? o
    Int? max_olap
    Int? p
    Int? start_probs
    String? q
    String? ignore_score_len
    Boolean? r
    Boolean? no_indep
    String? t
    Int? threshold
    Boolean? x
    Boolean? extend
    String? var_33
    Int? trans_table
    String? var_35
    String? stop_codons
    File sequence_file
    File icm_file
    String tag
  }
  command <<<
    glimmer3 \
      ~{sequence_file} \
      ~{icm_file} \
      ~{tag} \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""} \
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(rbs_pwm) then ("--rbs_pwm " +  '"' + rbs_pwm + '"') else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""} \
      ~{if defined(gc_percent) then ("--gc_percent " +  '"' + gc_percent + '"') else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (first_codon) then "--first_codon" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(gene_len) then ("--gene_len " +  '"' + gene_len + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (var_15) then "-l" else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(var_17) then ("-L " +  '"' + var_17 + '"') else ""} \
      ~{if defined(orf_coords) then ("--orf_coords " +  '"' + orf_coords + '"') else ""} \
      ~{if (m) then "-M" else ""} \
      ~{if (separate_genes) then "--separate_genes" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(max_olap) then ("--max_olap " +  '"' + max_olap + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(start_probs) then ("--start_probs " +  '"' + start_probs + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(ignore_score_len) then ("--ignore_score_len " +  '"' + ignore_score_len + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (no_indep) then "--no_indep" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (x) then "-X" else ""} \
      ~{if (extend) then "--extend" else ""} \
      ~{if defined(var_33) then ("-z " +  '"' + var_33 + '"') else ""} \
      ~{if defined(trans_table) then ("--trans_table " +  '"' + trans_table + '"') else ""} \
      ~{if defined(var_35) then ("-Z " +  '"' + var_35 + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    start_codons: "Use comma-separated list of codons as start codons\\nSample format:  -A atg,gtg\\nUse -P option to specify relative proportions of use.\\nIf -P not used, then proportions will be equal"
    b: ""
    rbs_pwm: "Read a position weight matrix (PWM) from <filename> to identify\\nthe ribosome binding site to help choose start sites"
    c: ""
    gc_percent: "Use <p> as GC percentage of independent model\\nNote:  <p> should be a percentage, e.g., -C 45.2"
    e: ""
    entropy: "Read entropy profiles from <filename>.  Format is one header\\nline, then 20 lines of 3 columns each.  Columns are amino acid,\\npositive entropy, negative entropy.  Rows must be in order\\nby amino acid code letter"
    f: ""
    first_codon: "Use first codon in orf as start codon"
    g: ""
    gene_len: "Set minimum gene length to <n>"
    help: "Print this message"
    i: ""
    ignore: "<filename> specifies regions of bases that are off\\nlimits, so that no bases within that area will be examined"
    var_15: ""
    linear: "Assume linear rather than circular genome, i.e., no wraparound"
    var_17: ""
    orf_coords: "Use <filename> to specify a list of orfs that should\\nbe scored separately, with no overlap rules"
    m: ""
    separate_genes: "<sequence-file> is a multifasta file of separate genes to\\nbe scored separately, with no overlap rules"
    o: ""
    max_olap: "Set maximum overlap length to <n>.  Overlaps this short or shorter\\nare ignored."
    p: ""
    start_probs: "Specify probability of different start codons (same number & order\\nas in -A option).  If no -A option, then 3 values for atg, gtg and ttg\\nin that order.  Sample format:  -P 0.6,0.35,0.05\\nIf -A is specified without -P, then starts are equally likely."
    q: ""
    ignore_score_len: "Do not use the initial score filter on any gene <n> or more\\nbase long"
    r: ""
    no_indep: "Don't use independent probability score column"
    t: ""
    threshold: "Set threshold score for calling as gene to n.  If the in-frame\\nscore >= <n>, then the region is given a number and considered\\na potential gene."
    x: ""
    extend: "Allow orfs extending off ends of sequence to be scored"
    var_33: ""
    trans_table: "Use Genbank translation table number <n> for stop codons"
    var_35: ""
    stop_codons: "Use comma-separated list of codons as stop codons\\nSample format:  -Z tag,tga,taa\\n"
    sequence_file: ""
    icm_file: ""
    tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}