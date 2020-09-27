class: CommandLineTool
id: rsat_pattern_assembly.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -i
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_two_str
  doc: "strand insensitive assembly (default).\nWith the strand insensitive option,\
    \ patterns can be\nused either in direct or reverse complement\norientation for\
    \ assembly. For each pattern, the\norientation which offers the best match is\
    \ chosen."
  type: boolean
  inputBinding:
    prefix: -2str
- id: in_one_str
  doc: strand sensitive assembly.
  type: boolean
  inputBinding:
    prefix: -1str
- id: in_sc
  doc: "#   score column\nPattern assembly is a NP-hard problem, i.e. the time\nof\
    \ calculation increases exponentially with the number\nof patterns. Beyond a certain\
    \ number of patterns, it\nis impossible to envisage all possible assemblie in\n\
    order to select the best ones. pattern-assembly\nimplements a heuristic which\
    \ is sensitive to the order\nof entry of the patterns. When a score column is\n\
    specified, patterns are incorporated accordingly to\ntheir scores (higher scores\
    \ are incorporated first."
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_cc
  doc: "cluster column\nDefine a column containing cluster names or numbers.\nIf cluster\
    \ column is specified, each cluster is\ntreated as a separate set of patterns\
    \ for assembly."
  type: boolean
  inputBinding:
    prefix: -cc
- id: in_max_fl
  doc: "#\nmaximum flanking segment size (default 1).\nThe flanking segment is the\
    \ portion of a fragment that\nextends outside of the assembly on which it is aligned."
  type: boolean
  inputBinding:
    prefix: -maxfl
- id: in_subst
  doc: "#\nmaximum allowed substitutions (default 0)."
  type: boolean
  inputBinding:
    prefix: -subst
- id: in_match
  doc: "#\nminimum number of matching residues to include a\npattern in an assembly\
    \ (default 0)."
  type: boolean
  inputBinding:
    prefix: -match
- id: in_weight
  doc: "#\nminimum matching weight to include a pattern in an\nassembly (default 0).\
    \ The weight is the sum\nof informative residue matches. A single-letter match\n\
    has weight 1. Matches between ambiguous nucleotides\nhave lower weight (for example\
    \ A versus [AT] has\nweight 0.5)."
  type: boolean
  inputBinding:
    prefix: -weight
- id: in_max_as_mb_nb
  doc: "#\nmaximal number of assemblies (default: 5)"
  type: boolean
  inputBinding:
    prefix: -max_asmb_nb
- id: in_max_as_mb_per_cluster
  doc: "#\nmaximal number of assemblies per cluster\n(default: 2).\nThis option is\
    \ only valid in combination with the\noption -cc."
  type: boolean
  inputBinding:
    prefix: -max_asmb_per_cluster
- id: in_max_as_mb_size
  doc: "#\nmaximal assembly size, i.e. the number of patterns per\nalignment group\
    \ (default: 50)"
  type: boolean
  inputBinding:
    prefix: -max_asmb_size
- id: in_max_as_mb_width
  doc: "#\nmaximal width for an assembly (default: 0)"
  type: boolean
  inputBinding:
    prefix: -max_asmb_width
- id: in_single_sep
  doc: "Report the isolated words (i.e. words that do not\nmatch any other words)\
    \ separately. This was the\ndefault behaviour of the program before April 2011.\n\
    The separate list of isolaed words presents the\nadvantage of compacity (no need\
    \ to create one assembly\nfor each isolated word), but a drawback is that some\n\
    significant single words may appear after less\nsignificant assemblies of several\
    \ words, and thus be\nignored for further processing (e.g. by\nmatrix-from-patterns)."
  type: boolean
  inputBinding:
    prefix: -single_sep
- id: in_top_pat
  doc: "#\nDefault: 100\nmaximum number of patterns to assemble.  If the number\n\
    of patterns in the input file exceeds the maximal\nnumber, the assembly is restrictedd\
    \ with the top patterns\nonly."
  type: boolean
  inputBinding:
    prefix: -toppat
- id: in_max_pat
  doc: "#\nmaximum number of allowed patterns (default\n0).  If the number of patterns\
    \ in the\ninput file exceeds the maximal number, the program\ndoes not performa\
    \ ny assembly, and returns a\ncancellation message."
  type: boolean
  inputBinding:
    prefix: -maxpat
- id: in_pattern_assembly
  doc: 1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_submitted_dot
  doc: These options are mutually incompatible.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- pattern-assembly
