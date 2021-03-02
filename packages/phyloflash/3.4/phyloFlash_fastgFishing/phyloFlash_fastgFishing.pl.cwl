class: CommandLineTool
id: phyloFlash_fastgFishing.pl.cwl
inputs:
- id: in_fast_g
  doc: "Input Fastg file from Megahit or Spades. NB: The de facto Fastg\nformat used\
    \ by these programs differs from the Fastg standard,\nas described in the Bandage\
    \ documentation."
  type: File?
  inputBinding:
    prefix: --fastg
- id: in_fast_a
  doc: "Input Fasta file, to convert Fastg sequence identifiers to\ncorresponding\
    \ Fasta sequence IDs.\nIf using MEGAHIT, this is the *.contigs.fa file. For SPAdes\
    \ this\nis either the scaffolds or contigs file (after repeat\nresolution)."
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_paths
  doc: "Input Paths file, to convert EDGE to NODE identifiers, if using\nSPAdes assembler."
  type: File?
  inputBinding:
    prefix: --paths
- id: in_assembler
  doc: "Assembler used. Either \"megahit\" or \"spades\".\nDefault: 'megahit'"
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_compare_ssu
  doc: "If a targeted assembly of SSU rRNA has already been performed\nfor this library,\
    \ compare the sequences to those extracted from\nthe metagenome assembly by barrnap.\n\
    The sequences can be supplied either as a Fasta flie (option\n--compare-ssu) or\
    \ as a phyloFlash tar.gz archive (option\n--compare-zip).\nDefault: None."
  type: File?
  inputBinding:
    prefix: --compare-ssu
- id: in_out
  doc: "Output file name prefix\nDefault: 'test'"
  type: File?
  inputBinding:
    prefix: --out
- id: in_cluster_only
  doc: "Do not search for SSU rRNA sequences, instead only report all\nconnected contig\
    \ clusters above length threshold, regardless of\nwhether they have SSU rRNA or\
    \ not\nDefault: Off"
  type: boolean?
  inputBinding:
    prefix: --clusteronly
- id: in_cut_off
  doc: "Minimum total sequence length of contig cluster to be reported\n(Default:\
    \ 100000)"
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_min_ssu_frac
  doc: "Minimum fraction of SSU sequence to report (parameter passed to\nthe '--reject'\
    \ option in Barrnap)\nDefault: 0.2"
  type: long?
  inputBinding:
    prefix: --min-SSU-frac
- id: in_out_fast_a
  doc: "Logical: Output Fasta files for clusters with total length above\ncutoff?\n\
    Default: No"
  type: boolean?
  inputBinding:
    prefix: --outfasta
- id: in_cpus
  doc: "Number of CPUs to use for Barrnap rRNA prediction\nDefault: 8"
  type: long?
  inputBinding:
    prefix: --CPUs
- id: in_bar_nap_path
  doc: "Path to barrnap executable\nDefault: Use version bundled with phyloFlash"
  type: File?
  inputBinding:
    prefix: --barnap-path
- id: in_man
  doc: Manual page
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file name prefix\nDefault: 'test'"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyloflash:3.4--0
cwlVersion: v1.1
baseCommand:
- phyloFlash_fastgFishing.pl
