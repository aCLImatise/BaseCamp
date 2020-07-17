class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dreme.cwl
inputs:
- id: directory_create_directory
  doc: <directory>         create the specified output directory  and write all output
    to files in that directory
  type: boolean
  inputBinding:
    prefix: -o
- id: oc
  doc: 'create the specified output directory  overwritting it if it already exists;
    default: create dreme_out in the currrent working directory'
  type: Directory
  inputBinding:
    prefix: -oc
- id: positive_sequence_file
  doc: positive sequence file name (required)
  type: File
  inputBinding:
    prefix: -p
- id: negative_sequence_file
  doc: 'negative sequence file name (optional); default: the positive sequences are
    shuffled to create the negative set if -n is not used'
  type: File
  inputBinding:
    prefix: -n
- id: dna
  doc: use the standard DNA alphabet; this is the default
  type: boolean
  inputBinding:
    prefix: -dna
- id: rna
  doc: use the standard RNA alphabet
  type: boolean
  inputBinding:
    prefix: -rna
- id: protein
  doc: use the standard Protein alphabet (may not work well)
  type: boolean
  inputBinding:
    prefix: -protein
- id: alph
  doc: use custom alphabet (some restrictions apply - see manual)
  type: File
  inputBinding:
    prefix: -alph
- id: norc
  doc: search given strand only for motifs (not reverse complement)
  type: boolean
  inputBinding:
    prefix: -norc
- id: stop_motif_evalue
  doc: 'stop if motif E-value > <ethresh>; default: 0.05'
  type: string
  inputBinding:
    prefix: -e
- id: stop_motifs_output
  doc: 'stop if <m> motifs have been output; default: only stop at E-value threshold'
  type: string
  inputBinding:
    prefix: -m
- id: stop_time_elapsed
  doc: 'stop if the specified time has elapsed; default: only stop at E-value threshold'
  type: string
  inputBinding:
    prefix: -t
- id: number_generalize_default
  doc: 'number of REs to generalize; default: 100 Hint: Increasing <ngen> will make
    the motif search more thoroughly at some cost in speed.'
  type: string
  inputBinding:
    prefix: -g
- id: seed_shuffling_sequences
  doc: 'seed for shuffling sequences; ignored if -n <filename> given; default: 1'
  type: string
  inputBinding:
    prefix: -s
- id: verbosity
  doc: '1..5 for varying degrees of extra output default: 2'
  type: string
  inputBinding:
    prefix: -verbosity
- id: png
  doc: create PNG logos
  type: boolean
  inputBinding:
    prefix: -png
- id: eps
  doc: create EPS logos
  type: boolean
  inputBinding:
    prefix: -eps
- id: desc
  doc: 'store the description in the output; default: no description'
  type: string
  inputBinding:
    prefix: -desc
- id: d_file
  doc: 'acts like -desc but reads the description from the specified file; allows
    characters that would  otherwise have to be escaped;  default: no description'
  type: File
  inputBinding:
    prefix: -dfile
- id: mink
  doc: minimum width of core motif; default 3
  type: long
  inputBinding:
    prefix: -mink
- id: max_k
  doc: maximum width of core motif; default 8
  type: long
  inputBinding:
    prefix: -maxk
- id: sets_minkmaxkk
  doc: sets mink=maxk=<k>
  type: string
  inputBinding:
    prefix: -k
- id: print_list_enrichment
  doc: print list of enrichment of all REs tested
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dreme
