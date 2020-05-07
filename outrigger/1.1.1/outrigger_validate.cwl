class: CommandLineTool
id: outrigger_validate.cwl
inputs:
- id: fast_a
  doc: Location of the genome fasta file for which to get the splice site sequences
    from
  type: string
  inputBinding:
    prefix: --fasta
- id: genome
  doc: Either the genome name (e.g. "mm10" or "hg19") or location of the genome chromosome
    sizes file for "bedtools flank" to make sure we do not accidentally ask for genome
    positions that are outside of the defined range
  type: string
  inputBinding:
    prefix: --genome
- id: index
  doc: Name of the folder where you saved the output from "outrigger index" (default
    is ./outrigger_output/index, which is relative to the directory where you called
    this program, assuming you have called "outrigger psi" in the same folder as you
    called "outrigger index").
  type: string
  inputBinding:
    prefix: --index
- id: output
  doc: Name of the folder where you saved the output from "outrigger index" (default
    is ./outrigger_output, which is relative to the directory where you called the
    program).
  type: string
  inputBinding:
    prefix: --output
- id: valid_splice_sites
  doc: The intron-definition based splice sites that are allowed in the data, which
    is in the format 5'/3' of the intron, and separated by commas for different types.
    Default is GT/AG,GC/AG,AT/AC, which are the major and minor spliceosome splice
    sites in mammalian systems.
  type: string
  inputBinding:
    prefix: --valid-splice-sites
- id: debug
  doc: If given, print debugging logging information to standard out
  type: boolean
  inputBinding:
    prefix: --debug
- id: low_memory
  doc: If set, then use a smaller memory footprint. By default, this is off.
  type: boolean
  inputBinding:
    prefix: --low-memory
outputs: []
cwlVersion: v1.1
baseCommand:
- outrigger
- validate
