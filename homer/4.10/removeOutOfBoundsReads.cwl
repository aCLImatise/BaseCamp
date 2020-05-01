#!/usr/bin/env cwl-runner

baseCommand:
- removeOutOfBoundsReads.pl
class: CommandLineTool
cwlVersion: v1.0
id: removeoutofboundsreads.pl
