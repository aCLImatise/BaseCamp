class: CommandLineTool
id: meryl.cwl
inputs:
- id: min
  doc: count is the minimum count for all databases.  If the mer does NOT exist in
    all databases, the mer has a zero count, and is NOT in the output.
  type: long
  inputBinding:
    position: 0
- id: min_exist
  doc: count is the minimum count for all databases that contain the mer
  type: long
  inputBinding:
    position: 1
- id: max
  doc: count is the maximum count for all databases
  type: long
  inputBinding:
    position: 2
- id: add
  doc: count is sum of the counts for all databases
  type: string
  inputBinding:
    position: 3
- id: sub
  doc: count is the first minus the second (binary only)
  type: string
  inputBinding:
    position: 4
- id: abs
  doc: count is the absolute value of the first minus the second (binary only)
  type: string
  inputBinding:
    position: 5
- id: and
  doc: outputs mer iff it exists in all databases
  type: string
  inputBinding:
    position: 0
- id: nand
  doc: outputs mer iff it exists in at least one, but not all, databases
  type: string
  inputBinding:
    position: 1
- id: or
  doc: outputs mer iff it exists in at least one database
  type: string
  inputBinding:
    position: 2
- id: xor
  doc: outputs mer iff it exists in an odd number of databases
  type: string
  inputBinding:
    position: 3
- id: m
  doc: '#          (size of a mer; required)'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: '#          (homopolymer compression; optional)'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: (enable positions)
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: (seq.fasta is scanned to determine the number of mers)
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: '#          (compute params assuming file with this many mers in it)'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: priority.
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: (only build for the forward strand)
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: (only build for the reverse strand)
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: (use canonical mers, assumes both strands)
  type: boolean
  inputBinding:
    prefix: -C
- id: l
  doc: "#          (DON'T save mers that occur less than # times)"
  type: boolean
  inputBinding:
    prefix: -L
- id: u
  doc: "#          (DON'T save mers that occur more than # times)"
  type: boolean
  inputBinding:
    prefix: -U
- id: m
  doc: '#          (size of a mer; required)'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: '#          (homopolymer compression; optional)'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: (enable positions)
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: (sequence to build the table for)
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: (output table prefix)
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: (entertain the user)
  type: boolean
  inputBinding:
    prefix: -v
- id: threads
  doc: (use n threads to build)
  type: string
  inputBinding:
    prefix: -threads
- id: memory
  doc: (use at most m MB of memory per segment)
  type: string
  inputBinding:
    prefix: -memory
- id: segments
  doc: (use n segments)
  type: string
  inputBinding:
    prefix: -segments
- id: memory
  doc: (use at most m MB of memory per segment)
  type: string
  inputBinding:
    prefix: -memory
- id: segments
  doc: (use n segments)
  type: string
  inputBinding:
    prefix: -segments
- id: config_batch
  doc: (create the batches)
  type: boolean
  inputBinding:
    prefix: -configbatch
- id: count_batch
  doc: (run batch number n)
  type: string
  inputBinding:
    prefix: -countbatch
- id: merge_batch
  doc: (merge the batches)
  type: boolean
  inputBinding:
    prefix: -mergebatch
- id: sge
  doc: jobname      unique job name for this execution.  Meryl will submit jobs with
    name mpjobname, ncjobname, nmjobname, for phases prepare, count and merge.
  type: boolean
  inputBinding:
    prefix: -sge
- id: sge_build
  doc: '"options"    any additional options to sge, e.g.,'
  type: boolean
  inputBinding:
    prefix: -sgebuild
- id: sg_emerge
  doc: '"options"    "-p -153 -pe thread 2 -A merylaccount" N.B. - -N will be ignored
    N.B. - be sure to quote the options'
  type: boolean
  inputBinding:
    prefix: -sgemerge
- id: s
  doc: (use tblprefix as a database)
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: (create this output)
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: (entertain the user)
  type: boolean
  inputBinding:
    prefix: -v
- id: dd
  doc: Dump a histogram of the distance between the same mers.
  type: boolean
  inputBinding:
    prefix: -Dd
- id: dt
  doc: Dump mers >= a threshold.  Use -n to specify the threshold.
  type: boolean
  inputBinding:
    prefix: -Dt
- id: dc
  doc: Count the number of mers, distinct mers and unique mers.
  type: boolean
  inputBinding:
    prefix: -Dc
- id: dh
  doc: Dump (to stdout) a histogram of mer counts.
  type: boolean
  inputBinding:
    prefix: -Dh
- id: s
  doc: Read the count table from here (leave off the .mcdat or .mcidx).
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- meryl
