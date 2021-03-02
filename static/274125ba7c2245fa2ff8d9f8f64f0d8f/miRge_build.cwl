class: CommandLineTool
id: miRge_build.cwl
inputs:
- id: in_genome
  doc: genome file in fasta format (.fna, .fasta or .fa) (Required)
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_mature_mir
  doc: mature miRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --mature-mir
- id: in_hp_in_mir
  doc: hairpin miRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --hpin-mir
- id: in_mature_trna
  doc: mature tRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --mature-trna
- id: in_pre_trna
  doc: precursor tRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --pre-trna
- id: in_snorna
  doc: snoRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --snorna
- id: in_rrna
  doc: rRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --rrna
- id: in_ncrna_other
  doc: all other non-coding RNA in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --ncrna-other
- id: in_mrna
  doc: mRNA file in fasta format (Required)
  type: boolean?
  inputBinding:
    prefix: --mrna
- id: in_spike_in
  doc: user defined custom spike-in file in fasta format (Optional)
  type: boolean?
  inputBinding:
    prefix: --spike-in
- id: in_ann_gff
  doc: miRNA annotation gff file (Required)
  type: boolean?
  inputBinding:
    prefix: --ann-gff
- id: in_gen_repeats
  doc: 'the genome repeats file with .gtf extension (Optional: output however enables
    novel miRNA prediction in the miRge3.0 pipeline)'
  type: File?
  inputBinding:
    prefix: --gen-repeats
- id: in_mir_db
  doc: 'name of the database to be used (Options: miRBase, miRGeneDB) (Required)'
  type: boolean?
  inputBinding:
    prefix: --mir-DB
- id: in_organism_name
  doc: 'name of the organism [Note: name should be one word and use "_" as separator
    if necessary] (Required)'
  type: boolean?
  inputBinding:
    prefix: --organism-name
- id: in_threads
  doc: 'the number of processors to use for trimming, qc, and alignment (Default:
    1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_bowtie_path
  doc: path to system's directory containing bowtie binary (Required if bowtie is
    not in the environment path)
  type: boolean?
  inputBinding:
    prefix: --bowtie-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gen_repeats
  doc: 'the genome repeats file with .gtf extension (Optional: output however enables
    novel miRNA prediction in the miRge3.0 pipeline)'
  type: File?
  outputBinding:
    glob: $(inputs.in_gen_repeats)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirge-build:0.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- miRge-build
