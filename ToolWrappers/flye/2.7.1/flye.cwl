class: CommandLineTool
id: flye.cwl
inputs:
- id: in_nano_corr
  doc: "| --subassemblies) file1 [file_2 ...]\n--genome-size SIZE --out-dir PATH\n\
    [--threads int] [--iterations int] [--min-overlap int]\n[--meta] [--plasmids]\
    \ [--trestle] [--polish-target]\n[--keep-haplotypes] [--debug] [--version] [--help]\n\
    [--resume] [--resume-from] [--stop-after]"
  type: boolean
  inputBinding:
    prefix: --nano-corr
- id: in_pac_bio_raw
  doc: PacBio raw reads
  type: File[]
  inputBinding:
    prefix: --pacbio-raw
- id: in_pac_bio_corr
  doc: PacBio corrected reads
  type: File[]
  inputBinding:
    prefix: --pacbio-corr
- id: in_pac_bio_hifi
  doc: PacBio HiFi reads
  type: File[]
  inputBinding:
    prefix: --pacbio-hifi
- id: in_nano_raw
  doc: ONT raw reads
  type: File[]
  inputBinding:
    prefix: --nano-raw
- id: in_subassemblies
  doc: high-quality contigs input
  type: File[]
  inputBinding:
    prefix: --subassemblies
- id: in_genome_size
  doc: estimated genome size (for example, 5m or 2.6g)
  type: long
  inputBinding:
    prefix: --genome-size
- id: in_out_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_threads
  doc: number of parallel threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_iterations
  doc: number of polishing iterations [1]
  type: long
  inputBinding:
    prefix: --iterations
- id: in_min_overlap
  doc: minimum overlap between reads [auto]
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_asm_coverage
  doc: "reduced coverage for initial disjointig assembly [not\nset]"
  type: long
  inputBinding:
    prefix: --asm-coverage
- id: in_plasmids
  doc: rescue short unassembled plasmids
  type: boolean
  inputBinding:
    prefix: --plasmids
- id: in_meta
  doc: metagenome / uneven coverage mode
  type: boolean
  inputBinding:
    prefix: --meta
- id: in_keep_haplotypes
  doc: do not collapse alternative haplotypes
  type: boolean
  inputBinding:
    prefix: --keep-haplotypes
- id: in_trestle
  doc: enable Trestle [disabled]
  type: boolean
  inputBinding:
    prefix: --trestle
- id: in_polish_target
  doc: run polisher on the target sequence
  type: File
  inputBinding:
    prefix: --polish-target
- id: in_resume
  doc: resume from the last completed stage
  type: boolean
  inputBinding:
    prefix: --resume
- id: in_resume_from
  doc: resume from a custom stage
  type: string
  inputBinding:
    prefix: --resume-from
- id: in_stop_after
  doc: stop after the specified stage completed
  type: string
  inputBinding:
    prefix: --stop-after
- id: in_debug
  doc: enable debug output
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- flye
