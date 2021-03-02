class: CommandLineTool
id: anvi_trnaseq.cwl
inputs:
- id: in_fasta_file_containing
  doc: "The FASTA file containing merged (quality-controlled)\ntRNA-seq reads from\
    \ a sample. We recommend generating\nthis file via `anvi-run-workflow -w trnaseq`\
    \ to ensure\nproper merging of read pairs that may be partially or\nfully overlapping,\
    \ and to automatically produce\nanvi'o-compliant simple deflines. If there is\
    \ a\nproblem, anvi'o will gracefully complain about it.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --trnaseq-fasta
- id: in_sample_name
  doc: "Unique sample name, considering all others in the\nexperiment, that only includes\
    \ ASCII letters and\ndigits, without spaces (default: None)"
  type: string?
  inputBinding:
    prefix: --sample-name
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_treatment
  doc: "The type of treatment applied during tRNA-seq sample\npreparation. The values\
    \ which are currently known to\nanvi'o are \"untreated\" and \"demethylase\",\
    \ as tRNA-seq\nsamples are commonly split for these treatments.\nAnvi'o will warn\
    \ you if you do not choose one of these\nknown options, but it will not affect\
    \ data processing.\nTreatment type is stored for further reference in the\noutput\
    \ tRNA-seq database, and can be used in anvi-\nconvert-trnaseq-database to affect\
    \ which nucleotides\nare called at predicted modification sites in tRNA\nseed\
    \ sequences. (default: untreated)"
  type: string?
  inputBinding:
    prefix: --treatment
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdown syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs. (default: None)"
  type: File?
  inputBinding:
    prefix: --description
- id: in_write_checkpoints
  doc: "Use this flag to write pickle files of intermediate\nresults at key points\
    \ in anvi-trnaseq. If anvi'o\ncrashes for some reason, the argument, --load-\n\
    checkpoint, with the associated checkpoint name can be\nused to restart the program\
    \ from the given checkpoint.\nThis can be useful for saving time if anvi'o crashes\n\
    or in comparing the results of different advanced\nprogram parameterizations involved\
    \ in later stages of\nthe analytical pipeline after the checkpoint, such as\n\
    --min-trna-fragment-size and --agglomeration-max-\nmismatch-freq. This flag will\
    \ overwrite existing\nintermediate files in the output directory as needed.\n\
    (default: False)"
  type: boolean?
  inputBinding:
    prefix: --write-checkpoints
- id: in_load_checkpoint
  doc: "Use this option to restart anvi-trnaseq from a\ncheckpoint. This can be useful\
    \ for saving time if\nanvi'o crashed or in comparing the results of\ndifferent\
    \ advanced program parameterizations involved\nin later stages of the analytical\
    \ pipeline after the\ncheckpoint, such as --min-trna-fragment-size and\n--agglomeration-max-mismatch-freq.\
    \ Use of this option\nrequires that anvi-trnaseq was previously run with the\n\
    flag, --write-checkpoints, so that intermediate files\nwere generated. The checkpoint,\
    \ profile, restarts\nafter tRNA have been profiled and dereplicated. The\ncheckpoint,\
    \ fragment_mapping, restarts after\nunprofiled tRNA fragments have been mapped\
    \ to\nnormalized tRNA sequences. To overwrite subsequent\ncheckpoints after loading\
    \ a checkpoint (i.e.,\noverwrite the fragment_mapping checkpoint files after\n\
    loading the profile checkpoint), remember to also use\nthe flag, --write-checkpoints.\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --load-checkpoint
- id: in_feature_param_file
  doc: "A .ini file can be provided to set tRNA feature\nparameters used in de novo\
    \ profiling/identification of\ntRNA sequences from the 3' end. Generate the default\n\
    file with the command, `anvi-trnaseq --default-\nfeature-param-file`. Dashes in\
    \ the default file show\nparameters that cannot be changed, because they do not\n\
    exist or are set in stone. For instance, the program\nonly detects base pairing\
    \ in stems, so only stem\nfeatures are parameterized with a maximum allowed\n\
    number of unpaired nucleotides, while every other\nfeature has a dash in the \"\
    Number allowed unpaired\"\ncolumn. Two quotes in the default file show parameters\n\
    that are not currently set. To lift a constraint, a\nparameter value can be replaced\
    \ by \"\". For instance,\nthe conserved purine at D loop/position 21 indicated\n\
    by the value, 0,R, can be replaced by \"\" to prevent\nthe program from seeking\
    \ a conserved nucleotide there.\nConserved nucleotides in a feature are set by\
    \ pairs of\nzero-based indices and nucleotide symbols. The index\nindicates the\
    \ conserved position in the feature,\nrelative to the 5' end of the feature. The\
    \ nucleotide\nsymbol can be A, C, G, T (U in cDNA), R (purine), or Y\n(pyrimidine).\
    \ The index is separated from the symbol\nby a comma. Multiple conserved positions\
    \ in a feature\nare separted by a semicolon. Feature profiling of a\nsequence\
    \ halts when the number of allowed unconserved\nnucleotides in a feature or the\
    \ number of allowed\nunpaired positions in a stem is exceeded. The default\nallowed\
    \ number of unconserved nucleotides in the D\nloop, for example, is 1, so 4 of\
    \ the 5 conserved\npositions must be found for the D loop to be\npositively identified.\
    \ By default, 1 position is\nallowed to be unpaired (no Watson-Crick or G-T wobble\n\
    base pair) in each of the 4 stems; the user could, for\ninstance, lift this constraint\
    \ on the acceptor stem by\nchanging the value from 1 to \"\". There are 4 variable-\n\
    length sections of tRNA. The user could, for whatever\nstrange reason, prevent\
    \ the program from considering D\nstems of length 3 as well as 4 by changing the\
    \ allowed\nlengths of the distal section of the D stem, positions\n13 and 22,\
    \ from 0-1 to 1-1. (Logically, the allowed\nlength range of both paired positions\
    \ in the stem, 13\nand 22, must be changed here.) (default: None)"
  type: File?
  inputBinding:
    prefix: --feature-param-file
- id: in_min_length_long_five_prime
  doc: "tRNA reads often extend beyond the 5' end of a mature\ntRNA sequence. This\
    \ can be biological in origin when\nthe read is from pre-tRNA; artifactual in\
    \ origin when\nthe reverse transcriptase runs off the end of the\ntemplate, adding\
    \ a small number ofs random bases; or\nartifactual when the read is a chimera\
    \ of tRNA at the\n3' end and another, potentially non-tRNA, transcript\nat the\
    \ 5' end. Longer 5' extensions are more likely to\nbe biological than artifactual\
    \ due to the exclusion of\nrunoff bases. This parameter sets the minimum length\n\
    of 5' sequence extensions that are recorded in the\ntRNA-seq database output for\
    \ further analysis.\n(default: 4)"
  type: long?
  inputBinding:
    prefix: --min-length-long-fiveprime
- id: in_min_trna_fragment_size
  doc: "Anvi'o profiles a sequence as tRNA by identifying tRNA\nfeatures from the\
    \ 3' end of the sequence. tRNA-seq\ndatasets can include a significant number\
    \ of tRNA\nfragments that are not from the 3' end of the sequence\nending in a\
    \ recognized acceptor tail (CCA, CC, C,\nCCAN, CCANN). These \"interior\" and\
    \ 5' fragments can be\nof significant biological interest. Fragments are\nidentified\
    \ by mapping unprofiled reads to profiled\ntRNAs that have their 3' acceptor variants\
    \ trimmed\noff. This parameter sets the minimum length of\nunprofiled reads searched\
    \ in this manner. The choice\nof 25 as the default value is motivated by\nconsiderations\
    \ of false positive matches and\ncomputational performance with a shorter minimum\n\
    sequence length. Since unprofiled reads are mapped to\nevery unique profiled tRNA\
    \ sequence, a shorter minimum\nsequence length can make mapping take a very long\
    \ time\nand return too many alignments to store in memory for\ndatasets of millions\
    \ of reads. Pay attention to python\nmemory usage if you adjust this parameter\
    \ downwards."
  type: long?
  inputBinding:
    prefix: --min-trna-fragment-size
- id: in_agglomeration_max_mismatch_freq
  doc: "Anvi'o finds potential tRNA modifications by first\nagglomerating sequences\
    \ differing from one or more\nother sequences in the cluster by mismatches at\
    \ a\ncertain fraction of nucleotides. This parameter sets\nthe maximum mismatch\
    \ fraction that is allowed, by\ndefault 2/71. This number represents 2 mismatches\
    \ in a\nfull-length tRNA of length 74, not 71, as 3' sequence\nvariants, including\
    \ the canonical 3'-CCA, are trimmed\noff prior to sequences being agglomerated.\
    \ (Average\nnon-mitochondrial tRNAs range in length from 74-95.)\nFor example,\
    \ consider 3 trimmed sequences of length 71\n-- A, B and C -- and 1 sequence of\
    \ length 70, D. If A\ndiffers from B by a substitution at position 1, and C\n\
    differs from B at positions 10 and 20, such that C\ndiffers from A by 3 substitutions,\
    \ then A, B, and C\nwill still agglomerate into a single cluster, as each\ndiffers\
    \ by no more than 2 substitutions from some\nother sequence in the cluster. In\
    \ contrast, sequence D\ndiffers from B at positions 30 and 40, exceeding the\n\
    2/71 fraction required to agglomerate (2/70 > 2/71),\nso D forms its own cluster\
    \ and is not consolidated\ninto a single modified sequence with the others.\n\
    (default: 0.028169014084507043)"
  type: double?
  inputBinding:
    prefix: --agglomeration-max-mismatch-freq
- id: in_five_prime_most_deletion_start
  doc: "The 5'-most position relative to a potential modified\nnucleotide at which\
    \ prospective deletions can begin.\nThe default value of -2 means deletions can\
    \ start at\nmost 2 nucleotides 5' of a modification. Logically,\nthe parameter\
    \ value must be less than or equal to the\nvalue of --threeprimemost-deletion-start\
    \ and less than\nor equal to the value of --fiveprimemost-deletion-\nstop. (default:\
    \ -2)"
  type: long?
  inputBinding:
    prefix: --fiveprimemost-deletion-start
- id: in_three_prime_most_deletion_start
  doc: "The 3'-most position relative to a potential modified\nnucleotide at which\
    \ prospective deletions can begin.\nThe default value of 0 means the 3'-most start\n\
    position of a deletion is the modification site\nitself. Logically, the parameter\
    \ value must be greater\nthan or equal to the value of --fiveprimemost-\ndeletion-start\
    \ and less than or equal to the value of\n--threeprimemost-deletion-stop. (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --threeprimemost-deletion-start
- id: in_five_prime_most_deletion_stop
  doc: "The 5'-most position relative to a potential modified\nnucleotide at which\
    \ prospective deletions can end. The\ndefault value of -1 means deletions can\
    \ end at most 1\nnucleotide 5' of a modification. Logically, the\nparameter value\
    \ must be greater than or equal to the\nvalue of --fiveprimemost-deletion-start\
    \ and less than\nor equal to the value of --threeprimemost-deletion-\nstop. (default:\
    \ -1)"
  type: long?
  inputBinding:
    prefix: --fiveprimemost-deletion-stop
- id: in_three_prime_most_deletion_stop
  doc: "The 3'-most position relative to a potential modified\nnucleotide at which\
    \ prospective deletions can end. The\ndefault value of 0 means the 3'-most stop\
    \ position of\na deletion is the modification site itself. Logically,\nthe parameter\
    \ value must be greater than or equal to\nthe value of --threeprimemost-deletion-start\
    \ and\ngreater than or equal to the value of --fiveprimemost-\ndeletion-stop.\
    \ (default: 0)"
  type: long?
  inputBinding:
    prefix: --threeprimemost-deletion-stop
- id: in_max_distinct_deletions
  doc: "The maximum number of distinct deletions -- which can\nbe of varying size\
    \ -- that can be introduced around\npotential modifications in the search for\
    \ deletions.\nHigher values of this parameter may lead to\nidentification of more\
    \ deletions (at the expense of\nruntime). For example, with the default value\
    \ of 2 and\na sequence containing 3 potential substitutions\npositions, then some\
    \ in silico template sequences will\nbe produced containing deletions around the\
    \ first\nposition; others will be produced containing deletions\nat the first\
    \ and second positions; the first and third\npositions; the second position; the\
    \ second and third;\nand the third. (default: 2)"
  type: long?
  inputBinding:
    prefix: --max-distinct-deletions
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast. (default: 1)"
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_skip_fast_a_check
  doc: "Don't check the input FASTA file for such things as\nproper defline formatting\
    \ to speed things up.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip-fasta-check
- id: in_write_buffer_size
  doc: "The number of tRNA feature profiles to be kept in\nmemory before writing to\
    \ the tRNA-seq database. The\ndefault is 100,000. The larger the buffer size,\
    \ the\nless frequently the program will access the disk, yet\nthe more memory\
    \ will be consumed, as profiles are\ncleared from memory once processed. Keep\
    \ an eye on\npython memory usage to make sure it never exceeds the\nphysical memory\
    \ limit. (default: 100000)"
  type: long?
  inputBinding:
    prefix: --write-buffer-size
- id: in_alignment_target_chunk_size
  doc: "The anvi'o sequence aligner manages memory consumption\nby chunking the list\
    \ of alignment targets, so that\nqueries are aligned to the first chunk of targets,\n\
    then the second chunk, and so on. This parameter sets\nthe maximum number of target\
    \ sequences in each chunk\n(by default 20000). Memory management becomes\nimportant\
    \ when aligning short queries to a large\nnumber of targets, which involves searching\
    \ queries\nagainst a massive number of k-mers (equal in length to\nthe shortest\
    \ query) that have been extracted from\ntargets. Adjust this parameter downward\
    \ if your system\nruns out of memory during alignment; adjust this\nparameter\
    \ upward to speed up alignment if you find\nthat you are not memory-limited. Ideally,\
    \ we would set\nthis parameter using a heuristic function\nparameterized with\
    \ the numbers and lengths of query\nand target sequences..."
  type: long?
  inputBinding:
    prefix: --alignment-target-chunk-size
- id: in_fragment_mapping_query_chunk_length
  doc: "Mapping potential tRNA fragments to profiled tRNA can\ngenerate massive data\
    \ structures. To manage memory\nconsumption, the fragment queries are chunked\
    \ and run\nas separate alignment tasks. Queries are chunked based\non sequence\
    \ length, as longer k-mers can be used with\nlonger queries to speed up mapping.\
    \ This parameter\nsets the sequence length interval used to chunk\nqueries. For\
    \ a standard tRNA-seq dataset with --min-\ntrna-fragment-size set to the default\
    \ of 25 and a\nmaximum unprofiled query length of, say, 170, the\ndefault length\
    \ interval of 20 would result in 8\nchunks. Adjust this parameter downward if\
    \ your system\nruns out of memory during alignment; adjust this\nparameter upward\
    \ to speed up alignment if you find\nthat you are not memory-limited. Ideally,\
    \ we would set\nthis parameter using a heuristic function\nparameterized with\
    \ the numbers and lengths of query\nand target sequences..."
  type: long?
  inputBinding:
    prefix: --fragment-mapping-query-chunk-length
- id: in_alignment_progress_interval
  doc: "Progress is reported after a certain number of queries\nhave been processed\
    \ (by default 100000) in mapping\nunprofiled sequences to profiled tRNA to find\
    \ interior\nand 5' tRNA fragments and in mapping sequences to each\nother in agglomeration,\
    \ a stage in the identification\nof modifications."
  type: long?
  inputBinding:
    prefix: --alignment-progress-interval
- id: in_agglomeration_progress_interval
  doc: "Progress in sequence agglomeration, a stage in the\nidentification of modifications,\
    \ is reported after a\ncertain number of sequences have been processed.\n(default:\
    \ 10000)"
  type: long?
  inputBinding:
    prefix: --agglomeration-progress-interval
- id: in_default_feature_param_file
  doc: "Writes a tab-delimited .ini file containing default\ntRNA feature parameterizations\
    \ used in de novo\nprofiling/identification of tRNA sequences from the 3'\nend.\
    \ Parameters can be modified by the user and the\nfile fed back into anvi-trnaseq\
    \ through the --feature-\nparam-file argument, the help description of which\n\
    explains the file format. (default: None)"
  type: File?
  inputBinding:
    prefix: --default-feature-param-file
- id: in_print_default_feature_params
  doc: "Prints to standard output a nicely formatted table of\nthe default tRNA feature\
    \ parameterizations (which can\nbe written to a tab-delimited .ini file by the\
    \ option,\n--default-feature-param-file). (default: False)"
  type: File?
  inputBinding:
    prefix: --print-default-feature-params
- id: in__can_provide
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_trna_seq_db
  doc: '🍺 More on `anvi-trnaseq`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_default_feature_param_file
  doc: "Writes a tab-delimited .ini file containing default\ntRNA feature parameterizations\
    \ used in de novo\nprofiling/identification of tRNA sequences from the 3'\nend.\
    \ Parameters can be modified by the user and the\nfile fed back into anvi-trnaseq\
    \ through the --feature-\nparam-file argument, the help description of which\n\
    explains the file format. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_default_feature_param_file)
- id: out_print_default_feature_params
  doc: "Prints to standard output a nicely formatted table of\nthe default tRNA feature\
    \ parameterizations (which can\nbe written to a tab-delimited .ini file by the\
    \ option,\n--default-feature-param-file). (default: False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_print_default_feature_params)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-trnaseq
