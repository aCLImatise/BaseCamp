version 1.0

task CorrectGCBias {
  input {
    String? bam_file
    String? effective_genome_size
    String? genome
    File? gc_bias_frequencies_file
    File? corrected_file
    Int? binsize
    String? region
    Int? number_of_processors
    Boolean? verbose
    String an
    String example
    String usage
    String is
  }
  command <<<
    correctGCBias \
      ~{an} \
      ~{example} \
      ~{usage} \
      ~{is} \
      ~{if defined(bam_file) then ("--bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(effective_genome_size) then ("--effectiveGenomeSize " +  '"' + effective_genome_size + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gc_bias_frequencies_file) then ("--GCbiasFrequenciesFile " +  '"' + gc_bias_frequencies_file + '"') else ""} \
      ~{if defined(corrected_file) then ("--correctedFile " +  '"' + corrected_file + '"') else ""} \
      ~{if defined(binsize) then ("--binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    bam_file: "file, -b BAM file Sorted BAM file to correct. (default: None)"
    effective_genome_size: "The effective genome size is the portion of the genome that is mappable. Large fractions of the genome are stretches of NNNN that should be discarded. Also, if repetitive regions were not included in the mapping of reads, the effective genome size needs to be adjusted accordingly. A table of values is available here: http ://deeptools.readthedocs.io/en/latest/content/feature/ effectiveGenomeSize.html . (default: None)"
    genome: "bit file, -g two bit file Genome in two bit format. Most genomes can be found here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise, fasta files can be converted to 2bit using faToTwoBit available here: http://hgdownload.cse.ucsc.edu/admin/exe/ (default: None)"
    gc_bias_frequencies_file: "Indicate the output file from computeGCBias containing the observed and expected read frequencies per GC- content. (default: None)"
    corrected_file: "Name of the corrected file. The ending will be used to decide the output file format. The options are \".bam\", \".bw\" for a bigWig file, \".bg\" for a bedGraph file. (default: None)"
    binsize: "bp, -bs INT bp Size of the bins, in bases, for the output of the bigwig/bedgraph file. (Default: 50)"
    region: ":START:END, -r CHR:START:END Region of the genome to limit the operation to - this is useful when testing parameters to reduce the computing time. The format is chr:start:end, for example --region chr10 or --region chr10:456700:891000. (default: None)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages. (default: False)"
    an: ""
    example: ""
    usage: ""
    is: ""
  }
}