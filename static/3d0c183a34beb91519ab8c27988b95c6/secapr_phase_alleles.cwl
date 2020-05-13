class: CommandLineTool
id: secapr_phase_alleles.cwl
inputs:
- id: input
  doc: Call the folder that contains the results of the reference based assembly (output
    of reference_assembly function, containing the bam-files).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory where results will be safed.
  type: string
  inputBinding:
    prefix: --output
- id: min_coverage
  doc: Set the minimum read coverage. Only positions that are covered by this number
    of reads will be called in the consensus sequence, otherwise the program will
    add an ambiguity at this position.
  type: long
  inputBinding:
    prefix: --min_coverage
- id: reference
  doc: Provide the reference that was used for read-mapping. If you used the alignment-consensus
    method, provide the joined_fasta_library.fasta which is found in the reference_seqs
    folder within the reference-assembly output.
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- phase_alleles
