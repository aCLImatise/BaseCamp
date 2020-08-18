class: CommandLineTool
id: ../../../ppanggolin_workflow.cwl
inputs:
- id: fast_a
  doc: 'A tab-separated file listing the organism names, and the fasta filepath of
    its genomic sequence(s) (the fastas can be compressed). One line per organism.
    This option can be used alone. (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: an_no
  doc: 'A tab-separated file listing the organism names, and the gff filepath of its
    annotations (the gffs can be compressed). One line per organism. This option can
    be used alone IF the fasta sequences are in the gff files, otherwise --fasta needs
    to be used. (default: None)'
  type: string
  inputBinding:
    prefix: --anno
- id: clusters
  doc: 'a tab-separated file listing the cluster names, the gene IDs, and optionnally
    whether they are a fragment or not. (default: None)'
  type: string
  inputBinding:
    prefix: --clusters
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.42.21_PID29288)'
  type: string
  inputBinding:
    prefix: --output
- id: basename
  doc: 'basename for the output file (default: pangenome)'
  type: string
  inputBinding:
    prefix: --basename
- id: rarefaction
  doc: 'Use to compute the rarefaction curves (WARNING: can be time consumming) (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --rarefaction
- id: nb_of_partitions
  doc: 'Number of partitions to use. Must be at least 3. If under 3, it will be detected
    automatically. (default: -1)'
  type: string
  inputBinding:
    prefix: --nb_of_partitions
- id: defrag
  doc: 'Realign gene families to associated fragments with their non-fragmented gene
    family. (default: False)'
  type: boolean
  inputBinding:
    prefix: --defrag
- id: tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: 'Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug)
    (default: 1)'
  type: string
  inputBinding:
    prefix: --verbose
- id: log
  doc: 'log output file (default: stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: 'Number of available cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpu
- id: force
  doc: 'Force writing in output directory and in pangenome output file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- workflow
