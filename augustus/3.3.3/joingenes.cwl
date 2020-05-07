class: CommandLineTool
id: joingenes.cwl
inputs:
- id: a
  doc: structure is "better" than another one, if it has the transcript with the highest
    "score", which is not present in the other gene structure
  type: string
  inputBinding:
    prefix: '- a'
- id: gene_sets
  doc: ',file2,...      -g file1,file2,...      where "file1,file2,...,filen" have
    to be data files with genesets in GTF format.'
  type: File
  inputBinding:
    prefix: --genesets
- id: output
  doc: -o ofile                where "ofile" is the name for an output file (GTF).
  type: string
  inputBinding:
    prefix: --output
- id: priorities
  doc: ',pr2,...        -p pr1,pr2,...          where "pr1,pr2,...,prn" have to be
    positiv integers (different from 0).'
  type: string
  inputBinding:
    prefix: --priorities
- id: input_file
  doc: -f file         where "file" is the path of a file containing paths to GTF
    files and corresponding priorities in a tab-separated list (2 columns). Use this
    option instead of -g and -p Have to be as many as filenames are added. Bigger
    numbers means a higher priority. If no priorities are added, the program will
    set all priorties to 1. This option is only useful, if there is more than one
    geneset. If there is a conflict between two transcripts, so that they can not
    be picked in the same genestructure, joingenes decides for the one with the highest
    priority.
  type: File
  inputBinding:
    prefix: --inputfile
- id: error_distance
  doc: -e x                    where "x" is a non-negative integer If a prediction
    is <=x bases next to a prediction range border, the program supposes, that there
    could be a mistake. Default is 1000. To disable the function, set errordistance
    to a negative number (e.g. -1).
  type: string
  inputBinding:
    prefix: --errordistance
- id: gene_model
  doc: -m x                    where "x" is a genemodel from the set {eukaryote, bacterium}.
    Default is eukaryotic.
  type: string
  inputBinding:
    prefix: --genemodel
- id: alternatives
  doc: -a                      is a flag If this flag is set, the program joines different
    genes, if the transcripts of the genes are alternative variants.
  type: boolean
  inputBinding:
    prefix: --alternatives
- id: suppress
  doc: ',pr2,..           -s pr1,pr2,...          where "pr1,pr2,...,prm" have to
    be positiv integers (different from 0). Default is none. if the core of a joined/non-joined
    transcript has one of these priorities it will not occur in the output file.'
  type: string
  inputBinding:
    prefix: --suppress
- id: stop_in_coding
  doc: -i                      is a flag If this flag is set, the program joines the
    stop_codons to the CDS.
  type: boolean
  inputBinding:
    prefix: --stopincoding
- id: no_join
  doc: -j                      is a flag (to disable joining). If this flag is set,
    the program will not join/merge/shuffle; it will only decide between the unchanged
    input transcipts and output them.
  type: boolean
  inputBinding:
    prefix: --nojoin
- id: no_selection
  doc: -l                      is a flag (to disable selection). If this flag is set,
    the program will NOT select at the end between "contradictory" transcripts. "contradictory"
    is self defined with respect to known biological terms. The selection works with
    a self defined scoring function.
  type: boolean
  inputBinding:
    prefix: --noselection
- id: only_compare
  doc: -c                      is a flag. If this flag is set, it disables the normal
    function of the program and activates a compare and separate mode to separate
    equal transcripts from non equal ones.
  type: boolean
  inputBinding:
    prefix: --onlycompare
outputs: []
cwlVersion: v1.1
baseCommand:
- joingenes
