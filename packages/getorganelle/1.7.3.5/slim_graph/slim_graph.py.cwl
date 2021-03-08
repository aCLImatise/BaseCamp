class: CommandLineTool
id: slim_graph.py.cwl
inputs:
- id: in_followed_fungusmt_embryophyta
  doc: "followed with mode embplant_pt, other_pt, embplant_mt,\nembplant_nr, animal_mt,\
    \ fungus_mt, fungus_nr (which\nmeans embryophyta plastome, non-embryophyta plastome,\n\
    plant mitochondrion, plant nuclear ribosomal RNA,\nanimal mitochondrion, fungus\
    \ mitochondrion, fungus\nnuclear ribosomal RNA separately), or a combination of\n\
    above split by comma(s) (corresponds to certain\narguments as following listed).\n\
    ------------------------------------------------------\nembplant_pt      \" --include-priority\n\
    /root/.GetOrganelle/LabelDatabase/embplant_pt.fasta\"\n------------------------------------------------------\n\
    other_pt         \" --include-priority\n/root/.GetOrganelle/LabelDatabase/other_pt.fasta\"\
    \n------------------------------------------------------\nembplant_mt      \"\
    \ --include-priority\n/root/.GetOrganelle/LabelDatabase/embplant_mt.fasta\"\n\
    ------------------------------------------------------\nembplant_nr      \" --include-priority\n\
    /root/.GetOrganelle/LabelDatabase/embplant_nr.fasta\"\n------------------------------------------------------\n\
    animal_mt        \" --include-priority\n/root/.GetOrganelle/LabelDatabase/animal_mt.fasta\"\
    \n------------------------------------------------------\nfungus_mt        \"\
    \ --include-priority\n/root/.GetOrganelle/LabelDatabase/fungus_mt.fasta\"\n------------------------------------------------------\n\
    fungus_nr        \" --include-priority\n/root/.GetOrganelle/LabelDatabase/fungus_nr.fasta\"\
    \n------------------------------------------------------\nother_pt,embplant_mt,fungus_mt\
    \   \" --include-priority\n/root/.GetOrganelle/LabelDatabase/other_pt.fasta,/root\n\
    /.GetOrganelle/LabelDatabase/embplant_mt.fasta,/root/.\nGetOrganelle/LabelDatabase/fungus_mt.fasta\"\
    \n------------------------------------------------------\nFor easy usage and compatibility\
    \ of old versions,\nfollowing redirection would be automatically fulfilled\nwithout\
    \ warning:   plant_cp->embplant_pt;\nplant_pt->embplant_pt;  plant_mt->embplant_mt;\n\
    plant_nr->embplant_nr"
  type: string?
  inputBinding:
    prefix: -F
- id: in_followed_animalmt_fungusmtfungusnr
  doc: "followed with mode embplant_pt, other_pt, embplant_mt,\nembplant_nr, animal_mt,\
    \ fungus_mt,fungus_nr (which\nmeans embryophyta plastome, non-embryophyta plastome,\n\
    plant mitochondrion, plant nuclear ribosomal RNA,\nanimal mitochondrion, fungus\
    \ mitochondrion, fungus\nnuclear ribosomal RNA separately), or a combination of\n\
    above split by comma(s) (be similar to -F and\ncorresponds to certain arguments\
    \ as following listed).\n------------------------------------------------------\n\
    embplant_pt      \" --exclude\n/root/.GetOrganelle/LabelDatabase/embplant_pt.fasta\"\
    \n------------------------------------------------------\nembplant_mt      \"\
    \ --exclude\n/root/.GetOrganelle/LabelDatabase/embplant_mt.fasta\"\n------------------------------------------------------\n\
    embplant_nr      \" --exclude\n/root/.GetOrganelle/LabelDatabase/embplant_nr.fasta\"\
    \n------------------------------------------------------\nanimal_mt        \"\
    \ --exclude\n/root/.GetOrganelle/LabelDatabase/animal_mt.fasta\"\n------------------------------------------------------\n\
    fungus_mt        \" --exclude\n/root/.GetOrganelle/LabelDatabase/fungus_mt.fasta\"\
    \n------------------------------------------------------\nfungus_nr        \"\
    \ --exclude\n/root/.GetOrganelle/LabelDatabase/fungus_nr.fasta\"\n------------------------------------------------------\n\
    embplant_mt,embplant_nr          \" --exclude /root/.Ge\ntOrganelle/LabelDatabase/embplant_mt.fasta,/root/.GetO\n\
    rganelle/LabelDatabase/embplant_nr.fasta\"\n------------------------------------------------------\n\
    For easy usage and compatibility of old versions,\nfollowing redirection would\
    \ be automatically fulfilled\nwithout warning:   plant_cp->embplant_pt;\nplant_pt->embplant_pt;\
    \  plant_mt->embplant_mt;\nplant_nr->embplant_nr"
  type: string?
  inputBinding:
    prefix: -E
- id: in_no_hits
  doc: "Provide treatment for non-hitting contigs.\n------------------------------------------------------\n\
    ex_no_con        keep those connect with hitting-\ninclude contigs. (Default)\n\
    ------------------------------------------------------\nex_no_hit        exclude\
    \ all.\n------------------------------------------------------\nkeep_all     \
    \    keep all\n------------------------------------------------------"
  type: string?
  inputBinding:
    prefix: --no-hits
- id: in_max_slim_extending_len
  doc: "This is used to limit the extending length, below\nwhich a \"non-hit contig\"\
    \ is allowed to be distant from\na \"hit contig\" to be kept. This distance is\
    \ measured\nby the shortest distance connecting those two contigs,\nweighted by\
    \ the depth of the \"hit contig\". This is\nused only when \"--no-hits ex_no_con\"\
    \ was chosen.\nShould be a single INTEGER number or inf (meaning\ninfinite). It\
    \ is supposed to be half of the maximum\nexpected genome size to be safe, but\
    \ could be much\nsmaller if the LabelDatabse is closely related.\nDefault: 15000\
    \ (-F embplant_pt), 50000 (-F\nembplant_mt/fungus_mt/other_pt), 12500 (-F\nembplant_nr/fungus_nr/animal_mt),\n\
    maximum_of_type1_type2 (-F type1,type2), inf (cases\nwithout using -F)"
  type: long?
  inputBinding:
    prefix: --max-slim-extending-len
- id: in_significant
  doc: "Within a contig, if the query-score of hitting A is\nmore than given times\
    \ (Default: 3.0) of the query-\nscore of hitting B, this contig would be treated\
    \ as\nonly A related, rather than both."
  type: double?
  inputBinding:
    prefix: --significant
- id: in_depth_cut_off
  doc: "After detection for target coverage, those beyond\ncertain times (depth cutoff)\
    \ of the detected coverage\nwould be excluded. Default: 10000.0"
  type: double?
  inputBinding:
    prefix: --depth-cutoff
- id: in_min_depth
  doc: "Input a float or integer number. Filter fastg file by\na minimum depth. Default:\
    \ 0.0."
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_max_depth
  doc: "Input a float or integer number. filter fastg file by\na maximum depth. Default:\
    \ inf."
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_merge
  doc: Merge all possible contigs.
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_include
  doc: followed by Blastn database(s)
  type: string?
  inputBinding:
    prefix: --include
- id: in_include_priority
  doc: followed by Blastn database(s).
  type: string?
  inputBinding:
    prefix: --include-priority
- id: in_exclude
  doc: followed by Blastn database(s).
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_exclude_priority
  doc: followed by Blastn database(s)
  type: string?
  inputBinding:
    prefix: --exclude-priority
- id: in_no_hits_labeled_tab
  doc: Choose to disable producing tab file
  type: boolean?
  inputBinding:
    prefix: --no-hits-labeled-tab
- id: in_keep_temp
  doc: "Choose to disable deleting temp files produced by\nblast and this script"
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_out_dir
  doc: "By default the output would be along with the input\nfastg file. But you could\
    \ assign a new directory with\nthis option."
  type: File?
  inputBinding:
    prefix: --out-dir
- id: in_evalue
  doc: 'blastn evalue threshold. Default: 1e-25'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_prefix
  doc: "Add prefix to the output basename. Conflict with \"--\nout-base\"."
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_out_base
  doc: "By default the output basename would be modified based\non the input fastg\
    \ file. But you could assign a new\nbasename with this option. Conflict with \"\
    --prefix\".\nConflict with multiple input files!"
  type: File?
  inputBinding:
    prefix: --out-base
- id: in_log
  doc: Generate log file.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_wrapper
  doc: "Wrapper mode logging when called by get_organelle*.py.\nDefault: False"
  type: boolean?
  inputBinding:
    prefix: --wrapper
- id: in_verbose
  doc: For debug usage.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_continue
  doc: Specified for calling from get_organelle_from_reads.py
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_no_overwrite
  doc: Overwrite existing output result.
  type: boolean?
  inputBinding:
    prefix: --no-overwrite
- id: in_which_blast
  doc: "Assign the path to BLAST binary files if not added to\nthe path. Default:\
    \ try \"/GetOrganelleDep/linux/ncbi-\nblast\" first, then $PATH"
  type: File?
  inputBinding:
    prefix: --which-blast
- id: in_config_dir
  doc: "The directory where the default databases were placed.\nThe default value\
    \ also can be changed by adding\n'export GETORG_PATH=your_favor' to the shell\
    \ script\n(e.g. ~/.bash_profile or ~/.bashrc) Default:\n/root/.GetOrganelle"
  type: File?
  inputBinding:
    prefix: --config-dir
- id: in_threads
  doc: "Threads for blastn.\n"
  type: string?
  inputBinding:
    prefix: --threads
- id: in_your_fast_g_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- slim_graph.py
