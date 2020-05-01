#!/usr/bin/env cwl-runner

baseCommand:
- meryl
class: CommandLineTool
cwlVersion: v1.0
id: meryl
inputs:
- doc: count is the minimum count for all databases.  If the mer does NOT exist in
    all databases, the mer has a zero count, and is NOT in the output.
  id: min
  inputBinding:
    position: 0
  type: long
- doc: count is the minimum count for all databases that contain the mer
  id: min_exist
  inputBinding:
    position: 1
  type: long
- doc: count is the maximum count for all databases
  id: max
  inputBinding:
    position: 2
  type: long
- doc: count is sum of the counts for all databases
  id: add
  inputBinding:
    position: 3
  type: string
- doc: count is the first minus the second (binary only)
  id: sub
  inputBinding:
    position: 4
  type: string
- doc: count is the absolute value of the first minus the second (binary only)
  id: abs
  inputBinding:
    position: 5
  type: string
- doc: outputs mer iff it exists in all databases
  id: and
  inputBinding:
    position: 0
  type: string
- doc: outputs mer iff it exists in at least one, but not all, databases
  id: nand
  inputBinding:
    position: 1
  type: string
- doc: outputs mer iff it exists in at least one database
  id: or
  inputBinding:
    position: 2
  type: string
- doc: outputs mer iff it exists in an odd number of databases
  id: xor
  inputBinding:
    position: 3
  type: string
- doc: '#          (size of a mer; required)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '#          (homopolymer compression; optional)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: (enable positions)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (seq.fasta is scanned to determine the number of mers)
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: '#          (compute params assuming file with this many mers in it)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: priority.
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: (only build for the forward strand)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: (only build for the reverse strand)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: (use canonical mers, assumes both strands)
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: "#          (DON'T save mers that occur less than # times)"
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: "#          (DON'T save mers that occur more than # times)"
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: '#          (size of a mer; required)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '#          (homopolymer compression; optional)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: (enable positions)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (sequence to build the table for)
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: (output table prefix)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: (entertain the user)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: (use n threads to build)
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: (use at most m MB of memory per segment)
  id: memory
  inputBinding:
    prefix: -memory
  type: string
- doc: (use n segments)
  id: segments
  inputBinding:
    prefix: -segments
  type: string
- doc: (use at most m MB of memory per segment)
  id: memory
  inputBinding:
    prefix: -memory
  type: string
- doc: (use n segments)
  id: segments
  inputBinding:
    prefix: -segments
  type: string
- doc: (create the batches)
  id: config_batch
  inputBinding:
    prefix: -configbatch
  type: boolean
- doc: (run batch number n)
  id: count_batch
  inputBinding:
    prefix: -countbatch
  type: string
- doc: (merge the batches)
  id: merge_batch
  inputBinding:
    prefix: -mergebatch
  type: boolean
- doc: jobname      unique job name for this execution.  Meryl will submit jobs with
    name mpjobname, ncjobname, nmjobname, for phases prepare, count and merge.
  id: sge
  inputBinding:
    prefix: -sge
  type: boolean
- doc: '"options"    any additional options to sge, e.g.,'
  id: sge_build
  inputBinding:
    prefix: -sgebuild
  type: boolean
- doc: '"options"    "-p -153 -pe thread 2 -A merylaccount" N.B. - -N will be ignored
    N.B. - be sure to quote the options'
  id: sg_emerge
  inputBinding:
    prefix: -sgemerge
  type: boolean
- doc: (use tblprefix as a database)
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: (create this output)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: (entertain the user)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Dump a histogram of the distance between the same mers.
  id: dd
  inputBinding:
    prefix: -Dd
  type: boolean
- doc: Dump mers >= a threshold.  Use -n to specify the threshold.
  id: dt
  inputBinding:
    prefix: -Dt
  type: boolean
- doc: Count the number of mers, distinct mers and unique mers.
  id: dc
  inputBinding:
    prefix: -Dc
  type: boolean
- doc: Dump (to stdout) a histogram of mer counts.
  id: dh
  inputBinding:
    prefix: -Dh
  type: boolean
- doc: Read the count table from here (leave off the .mcdat or .mcidx).
  id: s
  inputBinding:
    prefix: -s
  type: boolean
