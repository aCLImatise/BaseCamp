#!/usr/bin/env cwl-runner

baseCommand:
- split_and_validate_reads.pl
class: CommandLineTool
cwlVersion: v1.0
id: split_and_validate_reads.pl
