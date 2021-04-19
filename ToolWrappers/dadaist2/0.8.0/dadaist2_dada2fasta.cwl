class: CommandLineTool
id: dadaist2_dada2fasta.cwl
inputs:
- id: in_dadaist_two_dada_two_fast_a
  doc: -i dada2table.tsv -o table.tsv -r repseqs.fasta
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- dadaist2-dada2fasta
