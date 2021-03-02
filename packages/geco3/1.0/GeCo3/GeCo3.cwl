class: CommandLineTool
id: GeCo3.cwl
inputs:
- id: in_force
  doc: force mode. Overwrites old files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: verbose mode (more information).
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_examples
  doc: show several running examples (parameter examples).
  type: boolean?
  inputBinding:
    prefix: --examples
- id: in_show_levels
  doc: show pre-computed compression levels (configured parameters).
  type: boolean?
  inputBinding:
    prefix: --show-levels
- id: in_estimate
  doc: "it creates a file with the extension \".iae\" with the\nrespective information\
    \ content. If the file is FASTA or\nFASTQ it will only use the \"ACGT\" (genomic)\
    \ sequence."
  type: boolean?
  inputBinding:
    prefix: --estimate
- id: in_compression_level_integer
  doc: "[NUMBER],  --level [NUMBER]\nCompression level (integer [1;16]).\nDefault\
    \ level: 5.\nIt defines compressibility in balance with computational\nresources\
    \ (RAM & time). Use -s for levels perception."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_lr
  doc: "[NUMBER],  --learning-rate [NUMBER]\nLearning rate (real).\nDefault rate:\
    \ 0.03.\nIt defines learning rate the neural network uses."
  type: boolean?
  inputBinding:
    prefix: -lr
- id: in_hs
  doc: "[NUMBER],  --hidden-size [NUMBER]\nHidden layer size (integer).\nDefault size:\
    \ 40.\nIt defines number of hidden nodes for the neural network."
  type: boolean?
  inputBinding:
    prefix: -hs
- id: in_tm
  doc: "[NB_C]:[NB_D]:[NB_I]:[NB_H]:[NB_G]/[NB_S]:[NB_E]:[NB_A]\nTemplate of a target\
    \ context model.\nParameters:\n[NB_C]: (integer [1;20]) order size of the regular\
    \ context\nmodel. Higher values use more RAM but, usually, are\nrelated to a better\
    \ compression score.\n[NB_D]: (integer [1;5000]) denominator to build alpha, which\n\
    is a parameter estimator. Alpha is given by 1/[NB_D].\nHigher values are usually\
    \ used with higher [NB_C],\nand related to confiant bets. When [NB_D] is one,\n\
    the probabilities assume a Laplacian distribution.\n[NB_I]: (integer {0,1,2})\
    \ number to define if a sub-program\nwhich addresses the specific properties of\
    \ DNA\nsequences (Inverted repeats) is used or not. The\nnumber 2 turns ON this\
    \ sub-program without the\nregular context model (only inverted repeats). The\n\
    number 1 turns ON the sub-program using at the same\ntime the regular context\
    \ model. The number 0 does\nnot contemple its use (Inverted repeats OFF). The\n\
    use of this sub-program increases the necessary time\nto compress but it does\
    \ not affect the RAM.\n[NB_H]: (integer [1;254]) size of the cache-hash for deeper\n\
    context models, namely for [NB_C] > 14. When the\n[NB_C] <= 14 use, for example,\
    \ 1 as a default. The\nRAM is highly dependent of this value (higher value\nstand\
    \ for higher RAM).\n[NB_G]: (real [0;1)) real number to define gamma. This value\n\
    represents the decayment forgetting factor of the\nregular context model in definition.\n\
    [NB_S]: (integer [0;20]) maximum number of editions allowed\nto use a substitutional\
    \ tolerant model with the same\nmemory model of the regular context model with\n\
    order size equal to [NB_C]. The value 0 stands for\nturning the tolerant context\
    \ model off. When the\nmodel is on, it pauses when the number of editions\nis\
    \ higher that [NB_C], while it is turned on when\na complete match of size [NB_C]\
    \ is seen again. This\nis probabilistic-algorithmic model very usefull to\nhandle\
    \ the high substitutional nature of genomic\nsequences. When [NB_S] > 0, the compressor\
    \ used more\nprocessing time, but uses the same RAM and, usually,\nachieves a\
    \ substantial higher compression ratio. The\nimpact of this model is usually only\
    \ noticed for\n[NB_C] >= 14.\n[NB_E]: (integer [1;5000]) denominator to build\
    \ alpha for\nsubstitutional tolerant context model. It is\nanalogous to [NB_D],\
    \ however to be only used in the\nprobabilistic model for computing the statistics\
    \ of\nthe substitutional tolerant context model.\n[NB_A]: (real [0;1)) real number\
    \ to define gamma. This value\nrepresents the decayment forgetting factor of the\n\
    substitutional tolerant context model in definition.\nIts definition and use is\
    \ analogus to [NB_G]."
  type: boolean?
  inputBinding:
    prefix: -tm
- id: in_rm
  doc: "[NB_C]:[NB_D]:[NB_I]:[NB_H]:[NB_G]/[NB_S]:[NB_E]:[NB_A]\nTemplate of a reference\
    \ context model.\nUse only when -r [FILE] is set (referential compression).\n\
    Parameters: the same as in -tm."
  type: boolean?
  inputBinding:
    prefix: -rm
- id: in_reference_sequence_filename
  doc: "[FILE], --reference [FILE]\nReference sequence filename (\"-rm\" are trainned\
    \ here).\nExample: -r file1.txt."
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/geco3:1.0--h516909a_0
cwlVersion: v1.1
baseCommand:
- GeCo3
