class: CommandLineTool
id: nullarbor.pl.cwl
inputs:
- id: name
  doc: Job name
  type: string
  inputBinding:
    prefix: --name
- id: ref
  doc: Reference file in FASTA or GBK format
  type: File
  inputBinding:
    prefix: --ref
- id: input
  doc: 'Input TSV file with format:  | Isolate_ID | R1.fq.gz | R2.fq.gz |'
  type: File
  inputBinding:
    prefix: --input
- id: outdir
  doc: Output folder
  type: string
  inputBinding:
    prefix: --outdir
- id: mode
  doc: 'Run mode: [all] preview'
  type: string
  inputBinding:
    prefix: --mode
- id: cpus
  doc: Maximum number of CPUs to use in total (8)
  type: long
  inputBinding:
    prefix: --cpus
- id: force
  doc: Overwrite --outdir (useful for adding samples to existing analysis)
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: No screen output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: More screen output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: check
  doc: Check dependencies and exit
  type: boolean
  inputBinding:
    prefix: --check
- id: run
  doc: Immediately launch Makefile
  type: boolean
  inputBinding:
    prefix: --run
- id: conf
  doc: Config file (/tmp/tmp4_kd8c4_/bin/../conf/nullarbor.conf)
  type: File
  inputBinding:
    prefix: --conf
- id: g_code
  doc: Genetic code for prokka (11)
  type: long
  inputBinding:
    prefix: --gcode
- id: trim
  doc: Trim reads of adaptors (0)
  type: boolean
  inputBinding:
    prefix: --trim
- id: mlst
  doc: Force this MLST scheme (AUTO)
  type: string
  inputBinding:
    prefix: --mlst
- id: min_ctg
  doc: Minimum contig length for Prokka and Roary
  type: string
  inputBinding:
    prefix: --minctg
- id: prefill
  doc: Use precomputed data as per --conf file. Use --no-prefill to override.
  type: boolean
  inputBinding:
    prefix: --prefill
- id: link_cmd
  doc: "'CMD'       Command to symlink/copy FASTQ files into --outdir ('ln -s -f')"
  type: boolean
  inputBinding:
    prefix: --link-cmd
- id: snippy_opt
  doc: Options to pass to snippy eg. '--mincov 10 --ram 32' ()
  type: string
  inputBinding:
    prefix: --snippy_opt
- id: roar_y_opt
  doc: Options to pass to roary eg. '-iv 1.75 -s -cd 97' ()
  type: string
  inputBinding:
    prefix: --roary_opt
- id: mask
  doc: "| auto      Mask core SNPS in these regions or 'auto' ()"
  type: string
  inputBinding:
    prefix: --mask
- id: auto
  doc: Be lazy and guess --name,--ref,--input,--outdir,--mask
  type: boolean
  inputBinding:
    prefix: --auto
- id: assembler
  doc: 'Assembler to use: megahit shovill skesa skesa_fast spades (skesa)'
  type: string
  inputBinding:
    prefix: --assembler
- id: assembler_opt
  doc: Extra assembler options to pass ()
  type: string
  inputBinding:
    prefix: --assembler-opt
- id: tree_builder
  doc: 'Tree-builder to use: fasttree iqtree iqtree_fast iqtree_slow (iqtree_fast)'
  type: string
  inputBinding:
    prefix: --treebuilder
- id: tree_builder_opt
  doc: Extra tree-builder options to pass ()
  type: string
  inputBinding:
    prefix: --treebuilder-opt
- id: tax_one_r
  doc: 'Species ID tool to use: centrifuge kraken kraken2 (kraken)'
  type: string
  inputBinding:
    prefix: --taxoner
- id: tax_one_r_opt
  doc: Extra species ID builder options to pass ()
  type: string
  inputBinding:
    prefix: --taxoner-opt
- id: annotator
  doc: 'Genome annotator to use: prokka_fast (prokka_fast)'
  type: string
  inputBinding:
    prefix: --annotator
- id: annotator_opt
  doc: Extra annotator options to pass ()
  type: string
  inputBinding:
    prefix: --annotator-opt
outputs: []
cwlVersion: v1.1
baseCommand:
- nullarbor.pl
