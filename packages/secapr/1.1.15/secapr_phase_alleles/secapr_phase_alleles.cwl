class: CommandLineTool
id: secapr_phase_alleles.cwl
inputs:
- id: in_input
  doc: "Call the folder that contains the results of the\nreference based assembly\
    \ (output of reference_assembly\nfunction, containing the bam-files)."
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory where results will be safed.
  type: Directory
  inputBinding:
    prefix: --output
- id: in_min_coverage
  doc: "Set the minimum read coverage. Only positions that are\ncovered by this number\
    \ of reads will be called in the\nconsensus sequence, otherwise the program will\
    \ add an\nambiguity at this position."
  type: long
  inputBinding:
    prefix: --min_coverage
- id: in_provide_reference_used
  doc: "Provide the reference that was used for read-mapping.\nIf you used the alignment-consensus\
    \ method, provide\nthe joined_fasta_library.fasta which is found in the\nreference_seqs\
    \ folder within the reference-assembly\noutput.\n"
  type: Directory
  inputBinding:
    prefix: --reference
- id: in_phase_remapped_reads
  doc: Phase remapped reads form reference-based assembly into two separate alleles.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: "Call the folder that contains the results of the\nreference based assembly\
    \ (output of reference_assembly\nfunction, containing the bam-files)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_input)
- id: out_output
  doc: The output directory where results will be safed.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_provide_reference_used
  doc: "Provide the reference that was used for read-mapping.\nIf you used the alignment-consensus\
    \ method, provide\nthe joined_fasta_library.fasta which is found in the\nreference_seqs\
    \ folder within the reference-assembly\noutput.\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_provide_reference_used)
cwlVersion: v1.1
baseCommand:
- secapr
- phase_alleles
