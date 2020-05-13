class: CommandLineTool
id: flye.cwl
inputs:
- id: pac_bio_raw
  doc: PacBio raw reads
  type: File[]
  inputBinding:
    prefix: --pacbio-raw
- id: pac_bio_corr
  doc: PacBio corrected reads
  type: File[]
  inputBinding:
    prefix: --pacbio-corr
- id: pac_bio_hifi
  doc: PacBio HiFi reads
  type: File[]
  inputBinding:
    prefix: --pacbio-hifi
- id: nano_raw
  doc: ONT raw reads
  type: File[]
  inputBinding:
    prefix: --nano-raw
- id: nano_corr
  doc: ONT corrected reads
  type: File[]
  inputBinding:
    prefix: --nano-corr
- id: subassemblies
  doc: high-quality contigs input
  type: File[]
  inputBinding:
    prefix: --subassemblies
- id: genome_size
  doc: estimated genome size (for example, 5m or 2.6g)
  type: long
  inputBinding:
    prefix: --genome-size
- id: out_dir
  doc: Output directory
  type: File
  inputBinding:
    prefix: --out-dir
- id: threads
  doc: number of parallel threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: iterations
  doc: number of polishing iterations [1]
  type: long
  inputBinding:
    prefix: --iterations
- id: min_overlap
  doc: minimum overlap between reads [auto]
  type: long
  inputBinding:
    prefix: --min-overlap
- id: asm_coverage
  doc: reduced coverage for initial disjointig assembly [not set]
  type: long
  inputBinding:
    prefix: --asm-coverage
- id: plasmids
  doc: rescue short unassembled plasmids
  type: boolean
  inputBinding:
    prefix: --plasmids
- id: meta
  doc: metagenome / uneven coverage mode
  type: boolean
  inputBinding:
    prefix: --meta
- id: keep_haplotypes
  doc: do not collapse alternative haplotypes
  type: boolean
  inputBinding:
    prefix: --keep-haplotypes
- id: trestle
  doc: enable Trestle [disabled]
  type: boolean
  inputBinding:
    prefix: --trestle
- id: polish_target
  doc: run polisher on the target sequence
  type: File
  inputBinding:
    prefix: --polish-target
- id: resume
  doc: resume from the last completed stage
  type: boolean
  inputBinding:
    prefix: --resume
- id: resume_from
  doc: resume from a custom stage
  type: string
  inputBinding:
    prefix: --resume-from
- id: stop_after
  doc: stop after the specified stage completed
  type: string
  inputBinding:
    prefix: --stop-after
- id: debug
  doc: enable debug output
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- flye
