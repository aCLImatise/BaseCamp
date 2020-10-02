class: CommandLineTool
id: joingenes.cwl
inputs:
- id: in_gene_sets
  doc: ',file2,...      -g file1,file2,...      where "file1,file2,...,filen" have
    to be data files with genesets in GTF format.'
  type: File
  inputBinding:
    prefix: --genesets
- id: in_output
  doc: -o ofile                where "ofile" is the name for an output file (GTF).
  type: File
  inputBinding:
    prefix: --output
- id: in_priorities
  doc: ',pr2,...        -p pr1,pr2,...          where "pr1,pr2,...,prn" have to be
    positiv integers (different from 0).'
  type: long
  inputBinding:
    prefix: --priorities
- id: in_input_file
  doc: "-f file         where \"file\" is the path of a file containing paths to GTF\
    \ files and corresponding priorities in a tab-separated list (2 columns). Use\
    \ this option instead of -g and -p\nHave to be as many as filenames are added.\n\
    Bigger numbers means a higher priority.\nIf no priorities are added, the program\
    \ will set all priorties to 1.\nThis option is only useful, if there is more than\
    \ one geneset.\nIf there is a conflict between two transcripts, so that they can\
    \ not be picked in the same genestructure, joingenes decides for the one with\
    \ the highest priority."
  type: File
  inputBinding:
    prefix: --inputfile
- id: in_error_distance
  doc: "-e x                    where \"x\" is a non-negative integer\nIf a prediction\
    \ is <=x bases next to a prediction range border, the program supposes, that there\
    \ could be a mistake.\nDefault is 1000.\nTo disable the function, set errordistance\
    \ to a negative number (e.g. -1)."
  type: long
  inputBinding:
    prefix: --errordistance
- id: in_gene_model
  doc: "-m x                    where \"x\" is a genemodel from the set {eukaryote,\
    \ bacterium}.\nDefault is eukaryotic."
  type: string
  inputBinding:
    prefix: --genemodel
- id: in_alternatives
  doc: "-a                      is a flag\nIf this flag is set, the program joines\
    \ different genes, if the transcripts of the genes are alternative variants."
  type: boolean
  inputBinding:
    prefix: --alternatives
- id: in_suppress
  doc: ",pr2,..           -s pr1,pr2,...          where \"pr1,pr2,...,prm\" have to\
    \ be positiv integers (different from 0).\nDefault is none.\nif the core of a\
    \ joined/non-joined transcript has one of these priorities it will not occur in\
    \ the output file."
  type: File
  inputBinding:
    prefix: --suppress
- id: in_stop_in_coding
  doc: "-i                      is a flag\nIf this flag is set, the program joines\
    \ the stop_codons to the CDS."
  type: boolean
  inputBinding:
    prefix: --stopincoding
- id: in_no_join
  doc: "-j                      is a flag (to disable joining).\nIf this flag is set,\
    \ the program will not join/merge/shuffle;\nit will only decide between the unchanged\
    \ input transcipts and output them."
  type: boolean
  inputBinding:
    prefix: --nojoin
- id: in_no_selection
  doc: "-l                      is a flag (to disable selection).\nIf this flag is\
    \ set, the program will NOT select at the end between \"contradictory\" transcripts.\n\
    \"contradictory\" is self defined with respect to known biological terms.\nThe\
    \ selection works with a self defined scoring function."
  type: boolean
  inputBinding:
    prefix: --noselection
- id: in_only_compare
  doc: "-c                      is a flag.\nIf this flag is set, it disables the normal\
    \ function of the program and\nactivates a compare and separate mode to separate\
    \ equal transcripts from non equal ones."
  type: boolean
  inputBinding:
    prefix: --onlycompare
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: -o ofile                where "ofile" is the name for an output file (GTF).
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_suppress
  doc: ",pr2,..           -s pr1,pr2,...          where \"pr1,pr2,...,prm\" have to\
    \ be positiv integers (different from 0).\nDefault is none.\nif the core of a\
    \ joined/non-joined transcript has one of these priorities it will not occur in\
    \ the output file."
  type: File
  outputBinding:
    glob: $(inputs.in_suppress)
cwlVersion: v1.1
baseCommand:
- joingenes
