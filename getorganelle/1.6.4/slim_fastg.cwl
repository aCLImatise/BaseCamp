class: CommandLineTool
id: slim_fastg.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: slim_fast_gp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: your_fast_g_files
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: f
  doc: 'followed with mode embplant_pt, other_pt, embplant_mt, embplant_nr, animal_mt,
    fungus_mt (which means embryophyta plastome, non-embryophyta plastome, plant mitochondrion,
    plant nrDNA, animal mitochondrion, fungus mitochondrion separately), or a combination
    of above split by comma(s) (corresponds to certain arguments as following listed).
    ------------------------------------------------------ embplant_pt      " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_pt.fasta"
    ------------------------------------------------------ other_pt         " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site- packages/GetOrganelleLib/LabelDatabase/other_pt.fasta"
    ------------------------------------------------------ embplant_mt      " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta"
    ------------------------------------------------------ embplant_nr      " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_nr.fasta"
    ------------------------------------------------------ animal_mt        " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/animal_mt.fasta"
    ------------------------------------------------------ fungus_mt        " --include-priority
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/fungus_mt.fasta"
    ------------------------------------------------------ other_pt,embplant_mt,fungus_mt   "
    --include-priority /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/other_pt.fasta,/tmp/tmphg2suakg/l
    ib/python3.8/site-packages/GetOrganelleLib/LabelDataba se/embplant_mt.fasta,/tmp/tmphg2suakg/lib/python3.8/si
    te-packages/GetOrganelleLib/LabelDatabase/fungus_mt.fa sta" ------------------------------------------------------
    For easy usage and compatibility of old versions, following redirection would
    be automatically fulfilled without warning:        plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt;
    plant_nr->embplant_nr'
  type: string
  inputBinding:
    prefix: -F
- id: e
  doc: 'followed with mode embplant_pt, other_pt, embplant_mt, embplant_nr, animal_mt,
    fungus_mt (which means embryophyta plastome, non-embryophyta plastome, plant mitochondrion,
    plant nrDNA, animal mitochondrion, fungus mitochondrion separately), or a combination
    of above split by comma(s) (be similar to -F and corresponds to certain arguments
    as following listed). ------------------------------------------------------ embplant_pt      "
    --exclude /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_pt.fasta"
    ------------------------------------------------------ embplant_mt      " --exclude
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta"
    ------------------------------------------------------ embplant_nr      " --exclude
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_nr.fasta"
    ------------------------------------------------------ animal_mt        " --exclude
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/animal_mt.fasta"
    ------------------------------------------------------ fungus_mt        " --exclude
    /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/fungus_mt.fasta"
    ------------------------------------------------------ embplant_mt,embplant_nr          "
    --exclude /tmp/tmphg2suakg/lib/python3.8/site-packages/GetOrgane lleLib/LabelDatabase/embplant_mt.fasta,/tmp/tmphg2suak
    g/lib/python3.8/site-packages/GetOrganelleLib/LabelDat abase/embplant_nr.fasta"
    ------------------------------------------------------ For easy usage and compatibility
    of old versions, following redirection would be automatically fulfilled without
    warning:         plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt;
    plant_nr->embplant_nr'
  type: string
  inputBinding:
    prefix: -E
- id: no_hits
  doc: Provide treatment for non-hitting contigs. ------------------------------------------------------
    ex_no_con        keep those connect with hitting- include contigs. (Default) ------------------------------------------------------
    ex_no_hit        exclude all. ------------------------------------------------------
    keep_all         keep all ------------------------------------------------------
  type: string
  inputBinding:
    prefix: --no-hits
- id: significant
  doc: 'Within a contig, if the query-score of hitting A is more than given times
    (Default: 3.0) of the query- score of hitting B, this contig would be treated
    as only A related, rather than both.'
  type: string
  inputBinding:
    prefix: --significant
- id: remove_low_dup
  doc: Remove redundant low-coverage contigs that largely overlap some high-coverage
    contigs.
  type: boolean
  inputBinding:
    prefix: --remove-low-dup
- id: depth_cut_off
  doc: 'After detection for target coverage, those beyond certain times (depth cutoff)
    of the detected coverage would be excluded. Default: 10000.0'
  type: string
  inputBinding:
    prefix: --depth-cutoff
- id: min_depth
  doc: 'Input a float or integer number. Filter fastg file by a minimum depth. Default:
    0.0.'
  type: long
  inputBinding:
    prefix: --min-depth
- id: max_depth
  doc: 'Input a float or integer number. filter fastg file by a maximum depth. Default:
    inf.'
  type: long
  inputBinding:
    prefix: --max-depth
- id: merge
  doc: Merge all possible contigs.
  type: boolean
  inputBinding:
    prefix: --merge
- id: include
  doc: followed by Blastn database(s)
  type: string
  inputBinding:
    prefix: --include
- id: include_priority
  doc: followed by Blastn database(s).
  type: string
  inputBinding:
    prefix: --include-priority
- id: exclude
  doc: followed by Blastn database(s).
  type: string
  inputBinding:
    prefix: --exclude
- id: exclude_priority
  doc: followed by Blastn database(s)
  type: string
  inputBinding:
    prefix: --exclude-priority
- id: no_hits_labeled_tab
  doc: Choose to disable producing tab file
  type: boolean
  inputBinding:
    prefix: --no-hits-labeled-tab
- id: keep_temp
  doc: Choose to disable deleting temp files produced by blast and this script
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: out_dir
  doc: By default the output would be along with the input fastg file. But you could
    assign a new directory with this option.
  type: string
  inputBinding:
    prefix: --out-dir
- id: prefix
  doc: Add prefix to the output basename. Conflict with "-- out-base".
  type: string
  inputBinding:
    prefix: --prefix
- id: out_base
  doc: By default the output basename would be modified based on the input fastg file.
    But you could assign a new basename with this option. Conflict with "--prefix".
  type: string
  inputBinding:
    prefix: --out-base
- id: log
  doc: Generate log file.
  type: boolean
  inputBinding:
    prefix: --log
- id: verbose
  doc: For debug usage.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: continue
  doc: Specified for calling from get_organelle_from_reads.py
  type: boolean
  inputBinding:
    prefix: --continue
- id: no_overwrite
  doc: Overwrite existing output result.
  type: boolean
  inputBinding:
    prefix: --no-overwrite
- id: which_blast
  doc: 'Assign the path to BLAST binary files if not added to the path. Default: try
    GetOrganelleDep/linux/ncbi- blast first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-blast
- id: threads
  doc: Threads for blastn.
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- slim_fastg.py
