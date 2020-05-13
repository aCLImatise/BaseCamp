class: CommandLineTool
id: bwa_mem.pl.cwl
inputs:
- id: outdir
  doc: -o   Folder to output result to.
  type: boolean
  inputBinding:
    prefix: -outdir
- id: reference
  doc: -r   Path to reference genome file *.fa[.gz]
  type: boolean
  inputBinding:
    prefix: -reference
- id: sample
  doc: -s   Sample name to be applied to output file.
  type: boolean
  inputBinding:
    prefix: -sample
- id: threads
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: fragment
  doc: -f   Split input into fragements of X million repairs [10]
  type: boolean
  inputBinding:
    prefix: -fragment
- id: no_mark_dup
  doc: -n   Don't mark duplicates
  type: boolean
  inputBinding:
    prefix: -nomarkdup
- id: cram
  doc: -c   Output cram, see '-sc'
  type: boolean
  inputBinding:
    prefix: -cram
- id: scramble
  doc: -sc  Single quoted string of parameters to pass to Scramble when '-c' used
    - '-I,-O' are used internally and should not be provided
  type: boolean
  inputBinding:
    prefix: -scramble
- id: bwa
  doc: -b     Single quoted string of additional parameters to pass to BWA - '-t,-p,-R'
    are used internally and should not be provided
  type: boolean
  inputBinding:
    prefix: -bwa
- id: map_threads
  doc: Number of cores applied to each parallel BWA job when '-t' exceeds this value
    and '-i' is not in use[6]
  type: boolean
  inputBinding:
    prefix: -map_threads
- id: process
  doc: -p   Only process this step then exit, optionally set -index bwamem - only
    applicable if input is bam mark - Run duplicate marking (-index N/A) stats - Generates
    the *.bas file for the final BAM.
  type: boolean
  inputBinding:
    prefix: -process
- id: index
  doc: -i   Optionally restrict '-p' to single job bwamem - 1..<lane_count>
  type: boolean
  inputBinding:
    prefix: -index
- id: bwa_pl
  doc: -l   BWA runs ~8% quicker when using the tcmalloc library from https://github.com/gperftools/
    (assuming number of cores not exceeded) If available specify the path to 'gperftools/lib/libtcmalloc_minimal.so'.
  type: boolean
  inputBinding:
    prefix: -bwa_pl
- id: jobs
  doc: -j   For a parallel step report the number of jobs required
  type: boolean
  inputBinding:
    prefix: -jobs
- id: man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa_mem.pl
