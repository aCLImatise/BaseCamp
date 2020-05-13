class: CommandLineTool
id: map_fastq.pl.cwl
inputs:
- id: p
  doc: '<#> (Number of cpus per instance, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: x
  doc: (path to index to use for mapping)
  type: File
  inputBinding:
    prefix: -x
- id: pe
  doc: (if only 1st read file is specified, this will look for 2nd read and do PE
    alignment)
  type: boolean
  inputBinding:
    prefix: -pe
- id: suffix
  doc: <suffix to apply to mapped files, default genome/program>
  type: boolean
  inputBinding:
    prefix: -suffix
- id: bowtie2
  doc: (map with bowtie2)
  type: boolean
  inputBinding:
    prefix: -bowtie2
- id: bowtie
  doc: (map with bowtie, add "-C" if using colorspace)
  type: boolean
  inputBinding:
    prefix: -bowtie
- id: bwa
  doc: (map with bwa mem)
  type: boolean
  inputBinding:
    prefix: -bwa
- id: hisat2
  doc: (map with hisat2)
  type: boolean
  inputBinding:
    prefix: -hisat2
- id: star
  doc: (map with STAR) -path <path-to-program-file> (executable file to run if not
    in path/diff name)
  type: boolean
  inputBinding:
    prefix: -star
- id: un
  doc: (will output unaligned reads)
  type: boolean
  inputBinding:
    prefix: -un
- id: bam
  doc: (convert output files from sam to bam)
  type: boolean
  inputBinding:
    prefix: -bam
- id: local
  doc: '(local alignment, default: global/end-to-end)'
  type: boolean
  inputBinding:
    prefix: --local
- id: f
  doc: (Input is FASTA files, default expects FASTQ)
  type: boolean
  inputBinding:
    prefix: -f
- id: pass
  doc: '"..." (need to include quotes)'
  type: boolean
  inputBinding:
    prefix: -pass
- id: show_errors
  doc: (don't dump subprogram stderr to /dev/null)
  type: boolean
  inputBinding:
    prefix: -showErrors
outputs: []
cwlVersion: v1.1
baseCommand:
- map-fastq.pl
