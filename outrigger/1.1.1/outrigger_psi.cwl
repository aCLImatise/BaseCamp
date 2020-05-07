class: CommandLineTool
id: outrigger_psi.cwl
inputs:
- id: index
  doc: Name of the folder where you saved the output from "outrigger index" (default
    is ./outrigger_output/index, which is relative to the directory where you called
    this program, assuming you have called "outrigger psi" in the same folder as you
    called "outrigger index")
  type: string
  inputBinding:
    prefix: --index
- id: output
  doc: Name of the folder where you saved the output from "outrigger index" (default
    is ./outrigger_output, which is relative to the directory where you called the
    program). Cannot specify both an --index and --output with "psi"
  type: string
  inputBinding:
    prefix: --output
- id: junction_reads_csv
  doc: Name of the compiled splice junction file to calculate psi scores on. Default
    is the '--output' folder's junctions/reads.csv file. Not required if you specify
    SJ.out.tab files with '--sj-out-tab'
  type: string
  inputBinding:
    prefix: --junction-reads-csv
- id: j
  doc: '[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]
    SJ.out.tab files from STAR aligner output. Not required if you specify a file
    with "--compiled- junction-reads"'
  type: boolean
  inputBinding:
    prefix: -j
- id: b
  doc: '[BAM [BAM ...]], --bam [BAM [BAM ...]] Bam files to use to calculate psi on'
  type: boolean
  inputBinding:
    prefix: -b
- id: min_reads
  doc: Minimum number of reads per junction for calculating Psi (default=10)
  type: long
  inputBinding:
    prefix: --min-reads
- id: method
  doc: How to deal with multiple junctions on an event - take the mean (default) or
    the min? (the other option)
  type: string
  inputBinding:
    prefix: --method
- id: uneven_coverage_multiplier
  doc: If a junction one one side of an exon is bigger than the other side of the
    exon by this amount, (default is 10, so 10x bigger), then do not use this event
  type: string
  inputBinding:
    prefix: --uneven-coverage-multiplier
- id: ignore_multi_mapping
  doc: Applies to STAR SJ.out.tab files only. If this flag is used, then do not include
    reads that mapped to multiple locations in the genome, not uniquely to a locus,
    in the read count for a junction. If inputting "bam" files, then this means that
    reads with a mapping quality (MAPQ) of less than 255 are considered "multimapped."
    This is the same thing as what the STAR aligner does. By default, this is off,
    and all reads are used.
  type: boolean
  inputBinding:
    prefix: --ignore-multimapping
- id: reads_col
  doc: Name of column in --splice-junction-csv containing reads to use. (default='reads')
  type: string
  inputBinding:
    prefix: --reads-col
- id: sample_id_col
  doc: Name of column in --splice-junction-csv containing sample ids to use. (default='sample_id')
  type: string
  inputBinding:
    prefix: --sample-id-col
- id: junction_id_col
  doc: Name of column in --splice-junction-csv containing the ID of the junction to
    use. Must match exactly with the junctions in the index.(default='junction_id')
  type: string
  inputBinding:
    prefix: --junction-id-col
- id: debug
  doc: If given, print debugging logging information to standard out
  type: boolean
  inputBinding:
    prefix: --debug
- id: n_jobs
  doc: Number of threads to use when parallelizing psi calculation and file reading.
    Default is -1, which means to use as many threads as are available.
  type: string
  inputBinding:
    prefix: --n-jobs
- id: low_memory
  doc: If set, then use a smaller memory footprint. By default, this is off.
  type: boolean
  inputBinding:
    prefix: --low-memory
outputs: []
cwlVersion: v1.1
baseCommand:
- outrigger
- psi
