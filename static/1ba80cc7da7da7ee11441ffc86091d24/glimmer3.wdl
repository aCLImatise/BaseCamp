version 1.0

task Glimmer3 {
  input {
    String? start_codons
    File? rbs_pwm
    Float? gc_percent
    File? entropy
    Boolean? first_codon
    Int? gene_len
    File? ignore
    Boolean? linear
    File? orf_coords
    Boolean? separate_genes
    Int? max_olap
    Int? start_probs
    String? ignore_score_len
    Boolean? no_indep
    Int? threshold
    Boolean? extend
    Int? trans_table
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
      ~{if defined(start_codons) then ("--start_codons " +  '"' + start_codons + '"') else ""} \
      ~{if defined(rbs_pwm) then ("--rbs_pwm " +  '"' + rbs_pwm + '"') else ""} \
      ~{if defined(gc_percent) then ("--gc_percent " +  '"' + gc_percent + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
      ~{if (first_codon) then "--first_codon" else ""} \
      ~{if defined(gene_len) then ("--gene_len " +  '"' + gene_len + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(orf_coords) then ("--orf_coords " +  '"' + orf_coords + '"') else ""} \
      ~{if (separate_genes) then "--separate_genes" else ""} \
      ~{if defined(max_olap) then ("--max_olap " +  '"' + max_olap + '"') else ""} \
      ~{if defined(start_probs) then ("--start_probs " +  '"' + start_probs + '"') else ""} \
      ~{if defined(ignore_score_len) then ("--ignore_score_len " +  '"' + ignore_score_len + '"') else ""} \
      ~{if (no_indep) then "--no_indep" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (extend) then "--extend" else ""} \
      ~{if defined(trans_table) then ("--trans_table " +  '"' + trans_table + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start_codons: "Use comma-separated list of codons as start codons\\nSample format:  -A atg,gtg\\nUse -P option to specify relative proportions of use.\\nIf -P not used, then proportions will be equal"
    rbs_pwm: "Read a position weight matrix (PWM) from <filename> to identify\\nthe ribosome binding site to help choose start sites"
    gc_percent: "Use <p> as GC percentage of independent model\\nNote:  <p> should be a percentage, e.g., -C 45.2"
    entropy: "Read entropy profiles from <filename>.  Format is one header\\nline, then 20 lines of 3 columns each.  Columns are amino acid,\\npositive entropy, negative entropy.  Rows must be in order\\nby amino acid code letter"
    first_codon: "Use first codon in orf as start codon"
    gene_len: "Set minimum gene length to <n>"
    ignore: "<filename> specifies regions of bases that are off\\nlimits, so that no bases within that area will be examined"
    linear: "Assume linear rather than circular genome, i.e., no wraparound"
    orf_coords: "Use <filename> to specify a list of orfs that should\\nbe scored separately, with no overlap rules"
    separate_genes: "<sequence-file> is a multifasta file of separate genes to\\nbe scored separately, with no overlap rules"
    max_olap: "Set maximum overlap length to <n>.  Overlaps this short or shorter\\nare ignored."
    start_probs: "Specify probability of different start codons (same number & order\\nas in -A option).  If no -A option, then 3 values for atg, gtg and ttg\\nin that order.  Sample format:  -P 0.6,0.35,0.05\\nIf -A is specified without -P, then starts are equally likely."
    ignore_score_len: "Do not use the initial score filter on any gene <n> or more\\nbase long"
    no_indep: "Don't use independent probability score column"
    threshold: "Set threshold score for calling as gene to n.  If the in-frame\\nscore >= <n>, then the region is given a number and considered\\na potential gene."
    extend: "Allow orfs extending off ends of sequence to be scored"
    trans_table: "Use Genbank translation table number <n> for stop codons"
    stop_codons: "Use comma-separated list of codons as stop codons\\nSample format:  -Z tag,tga,taa\\n"
    sequence_file: ""
    icm_file: ""
    tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}