class: CommandLineTool
id: homGeneMapping.cwl
inputs:
- id: in_hal_file
  doc: input hal file
  type: File?
  inputBinding:
    prefix: --halfile
- id: in_gt_fs
  doc: "a text file containing the locations of the input gene files\nand optionally\
    \ the hints files (both in GTF format).\nThe file is formatted as follows:\nname_of_genome_1\
    \  path/to/genefile/of/genome_1  path/to/hintsfile/of/genome_1\nname_of_genome_2\
    \  path/to/genefile/of/genome_2  path/to/hintsfile/of/genome_2\n...\nname_of_genome_N\
    \  path/to/genefile/of/genome_N  path/to/hintsfile/of/genome_N"
  type: File?
  inputBinding:
    prefix: --gtfs
- id: in_cpus
  doc: 'N is the number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_no_dupes
  doc: 'do not map between duplications in hal graph. (default: off)'
  type: boolean?
  inputBinding:
    prefix: --noDupes
- id: in_details
  doc: 'print detailed output (default: off)'
  type: boolean?
  inputBinding:
    prefix: --details
- id: in_hal_lift_over_exec_dir
  doc: "Directory that contains the executable halLiftover\nIf not specified it must\
    \ be in $PATH environment variable."
  type: File?
  inputBinding:
    prefix: --halLiftover_exec_dir
- id: in_unmapped
  doc: "print a GTF attribute with a list of all genomes, that are not aligned to\
    \ the\ncorresponding gene feature, e.g. hgm_unmapped \"1,4,5\"; (default; off)"
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_tmpdir
  doc: a temporary file directory that stores lifted over files. (default 'tmp/' in
    current directory)
  type: File?
  inputBinding:
    prefix: --tmpdir
- id: in_outdir
  doc: 'file directory that stores output gene files. (default: current directory)'
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_print_homologs
  doc: "prints disjunct sets of homologous transcripts to FILE, e.g.\n# 0     dana\n\
    # 1     dere\n# 2     dgri\n# 3     dmel\n# 4     dmoj\n# 5     dper\n(0,jg4139.t1)\
    \ (0,jg4140.t1) (1,jg7797.t1) (2,jg3247.t1) (4,jg6720.t1) (5,jg313.t1)\n(1,jg14269.t1)\
    \ (3,jg89.t1) (5,jg290.t1)\n...\nTwo transcripts are in the same set, if all their\
    \ exons/introns are homologs and their are\nno additional exons/introns.\nThis\
    \ option requires the Boost C++ Library"
  type: File?
  inputBinding:
    prefix: --printHomologs
- id: in_dbaccess
  doc: "retrieve hints from an SQLite database. In order to set up a database and\
    \ populate it with hints\na separate tool 'load2sqlitedb' is provided. For more\
    \ information, see the documentation in\nREADME-cgp.txt (section 8a+b) in the\
    \ Augustus package. If both a database and hint files in 'gtffilenames.tbl'\n\
    are specified, hints are retrieved from both sources.\nThis option requires the\
    \ SQLite3 library."
  type: long?
  inputBinding:
    prefix: --dbaccess
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'file directory that stores output gene files. (default: current directory)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- homGeneMapping
