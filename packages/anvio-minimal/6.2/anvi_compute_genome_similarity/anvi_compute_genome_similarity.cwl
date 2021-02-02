class: CommandLineTool
id: anvi_compute_genome_similarity.cwl
inputs:
- id: in_internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header\nline must contain\
    \ these columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path'.\n\
    Each line should list a single entry, where 'name' can\nbe any name to describe\
    \ the anvi'o bin identified as\n'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: in_external_genomes
  doc: "A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', and the second should\
    \ read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry,\
    \ where the first column is the\nname of the genome (or MAG), and the second column\
    \ is\nthe anvi'o contigs database generated for this genome."
  type: File
  inputBinding:
    prefix: --external-genomes
- id: in_fast_a_text_file
  doc: "A two-column TAB-delimited file that lists multiple\nFASTA files to import\
    \ for analysis. If using for\n`anvi-dereplicate-genomes` or `anvi-compute-distance`,\n\
    each FASTA is assumed to be a genome. The first item\nin the header line should\
    \ read 'name', and the second\nitem should read 'path'. Each line in the field\
    \ should\ndescribe a single entry, where the first column is the\nname of the\
    \ FASTA file or corresponding sequence, and\nthe second column is the path to\
    \ the FASTA file\nitself."
  type: File
  inputBinding:
    prefix: --fasta-text-file
- id: in_output_dir
  doc: Directory path for output files
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_pan_db
  doc: "This is totally optional, but very useful when\napplicable. If you are running\
    \ this for genomes for\nwhich you already have an anvi'o pangeome, then you\n\
    can show where the pan database is and anvi'o would\nautomatically add the results\
    \ into the misc data\ntables of your pangenome. Those data can then be shown\n\
    as heatmaps on the pan interactive interface through\nthe 'layers' tab."
  type: string
  inputBinding:
    prefix: --pan-db
- id: in_program
  doc: "Tell anvi'o which program to run to process genome\nsimilarity. For ANI, you\
    \ should either use pyANI or\nfastANI. If accuracy is paramount (for example,\n\
    distinguishing things less than 1 percent different),\nor for dealing with genomes\
    \ < 80 percent similar,\npyANI is what we recommend. However, fastANI is much\n\
    faster. If you for some reason want to use mash\nsimilarity, you can use sourmash,\
    \ but its really not\nintended for genome comparisons. If you don't choose\nanything\
    \ here, anvi'o will reluctantly set the program\nto pyANI, but you really should\
    \ be the one who is on\ntop of these things."
  type: string
  inputBinding:
    prefix: --program
- id: in_fast_ani_km_er_size
  doc: Choose a kmer. The default is 16.
  type: long
  inputBinding:
    prefix: --fastani-kmer-size
- id: in_fragment_length
  doc: Choose a fragment length. The default is 3000.
  type: long
  inputBinding:
    prefix: --fragment-length
- id: in_min_num_fragments
  doc: "Choose the minimum number of fragment lengths to that\ncan can be trusted.\
    \ The default is 50."
  type: long
  inputBinding:
    prefix: --min-num-fragments
- id: in_method
  doc: "Method for pyANI. The default is ANIb. You must have\nthe necessary binary\
    \ in path for whichever method you\nchoose. According to the pyANI help for v0.2.7\
    \ at\nhttps://github.com/widdowquinn/pyani, the method\n'ANIm' uses MUMmer (NUCmer)\
    \ to align the input\nsequences. 'ANIb' uses BLASTN+ to align 1020nt\nfragments\
    \ of the input sequences. 'ANIblastall': uses\nthe legacy BLASTN to align 1020nt\
    \ fragments Finally,\n'TETRA': calculates tetranucleotide frequencies of\neach\
    \ input sequence"
  type: string
  inputBinding:
    prefix: --method
- id: in_min_alignment_fraction
  doc: "In some cases you may get high raw ANI estimates\n(percent identity scores)\
    \ between two genomes that\nhave little to do with each other simply because only\n\
    a small fraction of their content may be aligned. This\nfilter will set all ANI\
    \ scores between two genomes to\n0 if the alignment fraction is less than you\
    \ deem\ntrustable. When you set a value, anvi'o will go\nthrough the ANI results,\
    \ and set percent identity\nscores between two genomes to 0 if the alignment\n\
    fraction *between either of them* is less than the\nparameter described here.\
    \ The default is 0."
  type: long
  inputBinding:
    prefix: --min-alignment-fraction
- id: in_significant_alignment_length
  doc: "So --min-alignment-fraction discards any hit that is\ncoming from alignments\
    \ that represent shorter\nfractions of genomes, but what if you still don't want\n\
    to miss an alignment that is longer than an X number\nof nucleotides regardless\
    \ of what fraction of the\ngenome it represents? Well, this parameter is to\n\
    recover things that may be lost due to --min-\nalignment-fraction parameter. Let's\
    \ say, if you set\n--min-alignment-fraction to '0.05', and this parameter\nto\
    \ '5000', anvi'o will keep hits from alignments that\nare longer than 5000 nts,\
    \ EVEN IF THEY REPRESENT less\nthan 5 percent of a given genome pair. Basically\
    \ if\n--min-alignment-fraction is your shield to protect\nyourself from incoming\
    \ garbage, --significant-\nalignment-length is your chopstick to pick out those\n\
    that may be interesting, and you are a true warrior\nhere."
  type: long
  inputBinding:
    prefix: --significant-alignment-length
- id: in_min_full_percent_identity
  doc: "In some cases you may get high raw ANI estimates\n(percent identity scores)\
    \ between two genomes that\nhave little to do with each other simply because only\n\
    a small fraction of their content may be aligned. This\ncan be partly alleviated\
    \ by considering the *full*\npercent identity, which includes in its calculation\n\
    regions that did not align. For example, if the\nalignment is a whopping 97 percent\
    \ identity but only 8\npercent of the genome aligned, the *full* percent\nidentity\
    \ is 0.970 * 0.080 = 0.078 OR 7.8 percent.\n*full* percent identity is always\
    \ included in the\nreport, but you can also use it as a filter for other\nmetrics,\
    \ such as percent identity. This filter will\nset all ANI measures between two\
    \ genomes to 0 if the\n*full* percent identity is less than you deem\ntrustable.\
    \ When you set a value, anvi'o will go\nthrough the ANI results, and set all ANI\
    \ measures\nbetween two genomes to 0 if the *full* percent\nidentity *between\
    \ either of them* is less than the\nparameter described here. The default is 0."
  type: long
  inputBinding:
    prefix: --min-full-percent-identity
- id: in_km_er_size
  doc: "Set the k-mer size for mash similarity checks. We\nfound 13 in almost all\
    \ cases correlates best with\nalignment-based ANI."
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_scale
  doc: "Set the compression ratio for fasta signature file\ncomputations. The default\
    \ is 1000. Smaller ratios\ndecrease sensitivity, while larger ratios will lead\
    \ to\nlarge fasta signatures."
  type: long
  inputBinding:
    prefix: --scale
- id: in_distance
  doc: "The distance metric for the hierarchical clustering.\nThe default is \"euclidean\"\
    ."
  type: string
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The linkage method for the hierarchical clustering.\nThe default is \"ward\"\
    ."
  type: string
  inputBinding:
    prefix: --linkage
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: in_it_dot
  doc: --log-file FILE_PATH  File path to store debug/output messages.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- anvi-compute-genome-similarity
