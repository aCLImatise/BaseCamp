#!/usr/bin/env cwl-runner

baseCommand:
- seurat-filter-cells.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-filter-cells.r
