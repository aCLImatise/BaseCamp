class: CommandLineTool
id: rapmap_quasimap.cwl
inputs:
- id: rap_map
  doc: -i <path> [-1 <path>] [-2 <path>] [-r <path>] [-o <path>] [-x] [-t <positive
    integer>] [-s] [--mimicBT2] [--mimicStrictBT2] [--minScoreFrac <ratio in (0,1]>]
    [--maxMMPExtension <positive integer > 1>] [--consensusSlack <ratio in (0,1]>]
    [--ma <positive integer>] [--mm <negative integer>] [--go <positive integer>]
    [--ge <positive integer>] [--dpBandwidth <positive integer>] [--noOrphans] [--noDovetail]
    [--recoverOrphans] [--hardFilter] [-u] [-q] [-c] [-f] [--noStrictCheck] [--noSensitive]
    [-z <double in [0,1]>] [-m <positive integer>] [-n] [--] [--version] [-h]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rapmap
- quasimap
