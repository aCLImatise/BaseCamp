class: CommandLineTool
id: ViReMa.py.cwl
inputs:
- id: virus_index
  doc: Virus genome reference index key. e.g. FHV_Genome
  type: string
  inputBinding:
    position: 0
- id: input_data
  doc: File containing single reads in FASTQ format
  type: string
  inputBinding:
    position: 1
- id: output_data
  doc: Destination file for results
  type: string
  inputBinding:
    position: 2
- id: host_index
  doc: Host genome reference index key, e.g. d_melanogaster_fb5_22
  type: string
  inputBinding:
    prefix: --Host_Index
- id: n
  doc: Number of mismatches tolerated in mapped seed and in mapped segments. Default
    is 1.
  type: string
  inputBinding:
    prefix: --N
- id: seed
  doc: Number of nucleotides in the Seed region. Default is 25.
  type: string
  inputBinding:
    prefix: --Seed
- id: three_pad
  doc: Number of nucleotides not allowed to have mismatches at 3' end of segment.
    Default is 5.
  type: string
  inputBinding:
    prefix: --ThreePad
- id: five_pad
  doc: Number of nucleotides not allowed to have mismatches at 5' end of segment.
    Default is 5.
  type: string
  inputBinding:
    prefix: --FivePad
- id: x
  doc: Number of nucleotides not allowed to have mismatches at 3' end and 5' of segment.
    Overrides seperate ThreePad and FivePad settings. Default is 5.
  type: string
  inputBinding:
    prefix: --X
- id: host_seed
  doc: Number of nucleotides in the Seed region when mapping to the Host Genome. Default
    is same as Seed value.
  type: string
  inputBinding:
    prefix: --Host_Seed
- id: f
  doc: Select '-F' if data is in FASTA format fasta. Default is FASTQ.
  type: boolean
  inputBinding:
    prefix: -F
- id: de_fuzz
  doc: "Choose how to defuzz data: '5' to report at 5' end of fuzzy region, '3' to\
    \ report at 3' end, or '0' to report in centre of fuzzy region. Default is no\
    \ fuzz handling (similar to choosing Right - see Routh et al)."
  type: string
  inputBinding:
    prefix: --Defuzz
- id: max_fuzz
  doc: Select maximum allowed length of fuzzy region. Recombination events with longer
    fuzzy regions will not be reported. Default is Seed Length.
  type: long
  inputBinding:
    prefix: --MaxFuzz
- id: ded_up
  doc: Remove potential PCR duplicates. Default is 'off'.
  type: boolean
  inputBinding:
    prefix: -DeDup
- id: read_names_entry
  doc: Append Read Names contributing to each compiled result. Default is off.
  type: boolean
  inputBinding:
    prefix: -ReadNamesEntry
- id: micro_in_del_length
  doc: Size of MicroInDels - these are common artifacts of cDNA preparation. See Routh
    et al JMB 2012. Default size is 0)
  type: string
  inputBinding:
    prefix: --MicroInDel_Length
- id: compound_handling
  doc: Select this option for compound recombination event mapping (see manual for
    details). Enter number of nucleotides to map (must be less than Seed, and greater
    than number of nts in MicroInDel). Default is off.
  type: string
  inputBinding:
    prefix: --Compound_Handling
- id: output_tag
  doc: Enter a tag name that will be appended to end of each output file.
  type: string
  inputBinding:
    prefix: --Output_Tag
- id: output_dir
  doc: Enter a directory name that all compiled output files will be saved in.
  type: string
  inputBinding:
    prefix: --Output_Dir
- id: p
  doc: Enter number of available processors. Default is 1.
  type: string
  inputBinding:
    prefix: --p
- id: chunk
  doc: Enter number of reads to process together.
  type: string
  inputBinding:
    prefix: --Chunk
- id: aligner
  doc: "Enter Alignment Software: 'bwa', 'bowtie'. Default is bowtie."
  type: string
  inputBinding:
    prefix: --Aligner
- id: no_compile
  doc: Select this option if you do not wish to compile the results file into. Maybe
    useful when combining results from different datasets.
  type: boolean
  inputBinding:
    prefix: -No_Compile
- id: bed
  doc: Output recombination data into BED files.
  type: boolean
  inputBinding:
    prefix: -BED
- id: win
  doc: Select this option if running ViReMa from a Windows/Cygwin shell.
  type: boolean
  inputBinding:
    prefix: -Win
outputs: []
cwlVersion: v1.1
baseCommand:
- ViReMa.py
