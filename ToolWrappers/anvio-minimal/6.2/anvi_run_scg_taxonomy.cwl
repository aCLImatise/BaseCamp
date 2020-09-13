class: CommandLineTool
id: ../../../anvi_run_scg_taxonomy.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_scgs_taxonomy_data_dir
  doc: "The directory for SCGs data to be stored (or read\nfrom, depending on the\
    \ context). If you leave it as is\nwithout specifying anything, anvi'o will set\
    \ up\neverything in (or try to read things from) a pre-\ndefined default directory.\
    \ The advantage of using the\ndefault directory at the time of set up is that\
    \ every\nuser of anvi'o on a computer system will be using a\nsingle data directory,\
    \ but then you may need to run\nthe setup program with superuser privileges. If\
    \ you\ndon't have superuser privileges, then you can use this\nparameter to tell\
    \ anvi'o the location you wish to use\nto setup your databases. If you are using\
    \ a program\n(such as `anvi-run-scg-taxonomy` or `anvi-estimate-\nscg-taxonomy`)\
    \ you will have to use this parameter to\ntell those programs where your data\
    \ are."
  type: File
  inputBinding:
    prefix: --scgs-taxonomy-data-dir
- id: in_min_percent_identity
  doc: "The defualt value for this is 90.0%, and in an ideal\nworld you sholdn't really\
    \ change it. Lowering this\nvalue will probably give you too many hits from\n\
    neighboring genomes, which may ruin your consensus\ntaxonomy (imagine, at 90%\
    \ identity you may match to a\nsingle species, but at 70% identity you may match\
    \ to\nevery species in a genus and your consensus assignment\nmay be influenced\
    \ by that). But once in a while you\nwill have a genome that doesn't have any\
    \ close match\nin GTDB, and you will be curious to find out what it\ncould be.\
    \ So, when you are getting no SCG hits\nwhatsoever, only then you may want to\
    \ play with this\nvalue. In those cases you can run anvi-estimate-scg-\ntaxonomy\
    \ with a `--debug` flag to see what is really\ngoing on. We strongly advice you\
    \ to do this only with\nsingle genomes, and never with metagenomes."
  type: long
  inputBinding:
    prefix: --min-percent-identity
- id: in_num_parallel_processes
  doc: "Maximum number of processes to run in parallel. Please\nnote that this is\
    \ different than number of threads. If\nyou ask for 4 parallel processes, and\
    \ 5 threads,\nanvi'o will run four processes in parallel and assign\n5 threads\
    \ to each. For resource allocation you must\nmultiply the number of processes\
    \ and threads."
  type: long
  inputBinding:
    prefix: --num-parallel-processes
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
- id: in_write_buffer_size
  doc: "How many items should be kept in memory before they\nare written do the disk.\
    \ The default is 500. The\nlarger the buffer size, the less frequent the program\n\
    will access to the disk, yet the more memory will be\nconsumed since the processed\
    \ items will be cleared off\nthe memory only after they are written to the disk.\n\
    The default buffer size will likely work for most\ncases, but if you feel you\
    \ need to reduce it, we trust\nyou. Please keep an eye on the memory usage output\
    \ to\nmake sure the memory use never exceeds the size of the\nphysical memory.\n"
  type: long
  inputBinding:
    prefix: --write-buffer-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-run-scg-taxonomy
