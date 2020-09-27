class: CommandLineTool
id: nullarbor.pl.cwl
inputs:
- id: in_name
  doc: Job name
  type: string
  inputBinding:
    prefix: --name
- id: in_ref
  doc: Reference file in FASTA or GBK format
  type: File
  inputBinding:
    prefix: --ref
- id: in_input
  doc: 'Input TSV file with format:  | Isolate_ID | R1.fq.gz | R2.fq.gz |'
  type: File
  inputBinding:
    prefix: --input
- id: in_outdir
  doc: Output folder
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_mode
  doc: 'Run mode: [all] preview'
  type: string
  inputBinding:
    prefix: --mode
- id: in_cpus
  doc: Maximum number of CPUs to use in total (1)
  type: long
  inputBinding:
    prefix: --cpus
- id: in_force
  doc: Overwrite --outdir (useful for adding samples to existing analysis)
  type: boolean
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: No screen output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: More screen output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_check
  doc: Check dependencies and exit
  type: boolean
  inputBinding:
    prefix: --check
- id: in_run
  doc: Immediately launch Makefile
  type: boolean
  inputBinding:
    prefix: --run
- id: in_conf
  doc: Config file (/usr/local/bin/../conf/nullarbor.conf)
  type: File
  inputBinding:
    prefix: --conf
- id: in_g_code
  doc: Genetic code for prokka (11)
  type: long
  inputBinding:
    prefix: --gcode
- id: in_trim
  doc: Trim reads of adaptors (0)
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_mlst
  doc: Force this MLST scheme (AUTO)
  type: string
  inputBinding:
    prefix: --mlst
- id: in_min_ctg
  doc: Minimum contig length for Prokka and Roary
  type: long
  inputBinding:
    prefix: --minctg
- id: in_prefill
  doc: Use precomputed data as per --conf file. Use --no-prefill to override.
  type: boolean
  inputBinding:
    prefix: --prefill
- id: in_link_cmd
  doc: "'CMD'       Command to symlink/copy FASTQ files into --outdir ('ln -s -f')"
  type: boolean
  inputBinding:
    prefix: --link-cmd
- id: in_snippy_opt
  doc: Options to pass to snippy eg. '--mincov 10 --ram 32' ()
  type: long
  inputBinding:
    prefix: --snippy_opt
- id: in_roar_y_opt
  doc: Options to pass to roary eg. '-iv 1.75 -s -cd 97' ()
  type: double
  inputBinding:
    prefix: --roary_opt
- id: in_mask
  doc: "| auto      Mask core SNPS in these regions or 'auto' ()"
  type: string
  inputBinding:
    prefix: --mask
- id: in_auto
  doc: Be lazy and guess --name,--ref,--input,--outdir,--mask
  type: boolean
  inputBinding:
    prefix: --auto
- id: in_assembler
  doc: 'Assembler to use: megahit shovill skesa skesa_fast spades (skesa)'
  type: string
  inputBinding:
    prefix: --assembler
- id: in_assembler_opt
  doc: Extra assembler options to pass ()
  type: string
  inputBinding:
    prefix: --assembler-opt
- id: in_tree_builder
  doc: 'Tree-builder to use: fasttree iqtree iqtree_fast iqtree_slow (iqtree_fast)'
  type: string
  inputBinding:
    prefix: --treebuilder
- id: in_tree_builder_opt
  doc: Extra tree-builder options to pass ()
  type: string
  inputBinding:
    prefix: --treebuilder-opt
- id: in_tax_one_r
  doc: 'Species ID tool to use: centrifuge kraken kraken2 (kraken)'
  type: long
  inputBinding:
    prefix: --taxoner
- id: in_tax_one_r_opt
  doc: Extra species ID builder options to pass ()
  type: string
  inputBinding:
    prefix: --taxoner-opt
- id: in_annotator
  doc: 'Genome annotator to use: prokka_fast (prokka_fast)'
  type: string
  inputBinding:
    prefix: --annotator
- id: in_annotator_opt
  doc: Extra annotator options to pass ()
  type: string
  inputBinding:
    prefix: --annotator-opt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output folder
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- nullarbor.pl
