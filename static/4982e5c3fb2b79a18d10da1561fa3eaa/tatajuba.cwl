class: CommandLineTool
id: tatajuba.cwl
inputs:
- id: in_paired
  doc: paired end (pairs of) files
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_km_er
  doc: ={2,...,32}            kmer size flanking each side of homopolymer (default=25)
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_minsize
  doc: ={1,...,32}         minimum homopolymer tract length to be compared (default=4)
  type: boolean?
  inputBinding:
    prefix: --minsize
- id: in_min_reads
  doc: minimum number of reads for tract+context to be considered (default=5)
  type: long?
  inputBinding:
    prefix: --minreads
- id: in_max_dist
  doc: maximum distance between kmers of a flanking region to merge them into one
    context (default=1)
  type: long?
  inputBinding:
    prefix: --maxdist
- id: in_leven
  doc: levenshtein distance between flanking regions to merge them into one context
    (after ref genome mapping)
  type: long?
  inputBinding:
    prefix: --leven
- id: in_n_threads
  doc: suggested number of threads (default is to let system decide; I may not honour
    your suggestion btw)
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_gff
  doc: reference genome file in GFF3, preferencially with sequence
  type: long?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: reference genome file in fasta format, if absent from GFF3
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_outdir
  doc: output directory, or 'random' for generating random dir name (default=current
    dir '.')
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory, or 'random' for generating random dir name (default=current
    dir '.')
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tatajuba:1.0.2--h82fb495_0
cwlVersion: v1.1
baseCommand:
- tatajuba
