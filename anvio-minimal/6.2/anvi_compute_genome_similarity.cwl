class: CommandLineTool
id: anvi_compute_genome_similarity.cwl
inputs:
- id: internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header line must contain these\
    \ columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'.\
    \ Each line should list a single entry, where 'name' can be any name to describe\
    \ the anvi'o bin identified as 'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: external_genomes
  doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  type: File
  inputBinding:
    prefix: --external-genomes
- id: fast_a_text_file
  doc: A two-column TAB-delimited file that lists multiple FASTA files to import for
    analysis. If using for `anvi-dereplicate-genomes` or `anvi-compute-distance`,
    each FASTA is assumed to be a genome. The first item in the header line should
    read 'name', and the second item should read 'path'. Each line in the field should
    describe a single entry, where the first column is the name of the FASTA file
    or corresponding sequence, and the second column is the path to the FASTA file
    itself.
  type: string
  inputBinding:
    prefix: --fasta-text-file
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: pan_db
  doc: This is totally optional, but very useful when applicable. If you are running
    this for genomes for which you already have an anvi'o pangeome, then you can show
    where the pan database is and anvi'o would automatically add the results into
    the misc data tables of your pangenome. Those data can then be shown as heatmaps
    on the pan interactive interface through the 'layers' tab.
  type: string
  inputBinding:
    prefix: --pan-db
- id: program
  doc: Tell anvi'o which program to run to process genome similarity. For ANI, you
    should either use pyANI or fastANI. If accuracy is paramount (for example, distinguishing
    things less than 1 percent different), or for dealing with genomes < 80 percent
    similar, pyANI is what we recommend. However, fastANI is much faster. If you for
    some reason want to use mash similarity, you can use sourmash, but its really
    not intended for genome comparisons. If you don't choose anything here, anvi'o
    will reluctantly set the program to pyANI, but you really should be the one who
    is on top of these things.
  type: string
  inputBinding:
    prefix: --program
- id: fast_ani_km_er_size
  doc: Choose a kmer. The default is 16.
  type: string
  inputBinding:
    prefix: --fastani-kmer-size
- id: fragment_length
  doc: Choose a fragment length. The default is 3000.
  type: string
  inputBinding:
    prefix: --fragment-length
- id: min_num_fragments
  doc: Choose the minimum number of fragment lengths to that can can be trusted. The
    default is 50.
  type: long
  inputBinding:
    prefix: --min-num-fragments
- id: method
  doc: "Method for pyANI. The default is ANIb. You must have the necessary binary\
    \ in path for whichever method you choose. According to the pyANI help for v0.2.7\
    \ at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer)\
    \ to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments\
    \ of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt\
    \ fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input\
    \ sequence"
  type: string
  inputBinding:
    prefix: --method
- id: min_alignment_fraction
  doc: In some cases you may get high raw ANI estimates (percent identity scores)
    between two genomes that have little to do with each other simply because only
    a small fraction of their content may be aligned. This filter will set all ANI
    scores between two genomes to 0 if the alignment fraction is less than you deem
    trustable. When you set a value, anvi'o will go through the ANI results, and set
    percent identity scores between two genomes to 0 if the alignment fraction *between
    either of them* is less than the parameter described here. The default is 0.
  type: string
  inputBinding:
    prefix: --min-alignment-fraction
- id: significant_alignment_length
  doc: So --min-alignment-fraction discards any hit that is coming from alignments
    that represent shorter fractions of genomes, but what if you still don't want
    to miss an alignment that is longer than an X number of nucleotides regardless
    of what fraction of the genome it represents? Well, this parameter is to recover
    things that may be lost due to --min- alignment-fraction parameter. Let's say,
    if you set --min-alignment-fraction to '0.05', and this parameter to '5000', anvi'o
    will keep hits from alignments that are longer than 5000 nts, EVEN IF THEY REPRESENT
    less than 5 percent of a given genome pair. Basically if --min-alignment-fraction
    is your shield to protect yourself from incoming garbage, --significant- alignment-length
    is your chopstick to pick out those that may be interesting, and you are a true
    warrior here.
  type: long
  inputBinding:
    prefix: --significant-alignment-length
- id: min_full_percent_identity
  doc: In some cases you may get high raw ANI estimates (percent identity scores)
    between two genomes that have little to do with each other simply because only
    a small fraction of their content may be aligned. This can be partly alleviated
    by considering the *full* percent identity, which includes in its calculation
    regions that did not align. For example, if the alignment is a whopping 97 percent
    identity but only 8 percent of the genome aligned, the *full* percent identity
    is 0.970 * 0.080 = 0.078 OR 7.8 percent. *full* percent identity is always included
    in the report, but you can also use it as a filter for other metrics, such as
    percent identity. This filter will set all ANI measures between two genomes to
    0 if the *full* percent identity is less than you deem trustable. When you set
    a value, anvi'o will go through the ANI results, and set all ANI measures between
    two genomes to 0 if the *full* percent identity *between either of them* is less
    than the parameter described here. The default is 0.
  type: string
  inputBinding:
    prefix: --min-full-percent-identity
- id: km_er_size
  doc: Set the k-mer size for mash similarity checks. We found 13 in almost all cases
    correlates best with alignment-based ANI.
  type: long
  inputBinding:
    prefix: --kmer-size
- id: scale
  doc: Set the compression ratio for fasta signature file computations. The default
    is 1000. Smaller ratios decrease sensitivity, while larger ratios will lead to
    large fasta signatures.
  type: long
  inputBinding:
    prefix: --scale
- id: distance
  doc: The distance metric for the hierarchical clustering. The default is "euclidean".
  type: string
  inputBinding:
    prefix: --distance
- id: linkage
  doc: The linkage method for the hierarchical clustering. The default is "ward".
  type: string
  inputBinding:
    prefix: --linkage
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: log_file
  doc: File path to store debug/output messages.
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-compute-genome-similarity
