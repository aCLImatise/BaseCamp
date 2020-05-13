class: CommandLineTool
id: Ray.cwl
inputs:
- id: debugging
  doc: -verify-message-integrity Checks message data reliability for any non-empty
    message. add '-D CONFIG_SSE_4_2' in the Makefile to use hardware instruction (SSE
    4.2) -write-scheduling-data Writes RayPlatform scheduling information to RayOutput/Scheduling/
    -write-plugin-data Writes data for plugins registered with the RayPlatform API
    to RayOutput/Plugins -run-profiler Runs the profiler as the code runs. By default,
    only show granularity warnings. Running the profiler increases running times.
    -with-profiler-details Shows number of messages sent and received in each methods
    during in each time slices (epochs). Needs -run-profiler. -debug Turns on -run-profiler
    and -with-profiler-details for debugging -show-communication-events Shows all
    messages sent and received. -show-read-placement Shows read placement in the graph
    during the extension. -debug-bubbles Debugs bubble code. Bubbles can be due to
    heterozygous sites or sequencing errors or other (unknown) events -debug-seeds
    Debugs seed code. Seeds are paths in the graph that are likely unique. -debug-fusions
    Debugs fusion code. -debug-scaffolder Debug the scaffolder.
  type: string
  inputBinding:
    position: 0
- id: amos
  doc: 'RayOutput/AMOS.afg Assembly representation in AMOS format, required option:
    -amos'
  type: string
  inputBinding:
    position: 0
- id: communication
  doc: RayOutput/NetworkTest.txt Latencies in microseconds RayOutput/Rank<rank>NetworkTestData.txt
    Network test raw data
  type: string
  inputBinding:
    position: 1
- id: de
  doc: genome assembly (with Ray vanilla)
  type: string
  inputBinding:
    prefix: '- de'
- id: de
  doc: meta-genome assembly (with Ray Méta)
  type: string
  inputBinding:
    prefix: '- de'
- id: de
  doc: transcriptome assembly (works, but not tested a lot)
  type: string
  inputBinding:
    prefix: '- de'
- id: quantification
  doc: contig abundances
  type: string
  inputBinding:
    prefix: '- quantification'
- id: quantification
  doc: microbiome consortia members (with Ray Communities)
  type: string
  inputBinding:
    prefix: '- quantification'
- id: quantification
  doc: transcript expression
  type: string
  inputBinding:
    prefix: '- quantification'
- id: taxonomy
  doc: of samples (with Ray Communities)
  type: string
  inputBinding:
    prefix: '- taxonomy'
- id: gene
  doc: profiling of samples (with Ray Ontologies)
  type: string
  inputBinding:
    prefix: '- gene'
- id: compare
  doc: samples using words (Ray -run-surveyor ...; see Ray Surveyor options)
  type: string
  inputBinding:
    prefix: '- compare'
- id: version
  doc: Displays Ray version and compilation options.
  type: boolean
  inputBinding:
    prefix: -version
- id: o
  doc: 'Specifies the directory for outputted files. Default is RayOutput Other name:
    -output'
  type: string
  inputBinding:
    prefix: -o
- id: disable_recycling
  doc: 'Disables read recycling during the assembly reads will be set free in 3 cases:
    1. the distance did not match for a pair 2. the read has not met its mate 3. the
    library population indicates a wrong placement see Constrained traversal of repeats
    with paired sequences. Sébastien Boisvert, Élénie Godzaridis, François Laviolette
    & Jacques Corbeil. First Annual RECOMB Satellite Workshop on Massively Parallel
    Sequencing, March 26-27 2011, Vancouver, BC, Canada.'
  type: boolean
  inputBinding:
    prefix: -disable-recycling
- id: debug_recycling
  doc: Debugs the recycling events
  type: boolean
  inputBinding:
    prefix: -debug-recycling
- id: ignore_seeds
  doc: Disables assembly by ignoring seeds.
  type: boolean
  inputBinding:
    prefix: -ignore-seeds
- id: merge_seeds
  doc: Merges seeds initially to reduce running time.
  type: boolean
  inputBinding:
    prefix: -merge-seeds
- id: disable_scaffold_er
  doc: Disables the scaffolder.
  type: boolean
  inputBinding:
    prefix: -disable-scaffolder
- id: minimum_seed_length
  doc: Changes the minimum seed length, default is 100 nucleotides
  type: long
  inputBinding:
    prefix: -minimum-seed-length
- id: minimum_contig_length
  doc: Changes the minimum contig length, default is 100 nucleotides
  type: long
  inputBinding:
    prefix: -minimum-contig-length
- id: color_space
  doc: Runs in color-space Needs csfasta files. Activated automatically if csfasta
    files are provided.
  type: boolean
  inputBinding:
    prefix: -color-space
- id: use_maximum_seed_coverage
  doc: Ignores any seed with a coverage depth above this threshold. The default is
    4294967295.
  type: long
  inputBinding:
    prefix: -use-maximum-seed-coverage
- id: use_minimum_seed_coverage
  doc: Sets the minimum seed coverage depth. Any path with a coverage depth lower
    than this will be discarded. The default is 0.
  type: long
  inputBinding:
    prefix: -use-minimum-seed-coverage
- id: bloom_filter_bits
  doc: Sets the number of bits for the Bloom filter Default is auto bits (adaptive),
    0 bits disables the Bloom filter.
  type: string
  inputBinding:
    prefix: -bloom-filter-bits
- id: hash_table_buckets
  doc: 'Sets the initial number of buckets. Must be a power of 2 ! Default value:
    268435456'
  type: string
  inputBinding:
    prefix: -hash-table-buckets
- id: hash_table_buckets_per_group
  doc: 'Sets the number of buckets per group for sparse storage Default value: 64,
    Must be between >=1 and <= 64'
  type: string
  inputBinding:
    prefix: -hash-table-buckets-per-group
- id: hash_table_load_factor_threshold
  doc: 'Sets the load factor threshold for real-time resizing Default value: 0.75,
    must be >= 0.5 and < 1'
  type: string
  inputBinding:
    prefix: -hash-table-load-factor-threshold
- id: hash_table_verbosity
  doc: Activates verbosity for the distributed storage engine
  type: boolean
  inputBinding:
    prefix: -hash-table-verbosity
- id: search
  doc: Provides a directory containing fasta files to be searched in the de Bruijn
    graph. Biological abundances will be written to RayOutput/BiologicalAbundances
    See Documentation/BiologicalAbundances.txt
  type: string
  inputBinding:
    prefix: -search
- id: one_color_per_file
  doc: Sets one color per file instead of one per sequence. By default, each sequence
    in each file has a different color. For files with large numbers of sequences,
    using one single color per file may be more efficient.
  type: boolean
  inputBinding:
    prefix: -one-color-per-file
- id: enable_neighbourhoods
  doc: 'Computes contig neighborhoods in the de Bruijn graph Output file: RayOutput/NeighbourhoodRelations.txt'
  type: boolean
  inputBinding:
    prefix: -enable-neighbourhoods
- id: amos
  doc: Writes the AMOS file called RayOutput/AMOS.afg An AMOS file contains read positions
    on contigs. Can be opened with software with graphical user interface.
  type: boolean
  inputBinding:
    prefix: -amos
- id: write_km_ers
  doc: Writes k-mer graph to RayOutput/kmers.txt The resulting file is not utilised
    by Ray. The resulting file is very large.
  type: boolean
  inputBinding:
    prefix: -write-kmers
- id: graph_only
  doc: Exits after building graph.
  type: boolean
  inputBinding:
    prefix: -graph-only
- id: write_read_markers
  doc: Writes read markers to disk.
  type: boolean
  inputBinding:
    prefix: -write-read-markers
- id: write_seeds
  doc: Writes seed DNA sequences to RayOutput/Rank<rank>.RaySeeds.fasta
  type: boolean
  inputBinding:
    prefix: -write-seeds
- id: write_extensions
  doc: Writes extension DNA sequences to RayOutput/Rank<rank>.RayExtensions.fasta
  type: boolean
  inputBinding:
    prefix: -write-extensions
- id: write_contig_paths
  doc: Writes contig paths with coverage values to RayOutput/Rank<rank>.RayContigPaths.txt
  type: boolean
  inputBinding:
    prefix: -write-contig-paths
- id: write_marker_summary
  doc: Writes marker statistics.
  type: boolean
  inputBinding:
    prefix: -write-marker-summary
- id: show_memory_usage
  doc: Shows memory usage. Data is fetched from /proc on GNU/Linux Needs __linux__
  type: boolean
  inputBinding:
    prefix: -show-memory-usage
- id: show_memory_allocations
  doc: Shows memory allocation events
  type: boolean
  inputBinding:
    prefix: -show-memory-allocations
- id: write_checkpoints
  doc: Write checkpoint files
  type: string
  inputBinding:
    prefix: -write-checkpoints
- id: read_checkpoints
  doc: Read checkpoint files
  type: string
  inputBinding:
    prefix: -read-checkpoints
- id: read_write_checkpoints
  doc: Read and write checkpoint files
  type: string
  inputBinding:
    prefix: -read-write-checkpoints
- id: route_messages
  doc: 'Enables the Ray message router. Disabled by default. Messages will be routed
    accordingly so that any rank can communicate directly with only a few others.
    Without -route-messages, any rank can communicate directly with any other rank.
    Files generated: Routing/Connections.txt, Routing/Routes.txt and Routing/RelayEvents.txt
    and Routing/Summary.txt'
  type: boolean
  inputBinding:
    prefix: -route-messages
- id: connection_type
  doc: "Sets the connection type for routes. Accepted values are debruijn, hypercube,\
    \ polytope, group, random, kautz and complete. Default is debruijn. torus: a k-ary\
    \ n-cube, radix: k, dimension: n, degree: 2*dimension, vertices: radix^dimension\
    \ polytope: a convex regular polytope, alphabet is {0,1,...,B-1} and the vertices\
    \ is a power of B hypercube: a hypercube, alphabet is {0,1} and the vertices is\
    \ a power of 2 debruijn: a full de Bruijn graph a given alphabet and diameter\
    \ kautz: a full de Kautz graph, which is a subgraph of a de Bruijn graph group:\
    \ silly model where one representative per group can communicate with outsiders\
    \ random: Erdős–Rényi model complete: a full graph with all the possible connections\
    \ With the type debruijn, the number of ranks must be a power of something. Examples:\
    \ 256 = 16*16, 512=8*8*8, 49=7*7, and so on. Otherwise, don't use debruijn routing\
    \ but use another one With the type kautz, the number of ranks n must be n=(k+1)*k^(d-1)\
    \ for some k and d"
  type: string
  inputBinding:
    prefix: -connection-type
- id: routing_graph_degree
  doc: Specifies the outgoing degree for the routing graph. See Documentation/Routing.txt
  type: string
  inputBinding:
    prefix: -routing-graph-degree
- id: mpiexec
  doc: 1 Ray -help|less (always up-to-date)
  type: boolean
  inputBinding:
    prefix: '- mpiexec'
- id: this
  doc: page (always up-to-date)
  type: string
  inputBinding:
    prefix: '- This'
- id: the
  doc: Documentation/
  type: Directory
  inputBinding:
    prefix: '- The'
- id: manual
  doc: '(Portable Document Format): InstructionManual.tex (in Documentation)'
  type: boolean
  inputBinding:
    prefix: '- Manual'
- id: mailing
  doc: 'archives: http://sourceforge.net/mailarchive/forum.php?forum_name=denovoassembler-users'
  type: string
  inputBinding:
    prefix: '- Mailing'
outputs: []
cwlVersion: v1.1
baseCommand:
- Ray
