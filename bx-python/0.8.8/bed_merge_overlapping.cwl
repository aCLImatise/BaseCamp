#!/usr/bin/env cwl-runner

baseCommand:
- bed_merge_overlapping.py
class: CommandLineTool
cwlVersion: v1.0
id: bed_merge_overlapping.py
