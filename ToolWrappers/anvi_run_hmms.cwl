class: CommandLineTool
id: anvi_run_hmms.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_profile_name_
  doc: "PROFILE NAME, --installed-hmm-profile HMM PROFILE NAME\nWhen you run this\
    \ program without any parameter, it\nruns all 0 HMM profiles installed on your\
    \ system. If\nyou want only a specific one to run, you can select it\nby using\
    \ this parameter. These are the currently\navailable ones: ."
  type: long
  inputBinding:
    prefix: -I
- id: in_also_scan_trnas
  doc: Also scan tRNAs while you're at it.
  type: boolean
  inputBinding:
    prefix: --also-scan-trnas
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -H
- id: in_stop_dot
  doc: "-H HMM PROFILE PATH, --hmm-profile-dir HMM PROFILE PATH\nYou can use this\
    \ parameter you can specify a directory\npath that contain an HMM profile. This\
    \ way you can run\nHMM profiles that are not included in anvi'o. See the\nonline\
    \ to find out about the specifics of this\ndirectory structure ."
  type: string
  inputBinding:
    position: 0
- id: in_goes_dot
  doc: "-T NUM_THREADS, --num-threads NUM_THREADS\nMaximum number of threads to use\
    \ for multithreading\nwhenever possible. Very conservatively, the default is\n\
    1. It is a good idea to not exceed the number of CPUs\n/ cores on your system.\
    \ Plus, please be careful with\nthis option if you are running your commands on\
    \ a SGE\n--if you are clusterizing your runs, and asking for\nmultiple threads\
    \ to use, you may deplete your\nresources very fast."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-run-hmms