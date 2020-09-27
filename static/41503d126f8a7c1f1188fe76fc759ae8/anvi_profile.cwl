class: CommandLineTool
id: anvi_profile.cwl
inputs:
- id: in_input_file
  doc: "Sorted and indexed BAM file to analyze. Takes a long\ntime depending on the\
    \ length of the file and\nparameters used for profiling."
  type: File
  inputBinding:
    prefix: --input-file
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_blank_profile
  doc: "If you only have contig sequences, but no mapping data\n(i.e., you found a\
    \ genome and would like to take a\nlook from it), this flag will become very hand.\
    \ After\ncreating a contigs database for your contigs, you can\ncreate a blank\
    \ anvi'o profile database to use anvi'o\ninteractive interface with that contigs\
    \ database\nwithout any mapping data."
  type: boolean
  inputBinding:
    prefix: --blank-profile
- id: in_output_dir
  doc: Directory path for output files
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist."
  type: boolean
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_sample_name
  doc: "It is important to set a sample name (using only ASCII\nletters and digits\
    \ and without spaces) that is unique\n(considering all others). If you do not\
    \ provide one,\nanvi'o will try to make up one for you based on other\ninformation,\
    \ although, you should never let the\nsoftware to decide these things)."
  type: string
  inputBinding:
    prefix: --sample-name
- id: in_report_variability_full
  doc: "One of the things anvi-profile does is to store\ninformation about variable\
    \ nucleotide positions.\nUsually it does not report every variable position,\n\
    since not every variable position is genuine\nvariation. Say, if you have 1,000\
    \ coverage, and all\nnucleotides at that position are Ts and only one of\nthem\
    \ is a C, the confidence of that C being a real\nvariation is quite low. anvi'o\
    \ has a simple algorithm\nin place to reduce the impact of noise. However, using\n\
    this flag you can disable it and ask profiler to\nreport every single variation\
    \ (which may result in\nvery large output files and millions of reports, but\n\
    you are the boss). Do not forget to take a look at '--\nmin-coverage-for-variability'\
    \ parameter"
  type: boolean
  inputBinding:
    prefix: --report-variability-full
- id: in_skip_snv_profiling
  doc: "By default, anvi'o characterizes single-nucleotide\nvariation in each sample.\
    \ The use of this flag will\ninstruct profiler to skip that step. Please remember\n\
    that parameters and flags must be identical between\ndifferent profiles using\
    \ the same contigs database for\nthem to merge properly."
  type: boolean
  inputBinding:
    prefix: --skip-SNV-profiling
- id: in_profile_s_cvs
  doc: "Anvi'o can perform accurate characterization of codon\nfrequencies in genes\
    \ during profiling. While having\ncodon frequencies opens doors to powerful evolutionary\n\
    insights in downstream analyses, due to its\ncomputational complexity, this feature\
    \ comes 'off' by\ndefault. Using this flag you can rise against the\nauthority,\
    \ as you always should, and make anvi'o\nprofile codons."
  type: boolean
  inputBinding:
    prefix: --profile-SCVs
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdwon syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs."
  type: File
  inputBinding:
    prefix: --description
- id: in_cluster_contigs
  doc: "Single profiles are rarely used for genome binning or\nvisualization, and\
    \ since clustering step increases the\nprofiling runtime for no good reason, the\
    \ default\nbehavior is to not cluster contigs for individual\nruns. However, if\
    \ you are planning to do binning on\none sample, you must use this flag to tell\
    \ anvi'o to\nrun cluster configurations for single runs on your\nsample."
  type: boolean
  inputBinding:
    prefix: --cluster-contigs
- id: in_skip_hierarchical_clustering
  doc: "If you are not planning to use the interactive\ninterface (or if you have\
    \ other means to add a tree of\ncontigs in the database) you may skip the step\
    \ where\nhierarchical clustering of your items are preformed\nbased on default\
    \ clustering recipes matching to your\ndatabase type."
  type: boolean
  inputBinding:
    prefix: --skip-hierarchical-clustering
- id: in_distance
  doc: "The distance metric for the hierarchical clustering.\nOnly relevant if you\
    \ are using `--cluster-contigs`\nflag. The default is \"euclidean\"."
  type: string
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The linkage method for the hierarchical clustering.\nJust like the distance\
    \ metric this is only relevant if\nyou are using it with `--cluster-contigs` flag.\
    \ The\ndefault is \"ward\"."
  type: string
  inputBinding:
    prefix: --linkage
- id: in_min_contig_length
  doc: "Minimum length of contigs in a BAM file to analyze.\nThe minimum length should\
    \ be long enough for tetra-\nnucleotide frequency analysis to be meaningful. There\n\
    is no way to define a golden number of minimum length\nthat would be applicable\
    \ to genomes found in all\nenvironments, but we chose the default to be 1000,\
    \ and\nhave been happy with it. You are welcome to\nexperiment, but we advise\
    \ to never go below 1,000. You\nalso should remember that the lower you go, the\
    \ more\ntime it will take to analyze all contigs. You can use\n--list-contigs\
    \ parameter to have an idea how many\ncontigs would be discarded for a given M."
  type: long
  inputBinding:
    prefix: --min-contig-length
- id: in_max_contig_length
  doc: "Just like the minimum contig length parameter, but to\nset a maximum. Basically\
    \ this will remove any contig\nlonger than a certain value. Why would anyone need\n\
    this? Who knows. But if you ever do, it is here."
  type: long
  inputBinding:
    prefix: --max-contig-length
- id: in_min_mean_coverage
  doc: "Minimum mean coverage for contigs to be kept in the\nanalysis. The default\
    \ value is 0, which is for your\nbest interest if you are going to profile multiple\
    \ BAM\nfiles which are then going to be merged for a cross-\nsectional or time\
    \ series analysis. Do not change it if\nyou are not sure this is what you want\
    \ to do."
  type: long
  inputBinding:
    prefix: --min-mean-coverage
- id: in_min_coverage_for_variability
  doc: "Minimum coverage of a nucleotide position to be\nsubjected to SNV profiling.\
    \ By default, anvi'o will\nnot attempt to make sense of variation in a given\n\
    nucleotide position if it is covered less than 10X.\nYou can change that minimum\
    \ using this parameter."
  type: long
  inputBinding:
    prefix: --min-coverage-for-variability
- id: in_list_contigs
  doc: "When declared, the program will list contigs in the\nBAM file and exit gracefully\
    \ without any further\nanalysis."
  type: boolean
  inputBinding:
    prefix: --list-contigs
- id: in_contigs_of_interest
  doc: "It is possible to analyze only a group of contigs from\na given BAM file.\
    \ If you provide a text file, in which\nevery contig of interest is listed line\
    \ by line, the\nprofiler would engine only on those contigs in the BAM\nfile and\
    \ ignore the rest. This can be used for\ndebugging purposes, or to engine on a\
    \ particular group\nof contigs that were identified as relevant during the\ninteractive\
    \ analysis."
  type: File
  inputBinding:
    prefix: --contigs-of-interest
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
- id: in_queue_size
  doc: "The queue size for worker threads to store data to\ncommunicate to the main\
    \ thread. The default is set by\nthe class based on the number of threads. If\
    \ you have\n*any* hesitation about whether you know what you are\ndoing, you should\
    \ not change this value."
  type: long
  inputBinding:
    prefix: --queue-size
- id: in_write_buffer_size_per_thread
  doc: "How many items should be kept in memory before they\nare written do the disk.\
    \ The default is 500 per\nthread. So a single-threaded job would have a write\n\
    buffer size of 500, whereas a job with 4 threads would\nhave a write buffer size\
    \ of 4*500. The larger the\nbuffer size, the less frequent the program will access\n\
    to the disk, yet the more memory will be consumed\nsince the processed items will\
    \ be cleared off the\nmemory only after they are written to the disk. The\ndefault\
    \ buffer size will likely work for most cases.\nPlease keep an eye on the memory\
    \ usage output to make\nsure the memory use never exceeds the size of the\nphysical\
    \ memory."
  type: long
  inputBinding:
    prefix: --write-buffer-size-per-thread
- id: in_force_multi
  doc: "This is not useful to non-developers. It forces the\nmulti-process routine\
    \ even when 1 thread is chosen.\n"
  type: boolean
  inputBinding:
    prefix: --force-multi
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
- anvi-profile