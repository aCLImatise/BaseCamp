version 1.0

task DisplayRateMatrix {
  input {
    String? output_pt_expqt
    Boolean? show_equilibrium_frequencies
    Boolean? show_raw_matrix_elements
    Boolean? suppress_printing_elements
    Boolean? format_table_typesetting
    Boolean? show_matrix_elements_list
    Boolean? use_l_only
    Boolean? use_l_report
    Boolean? use_l_assume
    Boolean? use_l_print
    Boolean? requires_model_order
    Boolean? use_include_stop
    String? only_implies_implies
    String? m_matrices_format
    String? use_only_and
    String? a_compares_rates
    Boolean? report_contextdependent_transitiontransversion
    String model_fname
  }
  command <<<
    display_rate_matrix \
      ~{model_fname} \
      ~{if defined(output_pt_expqt) then ("-t " +  '"' + output_pt_expqt + '"') else ""} \
      ~{true="-f" false="" show_equilibrium_frequencies} \
      ~{true="-e" false="" show_raw_matrix_elements} \
      ~{true="-d" false="" suppress_printing_elements} \
      ~{true="-L" false="" format_table_typesetting} \
      ~{true="-l" false="" show_matrix_elements_list} \
      ~{true="-i" false="" use_l_only} \
      ~{true="-z" false="" use_l_report} \
      ~{true="-S" false="" use_l_assume} \
      ~{true="-E" false="" use_l_print} \
      ~{true="-a" false="" requires_model_order} \
      ~{true="-s" false="" use_include_stop} \
      ~{if defined(only_implies_implies) then ("-M " +  '"' + only_implies_implies + '"') else ""} \
      ~{if defined(m_matrices_format) then ("-N " +  '"' + m_matrices_format + '"') else ""} \
      ~{if defined(use_only_and) then ("-A " +  '"' + use_only_and + '"') else ""} \
      ~{if defined(a_compares_rates) then ("-B " +  '"' + a_compares_rates + '"') else ""} \
      ~{true="-C" false="" report_contextdependent_transitiontransversion}
  >>>
  parameter_meta {
    output_pt_expqt: ": Output P(t) = exp(Qt) instead of Q.  Requires t >= 0.   Use \"-t A\" to output a matrix for each branch of the tree."
    show_equilibrium_frequencies: ":     Show equilibrium frequencies as an additional table row.   In list node they are shown with first tuple being -."
    show_raw_matrix_elements: ":     Show \"exchangeabilities\" instead of raw matrix elements  (that is, divide each element by the equilibrium frequency  of its column).  Not available with -t."
    suppress_printing_elements: ":     Suppress printing of elements on main diagonal."
    format_table_typesetting: ":     Format table for typesetting with LATEX.  Incompatible with -l."
    show_matrix_elements_list: ":     Show matrix elements as a list rather than as a table.   When -t is not specified (rate matrix case), only off-diagonal elements will be printed."
    use_l_only: ":     (For use with -l only) Report whether each substitution is a transition or a transversion."
    use_l_report: ":     (For use with -l) Report elements equal to zero (omitted by  default, except with -t).  Implied by -a."
    use_l_assume: ":     (For use with -l)  Assume a symmetric matrix and report half  as many lines.  Useful with -e."
    use_l_print: ":     (for use with -l) Print rates and probabilities  in scientific notation (format %e instead of %f)."
    requires_model_order: ":     (Requires a model of order 3).  Replace a matrix of codon substitution rates with the induced matrix of amino acid substitution rates, according to the universal genetic code.  See Yang, Nielsen, and Hasegawa, 1998."
    use_include_stop: ":     (For use with -a)  Include stop codons (by default suppressed)."
    only_implies_implies: ": (For use with -l only; implies -a) Read an amino-acid substitution matrix from file <f> and report values from this matrix with the induced amino acid substitution rates. Matrix should be in the format used by BLAST (as produced by the NCBI \"pam\" program) "
    m_matrices_format: "Like -M but for matrices in the format used by the PAML  package for amino acid substitution and rate matrices."
    use_only_and: ": (For use with -l only and not with -M/-N)  Read alternative substitution scores from file <f> and report values in output.  File <f> should have three columns: a \"from\" tuple, a \"to\" tuple, and a real-valued score. Substitutions not listed will be given null scores and reported as \"NA\"."
    a_compares_rates: "Like -A but compares to rates of a single-nucleotide model  (order 1).  File <f> should be a standard tree model (.mod) file."
    report_contextdependent_transitiontransversion: "Report context-dependent transition/transversion rates, as  shown in Tables 2 and 3 of Morton et al., JME 45:227-231, 1997.  Requires a model of order 3 with a DNA alphabet."
    model_fname: ""
  }
}