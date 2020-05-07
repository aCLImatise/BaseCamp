class: CommandLineTool
id: correctGCBias.cwl
inputs:
- id: bam_file
  doc: 'file, -b BAM file Sorted BAM file to correct. (default: None)'
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
  doc: 'bit file, -g two bit file Genome in two bit format. Most genomes can be found
    here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise,
    fasta files can be converted to 2bit using faToTwoBit available here: http://hgdownload.cse.ucsc.edu/admin/exe/
    (default: None)'
  type: string
  inputBinding:
    prefix: --genome
- id: gc_bias_frequencies_file
  doc: 'Indicate the output file from computeGCBias containing the observed and expected
    read frequencies per GC- content. (default: None)'
  type: File
  inputBinding:
    prefix: --GCbiasFrequenciesFile
- id: corrected_file
  doc: 'Name of the corrected file. The ending will be used to decide the output file
    format. The options are ".bam", ".bw" for a bigWig file, ".bg" for a bedGraph
    file. (default: None)'
  type: File
  inputBinding:
    prefix: --correctedFile
- id: binsize
  doc: 'bp, -bs INT bp Size of the bins, in bases, for the output of the bigwig/bedgraph
    file. (Default: 50)'
  type: long
  inputBinding:
    prefix: --binSize
- id: region
  doc: ':START:END, -r CHR:START:END Region of the genome to limit the operation to
    - this is useful when testing parameters to reduce the computing time. The format
    is chr:start:end, for example --region chr10 or --region chr10:456700:891000.
    (default: None)'
  type: string
  inputBinding:
    prefix: --region
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
outputs: []
cwlVersion: v1.1
baseCommand:
- correctGCBias
