class: CommandLineTool
id: ../../../fragSim.cwl
inputs:
- id: _fragments_default
  doc: '[number]                        Generate [number] fragments (default: 10)'
  type: boolean
  inputBinding:
    prefix: -n
- id: comp
  doc: '[file]                          Base composition for the fragments (default
    none)'
  type: boolean
  inputBinding:
    prefix: --comp
- id: dist
  doc: '[file]                          Distance from ends to consider  (default:
    1) if this is not specified, the base composition will only reflect the chromosome
    file used'
  type: boolean
  inputBinding:
    prefix: --dist
- id: norev
  doc: 'Do not reverse complement (default: rev. comp half of seqs.)'
  type: boolean
  inputBinding:
    prefix: --norev
- id: case
  doc: 'Do not set the sequence to upper-case (default: uppercase the seqs.)'
  type: boolean
  inputBinding:
    prefix: --case
- id: write_output_bam
  doc: '[bam out]                       Write output as a BAM file (default: fasta
    in stdout)'
  type: boolean
  inputBinding:
    prefix: -b
- id: write_output_zipped
  doc: '[fasta out]                     Write output as a zipped fasta (default: fasta
    in stdout)'
  type: boolean
  inputBinding:
    prefix: -o
- id: produce_uncompressed_bam
  doc: Produce uncompressed BAM (good for unix pipe)
  type: boolean
  inputBinding:
    prefix: -u
- id: tag
  doc: '[tag]                           Append this string to deflines or BAM tags
    (Default:  not on/not used)'
  type: boolean
  inputBinding:
    prefix: -tag
- id: tmp
  doc: '[tmp dir]                       Use this directory as the temporary dir for
    zipped files (default:  /tmp/)'
  type: boolean
  inputBinding:
    prefix: -tmp
- id: uniq
  doc: 'Make sure that the fragment names are unique by appending a suffix (default:  not
    on/not used) note: this might not be practical for large datasets'
  type: boolean
  inputBinding:
    prefix: -uniq
- id: minimum_fragments_length
  doc: '[length]                        Minimum fragments length < (default: 0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: maximum_fragments_length
  doc: '[length]                        Maximum fragments length > (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -M
- id: loc
  doc: '[file]                  Location for lognormal distribution (default none)'
  type: boolean
  inputBinding:
    prefix: --loc
- id: scale
  doc: '[file]                  Scale for lognormal distribution      (default none)'
  type: boolean
  inputBinding:
    prefix: --scale
- id: gc
  doc: '[gc bias]                       Use GC bias factor  (default: 0)'
  type: boolean
  inputBinding:
    prefix: -gc
outputs: []
cwlVersion: v1.1
baseCommand:
- fragSim
