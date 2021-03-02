from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Float, Int, File

Chisel_Pseudonormal_V0_1_0 = CommandToolBuilder(tool="chisel_pseudonormal", base_command=["chisel_pseudonormal"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome")), ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="Running directory (default: current directory)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Minimum fraction of diploid genome to select diploid\ncells (default: 0.9)")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Bin size, with or without 'kb' or 'Mb'")), ToolInput(tag="in_chromosomes", input_type=Int(optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="Space-separeted list of chromosomes between apices\n(default: 'chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8\nchr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17\nchr18 chr19 chr20 chr21 chr22')")), ToolInput(tag="in_min_reads", input_type=Int(optional=True), prefix="--minreads", doc=InputDocumentation(doc="Minimum number total reads to select cells (default:\n100000)")), ToolInput(tag="in_sam_tools", input_type=File(optional=True), prefix="--samtools", doc=InputDocumentation(doc="Path to the directory to 'samtools' executable,\nrequired in default mode (default: samtools is\ndirectly called as it is in user $PATH)")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of parallele jobs to use (default: equal to\nnumber of available processors)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory in running directory (default:\n_TMP)")), ToolInput(tag="in_normal", input_type=File(optional=True), prefix="--normal", doc=InputDocumentation(doc="Name of the generated pseudo matched-normal BAM file\n(default: pseudonormal.bam)\n"))], outputs=[], container="quay.io/biocontainers/chisel:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Pseudonormal_V0_1_0().translate("wdl")

