#!/usr/bin/env cwl-runner

baseCommand:
- fastq_split.pl
class: CommandLineTool
cwlVersion: v1.0
id: fastq_split.pl
