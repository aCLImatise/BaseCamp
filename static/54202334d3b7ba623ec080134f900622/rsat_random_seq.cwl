class: CommandLineTool
id: rsat_random_seq.cwl
inputs:
- id: in_sequence_length
  doc: sequence length
  type: boolean
  inputBinding:
    prefix: -l
- id: in_number_sequencesgenerate_set
  doc: "Number of sequences.\nGenerate a set of n sequences, each of length l."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose
  doc: verbose.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the comand\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_prefix
  doc: 'for sequence identifiers (default: rand).'
  type: string
  inputBinding:
    prefix: -prefix
- id: in_format
  doc: "format.\nTwo options are available:\nIG      IG suite from IntelliGenetics\n\
    raw     (default)"
  type: string
  inputBinding:
    prefix: -format
- id: in_lw
  doc: "##  Line width. A newline character will be inserted in the\nsequence every\
    \ ## bases. Default is 70.\n-lw 0 will prevent newline insertion."
  type: boolean
  inputBinding:
    prefix: -lw
- id: in_seed
  doc: '# seed for the random generator'
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_generate_random_sequences
  doc: "Generate random sequences with lengths specified in a template\nfile.\nVarious\
    \ template types are supported (option -template_format):\nsequences (in fasta),\
    \ genomic coordinates (in bed), sequence\nlengths.\nThis option is incompatible\
    \ with options -l and -n."
  type: File
  inputBinding:
    prefix: -i
- id: in_template_format
  doc: "Format for the template set (specified with the option -i).\nSupported formats:\n\
    fasta (default)\nTemplates are provided as a fasta-formatted sequence file. The\n\
    program random-genome-fragments calls sequence-lengths to define\nthe template\
    \ lengths.\nbed\nTemplates are provided as a bed-formatted file of genomic\ncoordinates.\
    \ The program random-genome-fragments calls\nsequence-lengths -format bed to define\
    \ the lengths of the bed\nfeatures.\nBed file must contain at least 3 columns,\
    \ indicating, for each\nfeature:\n1. id (ignored)\n2. start coordinate\n3. end\
    \ coordinate\nlen\nTemplates are provided as a tab-delimited file indicating the\n\
    length of each template sequence (this file can be produced by\nsequence-lengths)."
  type: long
  inputBinding:
    prefix: -template_format
- id: in_lf
  doc: "file\nDeprecated. Replaced by -i template_file -template_format len.\nMaintained\
    \ for backward compatibility.\nGenerate random sequences with the same lengths\
    \ as a set of template\nsequences. The sequence length file can be obtained with\
    \ the command\nsequence-lengths.\nThis option is incompatible with options -l\
    \ and -n.\nThe length file contains two columns :\n-sequence ID (ignored)\n-sequence\
    \ length"
  type: long
  inputBinding:
    prefix: -lf
- id: in_exp_freq
  doc: "Specifyt a file describing the background model. This\nfile must be in oligo\
    \ format, i.e. a table with\nexpected oligomer frequencies. See\nI<convert-background-model>\
    \ for conversion of other\nbackground model formats into oligomer frequency\n\
    tables.\nWhen this option is used, the sequences are generated\naccording to a\
    \ Markov chain. For instance if the\nfrequency file contains tetramers, each base\
    \ will be\nselected randomly with a probability depending on the\n3 preceding\
    \ bases:\np(Wj-3,j)\np(Bj=B) = -----------\np(Wj-3,j-1)\nwhere   Bj      is the\
    \ base at position j\nB       is a residue, ie A, C, G or T\nWj-3,j-1\nis a word\
    \ found in the sequence between\npositions j-3 and j-1\nWj-3,j  is the same word\
    \ with the character B\nconcatenated at its end"
  type: boolean
  inputBinding:
    prefix: -expfreq
- id: in_bg
  doc: "background model\nAutomatically load a pre-calibrated exected frequency\n\
    file from the RSAT genome distribution. When this\noption is used, the options\
    \ -org and -ol are also\nrequired, to indicate the organism and the\noligonucleotide\
    \ length, respectively.\nWhen the option -bg is used, it is necessary to\ndefine\
    \ the order of the markov chain, either with the\noption -markov, or with the\
    \ option -ol (oligo length).\nThis option is incompatible with the option -expfreq.\n\
    Type of sequences used as background model for\nestimating expected oligonucleotide\
    \ frequencies.\nSupported models:\n-bg equi\nequiprobable residue frequencies\
    \ (default)\n-bg upstream-noorf\nall upstream sequences, preventing overlap with\n\
    upstream open reading frames (ORFs). Requires to\nspeciy a model organism.\n-bg\
    \ upstream\nall upstream sequences, allowing overlap with\nupstream ORFs. Requires\
    \ to speciy a model\norganism.\n-bg intergenic\nintergenic frequencies Whole set\
    \ of intergenic\nregions, including upstream and downstream\nsequences. Requires\
    \ to speciy a model organism.\n-bg protein\ngenerate random peptidic sequences\
    \ using a Markov\nchain calibrated on all peptidic sequences of the\nselected\
    \ organism."
  type: boolean
  inputBinding:
    prefix: -bg
- id: in_org
  doc: "organism\nThis is necessary with the option -bg, to determine\nwhich frequency\
    \ file has to be sued for expected\nfrequency calibration."
  type: boolean
  inputBinding:
    prefix: -org
- id: in_markov
  doc: "order for the background model\nNote: options -markov and -ol are mutually\
    \ exclusive."
  type: string
  inputBinding:
    prefix: -markov
- id: in_ol
  doc: "oligo-length\nOligonucleotide length used to train the Markov\nbackground\
    \ model. If the oligo length is k, the markov\norder is m = k-1."
  type: boolean
  inputBinding:
    prefix: -ol
- id: in_rep
  doc: "Number of repetitions\nThe list if sequence lengths is repeated rep times.\n\
    This option only serves when a length file is used to\nspecify sequence-sise lengths.\n\
    This option is incompatible with the options -l and\n-n."
  type: boolean
  inputBinding:
    prefix: -rep
- id: in_random_seq
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_probabilities
  doc: "-a      alphabet\nmust be followed by residue frequencies expressed precisely\n\
    this way:\n-a a:t # c:g #\nex:\n-a a:t 0.3 c:g 0.2\nThe option\n-a yeast\nwill\
    \ automatically use the residue frequencies from yeast\ngenome."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the comand\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- random-seq
