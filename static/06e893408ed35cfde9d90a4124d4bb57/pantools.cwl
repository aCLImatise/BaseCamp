class: CommandLineTool
id: pantools.cwl
inputs:
- id: in_server
  doc: ': To optimize JIT compilations for higher performance'
  type: boolean?
  inputBinding:
    prefix: -server
- id: in_x_mn
  doc: '(a number followed by m/g) : Minimum heap size in mega/giga bytes'
  type: boolean?
  inputBinding:
    prefix: -Xmn
- id: in_x_mx
  doc: '(a number followed by m/g) : Maximum heap size in mega/giga bytes'
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_database_path
  doc: ': Path to the pangenome database.'
  type: File?
  inputBinding:
    prefix: --database_path
- id: in_genomes_file
  doc: ': A text file containing paths to FASTA files of genomes;       each in a
    seperated line.'
  type: File?
  inputBinding:
    prefix: --genomes-file
- id: in_km_er_size
  doc: ': The size of k-mers. If it is not given or is out of valid range (6 <= K_SIZE
    <= 255), then an optimal value would be calculated automatically.'
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_proteomes_file
  doc: ': A text file containing paths to FASTA files of proteomes; each in a seperated
    line.'
  type: File?
  inputBinding:
    prefix: --proteomes_file
- id: in_output_path
  doc: '(default value: Database path determined by -dp) : Path to the output files.'
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_annotations_file
  doc: ': A text file each line of which contains genome number and path to the corresponding
    GFF file seperated by one space. Genomes are numbered in the same order they have
    been added to the pangenome. The protein sequence of the annotated genes will
    be also stored in the folder "/proteins" in the output path.'
  type: File?
  inputBinding:
    prefix: --annotations-file
- id: in_connect_annotations
  doc: ': Connects the annotated genomic features to the nodes of gDBG.'
  type: string?
  inputBinding:
    prefix: --connect_annotations
- id: in_genome_numbers
  doc: ': A text file containing genome_numbers for which the features will be retrieved.'
  type: File?
  inputBinding:
    prefix: --genome-numbers
- id: in_feature_type
  doc: '(default value: gene) : The feature name; for example gene, mRNA, exon, tRNA,
    etc.'
  type: string?
  inputBinding:
    prefix: --feature-type
- id: in_regions_file
  doc: ': A text file containing records with genome_number, sequence_number, begin
    and end positions seperated by one space for each region.'
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_intersection_rate
  doc: '(default valuue: 0.09, valid range: [0.001..0.1]) : The fraction of k-mers
    needs to be shared by two intersecting proteins.'
  type: double?
  inputBinding:
    prefix: --intersection-rate
- id: in_min_normalized_similarity
  doc: '(default value: 95, valid range: [1..99]) : The minimum normalized similarity
    score of two proteins.'
  type: long?
  inputBinding:
    prefix: --min-normalized-similarity
- id: in_mcl_inflation
  doc: '(default value: 9.6, valid range: (1..19)): The MCL inflation.'
  type: double?
  inputBinding:
    prefix: --mcl-inflation
- id: in_contrast
  doc: '(default value: 8, valid range: (0..10)) : The contrast factor.'
  type: double?
  inputBinding:
    prefix: --contrast
- id: in_relaxation
  doc: 'rn (default value: 1, valid range: [1..8]) : The relaxation in homology calls.'
  type: double?
  inputBinding:
    prefix: --relaxation
- id: in_threads_number
  doc: '(default value: 1) : The number of parallel working threads.'
  type: long?
  inputBinding:
    prefix: --threads-number
- id: in_first_shortread_archive
  doc: ': The first short-read archive in FASTQ format, which can be gz/bz2 compressed.
    This file can be precessed interleaved by -il option.'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_optionally_second_shortread
  doc: ': Optionally, the second short-read archive in FASTQ format, which can be
    gz/bz2 compressed.'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_min_mapping_identity
  doc: '(default value: 0.5, valid range: [0..1)) : The minimum acceptable identity
    of the alignment.'
  type: long?
  inputBinding:
    prefix: --min-mapping-identity
- id: in_num_km_er_samples
  doc: '*-nks (default value: 15, valid range: [1..r-k+1]) : The number of kmers sampled
    from read.'
  type: long?
  inputBinding:
    prefix: --num-kmer-samples
- id: in_min_hit_length
  doc: '(default value: 13, valid range: [10..100]) : The minimum acceptable length
    of alignment after soft-clipping.'
  type: long?
  inputBinding:
    prefix: --min-hit-length
- id: in_max_alignment_length
  doc: '(default value: 1000, valid range: [50..5000]) : The maximum acceptable length
    of alignment.'
  type: long?
  inputBinding:
    prefix: --max-alignment-length
- id: in_max_fragment_length
  doc: '(default value: 2000, valid range: [50..5000]) : The maximum acceptable length
    of fragment.'
  type: long?
  inputBinding:
    prefix: --max-fragment-length
- id: in_max_num_locations
  doc: '(default value: 15, valid range: [1..100]) : The maximum number of location
    of candidate hits to examine.'
  type: long?
  inputBinding:
    prefix: --max-num-locations
- id: in_alignment_band
  doc: '(default value: 5, valid range: [1..100]) : The length of bound of banded
    alignment.'
  type: long?
  inputBinding:
    prefix: --alignment-band
- id: in_clipping_stringency
  doc: '(default value: 1) : The stringency of soft-clipping.'
  type: long?
  inputBinding:
    prefix: --clipping-stringency
- id: in_out_format
  doc: ': Writes the alignment files in BAM|SAM|NONE format.'
  type: string?
  inputBinding:
    prefix: --out-format
- id: in_alignment_mode
  doc: '(default value: 2) : The alignment mode.'
  type: long?
  inputBinding:
    prefix: --alignment-mode
- id: in__competitive_allbests
  doc: ': Competitive, all-bests'
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_interleaved
  doc: ': Process the fastq file as an interleaved paired-end archive.'
  type: File?
  inputBinding:
    prefix: --interleaved
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: '(default value: Database path determined by -dp) : Path to the output files.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pantools:2.0.0--0
cwlVersion: v1.1
baseCommand:
- pantools
