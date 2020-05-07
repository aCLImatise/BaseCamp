class: CommandLineTool
id: RepEnrich.py.cwl
inputs:
- id: annotation_file
  doc: 'List RepeatMasker.org annotation file for your organism. The file may be downloaded
    from the RepeatMasker.org website. Example: /data/annotation/hg19/hg19_repeatmasker.txt'
  type: string
  inputBinding:
    position: 0
- id: output_folder
  doc: 'List folder to contain results. Example: /outputfolder'
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: 'Enter prefix name for data. Example: HeLa_InputChIPseq_Rep1'
  type: string
  inputBinding:
    position: 2
- id: setup_folder
  doc: List folder that contains the repeat element psuedogenomes. Example /data/annotation/hg19/setup_folder
  type: string
  inputBinding:
    position: 3
- id: fast_q_file
  doc: Enter file for the fastq reads that map to multiple locations. Example /data/multimap.fastq
  type: string
  inputBinding:
    position: 4
- id: alignment_bam
  doc: Enter bamfile output for reads that map uniquely. Example /bamfiles/old.bam
  type: string
  inputBinding:
    position: 5
- id: paired_end
  doc: Designate this option for paired-end sequencing. Default FALSE change to TRUE
  type: string
  inputBinding:
    prefix: --pairedend
- id: collapse_repeat
  doc: Designate this option to generate a collapsed repeat type. Uncollapsed output
    is generated in addition to collapsed repeat type. Simple_repeat is default to
    simplify downstream analysis. You can change the default to another repeat name
    to collapse a seperate specific repeat instead or if the name of Simple_repeat
    is different for your organism. Default Simple_repeat
  type: string
  inputBinding:
    prefix: --collapserepeat
- id: threshold
  doc: This option specifies overlap between repetitive elements and reads that map
    uniquely to the genome. You should change the option depending on the read length.
    We felt that the the value should be close to half read length. Default 21
  type: string
  inputBinding:
    prefix: --threshold
- id: tolerance
  doc: This option helps to modifies the scrutiny of the region sorter. Default 500
  type: string
  inputBinding:
    prefix: --tolerance
- id: fastqfile2
  doc: Enter fastqfile2 when using paired-end option. Default none
  type: string
  inputBinding:
    prefix: --fastqfile2
- id: cpus
  doc: 'Enter available cpus per node. The more cpus the faster RepEnrich performs.
    RepEnrich is designed to only work on one node. Default: "1"'
  type: string
  inputBinding:
    prefix: --cpus
- id: all_count_method
  doc: By default the pipeline only outputs the fraction count method. Consdidered
    to be the best way to count multimapped reads. Changing this option will include
    the unique count method, a conservative count, and the total count method, a liberal
    counting strategy. Our evaluation of simulated data indicated fraction counting
    is best. Default = FALSE, change to TRUE
  type: string
  inputBinding:
    prefix: --allcountmethod
- id: is_bed
  doc: Is the annotation file a bed file. This is also a compatible format. The file
    needs to be a tab seperated bed with optional fields. Ex. format chr start end
    Name_element class family. The class and family should identical to name_element
    if not applicable. Default FALSE change to TRUE
  type: string
  inputBinding:
    prefix: --is_bed
outputs: []
cwlVersion: v1.1
baseCommand:
- RepEnrich.py
