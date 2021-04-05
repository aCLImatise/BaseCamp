class: CommandLineTool
id: xtea_long.cwl
inputs:
- id: in_id
  doc: sample id list file
  type: File?
  inputBinding:
    prefix: --id
- id: in_par
  doc: parameter file
  type: File?
  inputBinding:
    prefix: --par
- id: in_bam
  doc: Input bam file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_cores
  doc: number of cores
  type: long?
  inputBinding:
    prefix: --cores
- id: in_memory
  doc: Memory limit in GB
  type: string?
  inputBinding:
    prefix: --memory
- id: in_partition
  doc: Which queue to run the job
  type: string?
  inputBinding:
    prefix: --partition
- id: in_time
  doc: Time limit
  type: string?
  inputBinding:
    prefix: --time
- id: in_lsf
  doc: Indiates submit to LSF system
  type: boolean?
  inputBinding:
    prefix: --lsf
- id: in_slur_m
  doc: Indiates submit to slurm system
  type: boolean?
  inputBinding:
    prefix: --slurm
- id: in_cmd
  doc: Generate asm command script (for cluster)
  type: boolean?
  inputBinding:
    prefix: --cmd
- id: in_complex
  doc: Call complex events (TE promoted SV)
  type: boolean?
  inputBinding:
    prefix: --complex
- id: in_mei_no_asm
  doc: Call MEI only without asm
  type: boolean?
  inputBinding:
    prefix: --mei_no_asm
- id: in_clean
  doc: Clean the intermediate files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_fast
  doc: This is the fast mode, which may sacrifice the
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_ref
  doc: reference genome
  type: string?
  inputBinding:
    prefix: --ref
- id: in_gene
  doc: Gene annotation file
  type: File?
  inputBinding:
    prefix: --gene
- id: in_win
  doc: peak window size
  type: long?
  inputBinding:
    prefix: --win
- id: in_x_tea
  doc: xTEA folder
  type: Directory?
  inputBinding:
    prefix: --xtea
- id: in_rep
  doc: Repeat library folder
  type: Directory?
  inputBinding:
    prefix: --rep
- id: in_rms_k
  doc: RepeatMasker output on the reference
  type: string?
  inputBinding:
    prefix: --rmsk
- id: in_cns
  doc: repeat consensus folder
  type: File?
  inputBinding:
    prefix: --cns
- id: in_ref_sva
  doc: reference SVA copies
  type: File?
  inputBinding:
    prefix: --ref_sva
- id: in_min
  doc: Minimum copy length for find polymorhpic copies
  type: long?
  inputBinding:
    prefix: --min
- id: in_flag
  doc: "Flag indicates which step to run (1-clip, 2-asm,\n4-ghost, 8-classification,\
    \ 16-clean)"
  type: long?
  inputBinding:
    prefix: --flag
- id: in_type
  doc: "Type of repeats working on (1-LINE1, 2-Alu, 4-SVA,\n8-HERV, 16-Mitochondria)"
  type: long?
  inputBinding:
    prefix: --type
- id: in_output
  doc: "The output file\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_sensitivity
  doc: -p WFOLDER, --path=WFOLDER
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/xtea:0.1.6--0
cwlVersion: v1.1
baseCommand:
- xtea_long
