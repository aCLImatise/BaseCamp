class: CommandLineTool
id: getAnnoFasta.pl.cwl
inputs:
- id: in_seq_file
  doc: "Input a fasta file with the genomic sequences that AUGUSTUS was run on.\n\
    When this option is given, an additional file with the individual\ncoding exon\
    \ sequences (augustus.cdsexons) is output.\nand a file with the complete mRNA\
    \ including UTRs (augustus.mrna) is output."
  type: File?
  inputBinding:
    prefix: --seqfile
- id: in_chop_cds
  doc: "for incomplete transcripts: cut off bases before first codon.\nThis flag only\
    \ takes effect if coding sequence is not included in the\nAUGUSTUS output.\n"
  type: boolean?
  inputBinding:
    prefix: --chop_cds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- getAnnoFasta.pl
