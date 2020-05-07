class: CommandLineTool
id: display_rate_matrix.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: t
  doc: ': Output P(t) = exp(Qt) instead of Q.  Requires t >= 0.   Use "-t A" to output
    a matrix for each branch of the tree.'
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: ':     Show equilibrium frequencies as an additional table row.   In list node
    they are shown with first tuple being -.'
  type: boolean
  inputBinding:
    prefix: -f
- id: e
  doc: ':     Show "exchangeabilities" instead of raw matrix elements  (that is, divide
    each element by the equilibrium frequency  of its column).  Not available with
    -t.'
  type: boolean
  inputBinding:
    prefix: -e
- id: d
  doc: ':     Suppress printing of elements on main diagonal.'
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: ':     Format table for typesetting with LATEX.  Incompatible with -l.'
  type: boolean
  inputBinding:
    prefix: -L
- id: l
  doc: ':     Show matrix elements as a list rather than as a table.   When -t is
    not specified (rate matrix case), only off-diagonal elements will be printed.'
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: ':     (For use with -l only) Report whether each substitution is a transition
    or a transversion.'
  type: boolean
  inputBinding:
    prefix: -i
- id: z
  doc: ':     (For use with -l) Report elements equal to zero (omitted by  default,
    except with -t).  Implied by -a.'
  type: boolean
  inputBinding:
    prefix: -z
- id: s
  doc: ':     (For use with -l)  Assume a symmetric matrix and report half  as many
    lines.  Useful with -e.'
  type: boolean
  inputBinding:
    prefix: -S
- id: e
  doc: ':     (for use with -l) Print rates and probabilities  in scientific notation
    (format %e instead of %f).'
  type: boolean
  inputBinding:
    prefix: -E
- id: a
  doc: ':     (Requires a model of order 3).  Replace a matrix of codon substitution
    rates with the induced matrix of amino acid substitution rates, according to the
    universal genetic code.  See Yang, Nielsen, and Hasegawa, 1998.'
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: ':     (For use with -a)  Include stop codons (by default suppressed).'
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: ': (For use with -l only; implies -a) Read an amino-acid substitution matrix
    from file <f> and report values from this matrix with the induced amino acid substitution
    rates. Matrix should be in the format used by BLAST (as produced by the NCBI "pam"
    program) '
  type: string
  inputBinding:
    prefix: -M
- id: n
  doc: Like -M but for matrices in the format used by the PAML  package for amino
    acid substitution and rate matrices.
  type: string
  inputBinding:
    prefix: -N
- id: a
  doc: ': (For use with -l only and not with -M/-N)  Read alternative substitution
    scores from file <f> and report values in output.  File <f> should have three
    columns: a "from" tuple, a "to" tuple, and a real-valued score. Substitutions
    not listed will be given null scores and reported as "NA".'
  type: string
  inputBinding:
    prefix: -A
- id: b
  doc: Like -A but compares to rates of a single-nucleotide model  (order 1).  File
    <f> should be a standard tree model (.mod) file.
  type: string
  inputBinding:
    prefix: -B
- id: c
  doc: Report context-dependent transition/transversion rates, as  shown in Tables
    2 and 3 of Morton et al., JME 45:227-231, 1997.  Requires a model of order 3 with
    a DNA alphabet.
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- display_rate_matrix
