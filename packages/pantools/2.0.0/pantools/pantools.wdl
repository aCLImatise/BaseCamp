version 1.0

task Pantools {
  input {
    Boolean? server
    Boolean? x_mn
    Boolean? x_mx
    File? database_path
    File? genomes_file
    Int? km_er_size
    File? proteomes_file
    File? output_path
    File? annotations_file
    String? connect_annotations
    File? genome_numbers
    String? feature_type
    File? regions_file
    Float? intersection_rate
    Int? min_normalized_similarity
    Float? mcl_inflation
    Float? contrast
    Float? relaxation
    Int? threads_number
    Boolean? first_shortread_archive
    Boolean? optionally_second_shortread
    Int? min_mapping_identity
    Int? num_km_er_samples
    Int? min_hit_length
    Int? max_alignment_length
    Int? max_fragment_length
    Int? max_num_locations
    Int? alignment_band
    Int? clipping_stringency
    String? out_format
    Int? alignment_mode
    Boolean? _competitive_allbests
    File? interleaved
  }
  command <<<
    pantools \
      ~{if (server) then "-server" else ""} \
      ~{if (x_mn) then "-Xmn" else ""} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if defined(database_path) then ("--database_path " +  '"' + database_path + '"') else ""} \
      ~{if defined(genomes_file) then ("--genomes-file " +  '"' + genomes_file + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(proteomes_file) then ("--proteomes_file " +  '"' + proteomes_file + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(annotations_file) then ("--annotations-file " +  '"' + annotations_file + '"') else ""} \
      ~{if defined(connect_annotations) then ("--connect_annotations " +  '"' + connect_annotations + '"') else ""} \
      ~{if defined(genome_numbers) then ("--genome-numbers " +  '"' + genome_numbers + '"') else ""} \
      ~{if defined(feature_type) then ("--feature-type " +  '"' + feature_type + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(intersection_rate) then ("--intersection-rate " +  '"' + intersection_rate + '"') else ""} \
      ~{if defined(min_normalized_similarity) then ("--min-normalized-similarity " +  '"' + min_normalized_similarity + '"') else ""} \
      ~{if defined(mcl_inflation) then ("--mcl-inflation " +  '"' + mcl_inflation + '"') else ""} \
      ~{if defined(contrast) then ("--contrast " +  '"' + contrast + '"') else ""} \
      ~{if defined(relaxation) then ("--relaxation " +  '"' + relaxation + '"') else ""} \
      ~{if defined(threads_number) then ("--threads-number " +  '"' + threads_number + '"') else ""} \
      ~{if (first_shortread_archive) then "-1" else ""} \
      ~{if (optionally_second_shortread) then "-2" else ""} \
      ~{if defined(min_mapping_identity) then ("--min-mapping-identity " +  '"' + min_mapping_identity + '"') else ""} \
      ~{if defined(num_km_er_samples) then ("--num-kmer-samples " +  '"' + num_km_er_samples + '"') else ""} \
      ~{if defined(min_hit_length) then ("--min-hit-length " +  '"' + min_hit_length + '"') else ""} \
      ~{if defined(max_alignment_length) then ("--max-alignment-length " +  '"' + max_alignment_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("--max-fragment-length " +  '"' + max_fragment_length + '"') else ""} \
      ~{if defined(max_num_locations) then ("--max-num-locations " +  '"' + max_num_locations + '"') else ""} \
      ~{if defined(alignment_band) then ("--alignment-band " +  '"' + alignment_band + '"') else ""} \
      ~{if defined(clipping_stringency) then ("--clipping-stringency " +  '"' + clipping_stringency + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if (_competitive_allbests) then "-3" else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pantools:2.0.0--0"
  }
  parameter_meta {
    server: ": To optimize JIT compilations for higher performance"
    x_mn: "(a number followed by m/g) : Minimum heap size in mega/giga bytes"
    x_mx: "(a number followed by m/g) : Maximum heap size in mega/giga bytes"
    database_path: ": Path to the pangenome database."
    genomes_file: ": A text file containing paths to FASTA files of genomes;       each in a seperated line."
    km_er_size: ": The size of k-mers. If it is not given or is out of valid range (6 <= K_SIZE <= 255), then an optimal value would be calculated automatically."
    proteomes_file: ": A text file containing paths to FASTA files of proteomes; each in a seperated line."
    output_path: "(default value: Database path determined by -dp) : Path to the output files."
    annotations_file: ": A text file each line of which contains genome number and path to the corresponding GFF file seperated by one space. Genomes are numbered in the same order they have been added to the pangenome. The protein sequence of the annotated genes will be also stored in the folder \\\"/proteins\\\" in the output path."
    connect_annotations: ": Connects the annotated genomic features to the nodes of gDBG."
    genome_numbers: ": A text file containing genome_numbers for which the features will be retrieved."
    feature_type: "(default value: gene) : The feature name; for example gene, mRNA, exon, tRNA, etc."
    regions_file: ": A text file containing records with genome_number, sequence_number, begin and end positions seperated by one space for each region."
    intersection_rate: "(default valuue: 0.09, valid range: [0.001..0.1]) : The fraction of k-mers needs to be shared by two intersecting proteins."
    min_normalized_similarity: "(default value: 95, valid range: [1..99]) : The minimum normalized similarity score of two proteins."
    mcl_inflation: "(default value: 9.6, valid range: (1..19)): The MCL inflation."
    contrast: "(default value: 8, valid range: (0..10)) : The contrast factor."
    relaxation: "rn (default value: 1, valid range: [1..8]) : The relaxation in homology calls."
    threads_number: "(default value: 1) : The number of parallel working threads."
    first_shortread_archive: ": The first short-read archive in FASTQ format, which can be gz/bz2 compressed. This file can be precessed interleaved by -il option."
    optionally_second_shortread: ": Optionally, the second short-read archive in FASTQ format, which can be gz/bz2 compressed."
    min_mapping_identity: "(default value: 0.5, valid range: [0..1)) : The minimum acceptable identity of the alignment."
    num_km_er_samples: "*-nks (default value: 15, valid range: [1..r-k+1]) : The number of kmers sampled from read."
    min_hit_length: "(default value: 13, valid range: [10..100]) : The minimum acceptable length of alignment after soft-clipping."
    max_alignment_length: "(default value: 1000, valid range: [50..5000]) : The maximum acceptable length of alignment."
    max_fragment_length: "(default value: 2000, valid range: [50..5000]) : The maximum acceptable length of fragment."
    max_num_locations: "(default value: 15, valid range: [1..100]) : The maximum number of location of candidate hits to examine."
    alignment_band: "(default value: 5, valid range: [1..100]) : The length of bound of banded alignment."
    clipping_stringency: "(default value: 1) : The stringency of soft-clipping."
    out_format: ": Writes the alignment files in BAM|SAM|NONE format."
    alignment_mode: "(default value: 2) : The alignment mode."
    _competitive_allbests: ": Competitive, all-bests"
    interleaved: ": Process the fastq file as an interleaved paired-end archive."
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}