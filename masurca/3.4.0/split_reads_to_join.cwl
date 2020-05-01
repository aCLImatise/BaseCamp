#!/usr/bin/env cwl-runner

baseCommand:
- split_reads_to_join.pl
class: CommandLineTool
cwlVersion: v1.0
id: split_reads_to_join.pl
