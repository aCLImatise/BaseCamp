class: CommandLineTool
id: createAugustusJoblist.pl.cwl
inputs:
- id: in_sequences
  doc: "input sequences, format: each line contains one sequence including the full\
    \ path and its size, e.g.\n/cluster/data/panTro2/1/chr1.fa    1       229974691\n\
    /cluster/data/panTro2/1/chr1_random        1       9420409\n/cluster/data/panTro2/2/chr2a\
    \      1       114460064\nor\n/cluster/data/panTro2/1/chr1_random        /hints/chr1_random\
    \      1       9420409\n/cluster/data/panTro2/2/chr2a      /hints/chr2a    1 \
    \      114460064"
  type: long
  inputBinding:
    prefix: --sequences
- id: in_output_dir
  doc: directory, in which later the AUGUSTUS output will be written.
  type: Directory
  inputBinding:
    prefix: --outputdir
- id: in_command
  doc: AUGUSTUS command, e.g. "augustus --species=human --maxDNAPieceSize=600000".
  type: long
  inputBinding:
    prefix: --command
- id: in_job_list
  doc: filename with list of jobs as given to parasol.
  type: File
  inputBinding:
    prefix: --joblist
- id: in_chunksize
  doc: chunk size. Each sequence is (imaginarily) cut into chunks of this size
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_overlap
  doc: overlap. Neighboring chunks overlap by this number of bases.
  type: long
  inputBinding:
    prefix: --overlap
- id: in_padding
  doc: padding on both sides (default 0).
  type: long
  inputBinding:
    prefix: --padding
- id: in_error_dir
  doc: directory, in which later the AUGUSTUS error messages will be written.
  type: Directory
  inputBinding:
    prefix: --errordir
- id: in_check
  doc: insert parasol input/output checks.
  type: boolean
  inputBinding:
    prefix: --check
- id: in_wrap
  doc: have each job in a separate file, preceded by command s.
  type: File
  inputBinding:
    prefix: --wrap
- id: in_job_prefix
  doc: 'prefix of job name (default: "job.")'
  type: string
  inputBinding:
    prefix: --jobprefix
- id: in_partition_hints
  doc: "partition hints files according to genomic locus of single augustus runs,\n\
    add a command to the augustus job that will create and delete this hints file\n\
    in the output directory of the augustus job. This option also will automatically\n\
    delete empty error files of augustus.\n"
  type: File
  inputBinding:
    prefix: --partitionHints
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: directory, in which later the AUGUSTUS output will be written.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_partition_hints
  doc: "partition hints files according to genomic locus of single augustus runs,\n\
    add a command to the augustus job that will create and delete this hints file\n\
    in the output directory of the augustus job. This option also will automatically\n\
    delete empty error files of augustus.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_partition_hints)
cwlVersion: v1.1
baseCommand:
- createAugustusJoblist.pl
