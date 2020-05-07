class: CommandLineTool
id: computeGCBias.cwl
inputs:
- id: '2150570000'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '200'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_file
  doc: 'file, -b bam file Sorted BAM file. (default: None)'
  type: string
  inputBinding:
    prefix: --bamfile
- id: effective_genome_size
  doc: 'The effective genome size is the portion of the genome that is mappable. Large
    fractions of the genome are stretches of NNNN that should be discarded. Also,
    if repetitive regions were not included in the mapping of reads, the effective
    genome size needs to be adjusted accordingly. A table of values is available here:
    http ://deeptools.readthedocs.io/en/latest/content/feature/ effectiveGenomeSize.html
    . (default: None)'
  type: string
  inputBinding:
    prefix: --effectiveGenomeSize
- id: genome
  doc: '2bit FILE, -g 2bit FILE Genome in two bit format. Most genomes can be found
    here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise,
    fasta files can be converted to 2bit using the UCSC programm called faToTwoBit
    available for different plattforms at http://hgdownload.cse.ucsc.edu/admin/exe/
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --genome
- id: gc_bias_frequencies_file
  doc: 'Path to save the file containing the observed and expected read frequencies
    per %GC-content. This file is needed to run the correctGCBias tool. This is a
    text file. (default: None)'
  type: File
  inputBinding:
    prefix: --GCbiasFrequenciesFile
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: 'Set to see processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: bias_plot
  doc: 'NAME  If given, a diagnostic image summarizing the GC-bias will be saved.
    (default: None)'
  type: File
  inputBinding:
    prefix: --biasPlot
- id: plot_file_format
  doc: 'image format type. If given, this option overrides the image format based
    on the plotFile ending. The available options are: "png", "eps", "pdf", "plotly"
    and "svg" (default: None)'
  type: boolean
  inputBinding:
    prefix: --plotFileFormat
- id: region_size
  doc: 'To plot the reads per %GC over a regionthe size of the region is required.
    By default, the bin size is set to 300 bases, which is close to the standard fragment
    size for Illumina machines. However, if the depth of sequencing is low, a larger
    bin size will be required, otherwise many bins will not overlap with any read
    (Default: 300)'
  type: long
  inputBinding:
    prefix: --regionSize
outputs: []
cwlVersion: v1.1
baseCommand:
- computeGCBias
