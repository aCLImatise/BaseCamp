class: CommandLineTool
id: anvi_self_test.cwl
inputs:
- id: in_suite
  doc: "A suite of component tests to execute. By default this\nprogram will execute\
    \ the mini test of anvi'o, which\nwill help you to see if your computer and installation\n\
    is able to perform some of the most basic anvi'o\noperations, such as generating\
    \ an anvi'o contigs\ndatabase, profiling BAM files, or starting an\ninteractive\
    \ interface. But you are welcome to execute\ndifferent component tests. Here is\
    \ a list of what is\navailable to you: 'mini', 'metagenomics-full',\n'pangenomics',\
    \ 'interactive-interface', 'metabolism',\n'alons-classifier', 'trnaseq' (default:\
    \ mini)"
  type: string?
  inputBinding:
    prefix: --suite
- id: in_output_dir
  doc: "If you declare an outuput dir, all your data will be\nstored in there, instead\
    \ of being stored in a\ntemporary directroy to be deleted once the tests are\n\
    done. This is particularly useful if you wish to play\nwith general anvi'o output\
    \ files (default: None)"
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_no_interactive
  doc: "Don't show anything interactive (if possible).\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-interactive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-self-test
