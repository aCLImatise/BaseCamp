class: CommandLineTool
id: taco_refcomp.cwl
inputs:
- id: in_output_dir
  doc: "Directory for reference comparison output (default:\ntaco_compare)"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_num_processes
  doc: "Run tool in parallel with N processes. (note: each\ncore processes 1 chromosome)\
    \ (default: 1)"
  type: long?
  inputBinding:
    prefix: --num-processes
- id: in_cp_at
  doc: "Run CPAT tool to for coding potential scoring. (CPAT\nfunction currently only\
    \ supports Human, Mouse, and\nZebrafish) (WARNING: The CPAT tool can take over\
    \ an\nhour) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --cpat
- id: in_cp_at_species
  doc: "Select either: human, mouse, zebrafish (default:\nhuman)"
  type: string?
  inputBinding:
    prefix: --cpat-species
- id: in_cp_at_genome
  doc: "Provide a genome fasta for the genome used to produce\nassemblies being compared.\
    \ Required if \"--cpat\" used.\nCPAT uses this to obtain sequence for the provided\n\
    transcripts (default: None)"
  type: string?
  inputBinding:
    prefix: --cpat-genome
- id: in_ref_gtf
  doc: 'Reference GTF file to compare against (default: None)'
  type: File?
  inputBinding:
    prefix: --ref-gtf
- id: in_test_gtf
  doc: "GTF file used for comparison (default: None)\n"
  type: File?
  inputBinding:
    prefix: --test-gtf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Directory for reference comparison output (default:\ntaco_compare)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- taco_refcomp
