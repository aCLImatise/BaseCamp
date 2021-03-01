class: CommandLineTool
id: bam2nuc.cwl
inputs:
- id: in_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_genome_folder
  doc: "Enter the genome folder you wish to use to extract sequences from (full path\
    \ only). Accepted\nformats are FastA files ending with '.fa' or '.fasta', or their\
    \ gzipped versions (ending in .gz).\nSpecifying a genome folder path is mandatory."
  type: File?
  inputBinding:
    prefix: --genome_folder
- id: in_sam_tools_path
  doc: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not\
    \ need to be specified\nexplicitly if Samtools is in the PATH already"
  type: boolean?
  inputBinding:
    prefix: --samtools_path
- id: in_genomic_composition_only
  doc: "Only calculate and extract the genomic sequence composition and exit thereafter.\
    \ This option will\nattempt to write the genomic composition table 'genomic_nucleotide_frequencies.txt'\
    \ to the genome\nfolder or to the output directory instead if that doesn't succeed."
  type: Directory?
  inputBinding:
    prefix: --genomic_composition_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir)
- id: out_genomic_composition_only
  doc: "Only calculate and extract the genomic sequence composition and exit thereafter.\
    \ This option will\nattempt to write the genomic composition table 'genomic_nucleotide_frequencies.txt'\
    \ to the genome\nfolder or to the output directory instead if that doesn't succeed."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_genomic_composition_only)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bismark:0.23.0--0
cwlVersion: v1.1
baseCommand:
- bam2nuc
