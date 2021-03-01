version 1.0

task DisplayRateMatrix {
  input {
    Int? output_pt_expqt
    Boolean? show_equilibrium_frequencies
    Boolean? show_raw_matrix
    Boolean? suppress_printing_elements
    Boolean? format_table_typesetting
    Boolean? show_matrix_elements
    Boolean? use_l_only
    Boolean? use_l_report
    Boolean? use_l_assume
    Boolean? use_l_print
    Boolean? requires_model_order
    Boolean? use_include_stop
    File? only_implies_implies
    String? m_matrices_format
    File? use_l_and
    File? a_compares_rates
    Boolean? report_contextdependent_rates
    String model_fname
  }
  command <<<
    display_rate_matrix \
      ~{model_fname} \
      ~{if defined(output_pt_expqt) then ("-t " +  '"' + output_pt_expqt + '"') else ""} \
      ~{if (show_equilibrium_frequencies) then "-f" else ""} \
      ~{if (show_raw_matrix) then "-e" else ""} \
      ~{if (suppress_printing_elements) then "-d" else ""} \
      ~{if (format_table_typesetting) then "-L" else ""} \
      ~{if (show_matrix_elements) then "-l" else ""} \
      ~{if (use_l_only) then "-i" else ""} \
      ~{if (use_l_report) then "-z" else ""} \
      ~{if (use_l_assume) then "-S" else ""} \
      ~{if (use_l_print) then "-E" else ""} \
      ~{if (requires_model_order) then "-a" else ""} \
      ~{if (use_include_stop) then "-s" else ""} \
      ~{if defined(only_implies_implies) then ("-M " +  '"' + only_implies_implies + '"') else ""} \
      ~{if defined(m_matrices_format) then ("-N " +  '"' + m_matrices_format + '"') else ""} \
      ~{if defined(use_l_and) then ("-A " +  '"' + use_l_and + '"') else ""} \
      ~{if defined(a_compares_rates) then ("-B " +  '"' + a_compares_rates + '"') else ""} \
      ~{if (report_contextdependent_rates) then "-C" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_pt_expqt: ": Output P(t) = exp(Qt) instead of Q.  Requires t >= 0.\\nUse \\\"-t A\\\" to output a matrix for each branch of the tree."
    show_equilibrium_frequencies: ":     Show equilibrium frequencies as an additional table row.\\nIn list node they are shown with first tuple being -."
    show_raw_matrix: ":     Show \\\"exchangeabilities\\\" instead of raw matrix elements\\n(that is, divide each element by the equilibrium frequency\\nof its column).  Not available with -t."
    suppress_printing_elements: ":     Suppress printing of elements on main diagonal."
    format_table_typesetting: ":     Format table for typesetting with LATEX.  Incompatible with -l."
    show_matrix_elements: ":     Show matrix elements as a list rather than as a table.\\nWhen -t is not specified (rate matrix case), only off-diagonal\\nelements will be printed."
    use_l_only: ":     (For use with -l only) Report whether each substitution is\\na transition or a transversion."
    use_l_report: ":     (For use with -l) Report elements equal to zero (omitted by\\ndefault, except with -t).  Implied by -a."
    use_l_assume: ":     (For use with -l)  Assume a symmetric matrix and report half\\nas many lines.  Useful with -e."
    use_l_print: ":     (for use with -l) Print rates and probabilities\\nin scientific notation (format %e instead of %f)."
    requires_model_order: ":     (Requires a model of order 3).  Replace a matrix of codon\\nsubstitution rates with the induced matrix of amino acid\\nsubstitution rates, according to the universal genetic\\ncode.  See Yang, Nielsen, and Hasegawa, 1998."
    use_include_stop: ":     (For use with -a)  Include stop codons (by default suppressed)."
    only_implies_implies: ": (For use with -l only; implies -a) Read an amino-acid\\nsubstitution matrix from file <f> and report values from\\nthis matrix with the induced amino acid substitution rates.\\nMatrix should be in the format used by BLAST (as\\nproduced by the NCBI \\\"pam\\\" program)"
    m_matrices_format: "Like -M but for matrices in the format used by the PAML\\npackage for amino acid substitution and rate matrices."
    use_l_and: ": (For use with -l only and not with -M/-N)  Read alternative\\nsubstitution scores from file <f> and report values in\\noutput.  File <f> should have three columns: a \\\"from\\\"\\ntuple, a \\\"to\\\" tuple, and a real-valued score.\\nSubstitutions not listed will be given null scores and\\nreported as \\\"NA\\\"."
    a_compares_rates: "Like -A but compares to rates of a single-nucleotide model\\n(order 1).  File <f> should be a standard tree model (.mod) file."
    report_contextdependent_rates: "Report context-dependent transition/transversion rates, as\\nshown in Tables 2 and 3 of Morton et al., JME 45:227-231, 1997.\\nRequires a model of order 3 with a DNA alphabet."
    model_fname: ""
  }
  output {
    File out_stdout = stdout()
    File out_use_l_and = "${in_use_l_and}"
  }
}