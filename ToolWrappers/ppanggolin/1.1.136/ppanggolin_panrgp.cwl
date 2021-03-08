class: CommandLineTool
id: ppanggolin_panrgp.cwl
inputs:
- id: in_fast_a
  doc: "A tab-separated file listing the organism names, and\nthe fasta filepath of\
    \ its genomic sequence(s) (the\nfastas can be compressed). One line per organism.\
    \ This\noption can be used alone. (default: None)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_an_no
  doc: "A tab-separated file listing the organism names, and\nthe gff filepath of\
    \ its annotations (the gffs can be\ncompressed). One line per organism. This option\
    \ can be\nused alone IF the fasta sequences are in the gff\nfiles, otherwise --fasta\
    \ needs to be used. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --anno
- id: in_clusters
  doc: "a tab-separated file listing the cluster names, the\ngene IDs, and optionnally\
    \ whether they are a fragment\nor not. (default: None)"
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.07_PID1219)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_basename
  doc: 'basename for the output file (default: pangenome)'
  type: File?
  inputBinding:
    prefix: --basename
- id: in_rarefaction
  doc: "Use to compute the rarefaction curves (WARNING: can be\ntime consumming) (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --rarefaction
- id: in_nb_of_partitions
  doc: "Number of partitions to use. Must be at least 3. If\nunder 3, it will be detected\
    \ automatically. (default:\n-1)"
  type: long?
  inputBinding:
    prefix: --nb_of_partitions
- id: in_interest
  doc: "Comma separated list of elements to flag when drawing\nand writing hotspots\
    \ (default: )"
  type: string?
  inputBinding:
    prefix: --interest
- id: in_no_defrag
  doc: "DO NOT Realign gene families to link fragments with\ntheir non-fragmented\
    \ gene family. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no_defrag
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.07_PID1219)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_basename
  doc: 'basename for the output file (default: pangenome)'
  type: File?
  outputBinding:
    glob: $(inputs.in_basename)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- panrgp
