class: CommandLineTool
id: fragSim.cwl
inputs:
- id: in__fragments_default
  doc: '[number]                        Generate [number] fragments (default: 10)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_comp
  doc: '[file]                          Base composition for the fragments (default
    none)'
  type: boolean?
  inputBinding:
    prefix: --comp
- id: in_dist
  doc: "[file]                          Distance from ends to consider  (default:\
    \ 1)\nif this is not specified, the base composition\nwill only reflect the chromosome\
    \ file used"
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_norev
  doc: 'Do not reverse complement (default: rev. comp half of seqs.)'
  type: boolean?
  inputBinding:
    prefix: --norev
- id: in_case
  doc: 'Do not set the sequence to upper-case (default: uppercase the seqs.)'
  type: boolean?
  inputBinding:
    prefix: --case
- id: in_write_output_bam
  doc: '[bam out]                       Write output as a BAM file (default: fasta
    in stdout)'
  type: File?
  inputBinding:
    prefix: -b
- id: in_write_output_zipped
  doc: '[fasta out]                     Write output as a zipped fasta (default: fasta
    in stdout)'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_produce_uncompressed_bam
  doc: Produce uncompressed BAM (good for unix pipe)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_tag
  doc: '[tag]                           Append this string to deflines or BAM tags
    (Default:  not on/not used)'
  type: boolean?
  inputBinding:
    prefix: -tag
- id: in_tmp
  doc: '[tmp dir]                       Use this directory as the temporary dir for
    zipped files (default:  /tmp/)'
  type: boolean?
  inputBinding:
    prefix: -tmp
- id: in_uniq
  doc: "Make sure that the fragment names are unique by appending a suffix (default:\
    \  not on/not used)\nnote: this might not be practical for large datasets"
  type: boolean?
  inputBinding:
    prefix: -uniq
- id: in_minimum_fragments_length
  doc: '[length]                        Minimum fragments length < (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maximum_fragments_length
  doc: '[length]                        Maximum fragments length > (default: 1000)'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_generate_fragments_fixed
  doc: '[length]                        Generate fragments of fixed length  (default:
    20)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_open_file_length
  doc: '[file]                          Open file with size distribution (one fragment
    length per line)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_open_file_size
  doc: "[file]                          Open file with size frequency in the following\
    \ format:\nlength[TAB]freq ex:\n40      0.0525\n41      0.0491\n..."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_loc
  doc: '[file]                  Location for lognormal distribution (default none)'
  type: boolean?
  inputBinding:
    prefix: --loc
- id: in_scale
  doc: '[file]                  Scale for lognormal distribution      (default none)'
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_gc
  doc: '[gc bias]                       Use GC bias factor  (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -gc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_bam
  doc: '[bam out]                       Write output as a BAM file (default: fasta
    in stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_write_output_bam)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0
cwlVersion: v1.1
baseCommand:
- fragSim
