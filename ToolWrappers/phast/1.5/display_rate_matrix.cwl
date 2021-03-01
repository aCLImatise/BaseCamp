class: CommandLineTool
id: display_rate_matrix.cwl
inputs:
- id: in_output_pt_expqt
  doc: ": Output P(t) = exp(Qt) instead of Q.  Requires t >= 0.\nUse \"-t A\" to output\
    \ a matrix for each branch of the tree."
  type: long?
  inputBinding:
    prefix: -t
- id: in_show_equilibrium_frequencies
  doc: ":     Show equilibrium frequencies as an additional table row.\nIn list node\
    \ they are shown with first tuple being -."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_show_raw_matrix
  doc: ":     Show \"exchangeabilities\" instead of raw matrix elements\n(that is,\
    \ divide each element by the equilibrium frequency\nof its column).  Not available\
    \ with -t."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_suppress_printing_elements
  doc: ':     Suppress printing of elements on main diagonal.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_format_table_typesetting
  doc: ':     Format table for typesetting with LATEX.  Incompatible with -l.'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_show_matrix_elements
  doc: ":     Show matrix elements as a list rather than as a table.\nWhen -t is not\
    \ specified (rate matrix case), only off-diagonal\nelements will be printed."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_use_l_only
  doc: ":     (For use with -l only) Report whether each substitution is\na transition\
    \ or a transversion."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_use_l_report
  doc: ":     (For use with -l) Report elements equal to zero (omitted by\ndefault,\
    \ except with -t).  Implied by -a."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_use_l_assume
  doc: ":     (For use with -l)  Assume a symmetric matrix and report half\nas many\
    \ lines.  Useful with -e."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_use_l_print
  doc: ":     (for use with -l) Print rates and probabilities\nin scientific notation\
    \ (format %e instead of %f)."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_requires_model_order
  doc: ":     (Requires a model of order 3).  Replace a matrix of codon\nsubstitution\
    \ rates with the induced matrix of amino acid\nsubstitution rates, according to\
    \ the universal genetic\ncode.  See Yang, Nielsen, and Hasegawa, 1998."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_use_include_stop
  doc: ':     (For use with -a)  Include stop codons (by default suppressed).'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_only_implies_implies
  doc: ": (For use with -l only; implies -a) Read an amino-acid\nsubstitution matrix\
    \ from file <f> and report values from\nthis matrix with the induced amino acid\
    \ substitution rates.\nMatrix should be in the format used by BLAST (as\nproduced\
    \ by the NCBI \"pam\" program)"
  type: File?
  inputBinding:
    prefix: -M
- id: in_m_matrices_format
  doc: "Like -M but for matrices in the format used by the PAML\npackage for amino\
    \ acid substitution and rate matrices."
  type: string?
  inputBinding:
    prefix: -N
- id: in_use_l_and
  doc: ": (For use with -l only and not with -M/-N)  Read alternative\nsubstitution\
    \ scores from file <f> and report values in\noutput.  File <f> should have three\
    \ columns: a \"from\"\ntuple, a \"to\" tuple, and a real-valued score.\nSubstitutions\
    \ not listed will be given null scores and\nreported as \"NA\"."
  type: File?
  inputBinding:
    prefix: -A
- id: in_a_compares_rates
  doc: "Like -A but compares to rates of a single-nucleotide model\n(order 1).  File\
    \ <f> should be a standard tree model (.mod) file."
  type: File?
  inputBinding:
    prefix: -B
- id: in_report_contextdependent_rates
  doc: "Report context-dependent transition/transversion rates, as\nshown in Tables\
    \ 2 and 3 of Morton et al., JME 45:227-231, 1997.\nRequires a model of order 3\
    \ with a DNA alphabet."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_model_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_l_and
  doc: ": (For use with -l only and not with -M/-N)  Read alternative\nsubstitution\
    \ scores from file <f> and report values in\noutput.  File <f> should have three\
    \ columns: a \"from\"\ntuple, a \"to\" tuple, and a real-valued score.\nSubstitutions\
    \ not listed will be given null scores and\nreported as \"NA\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_use_l_and)
hints: []
cwlVersion: v1.1
baseCommand:
- display_rate_matrix
