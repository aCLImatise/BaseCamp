from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Metagenomics_V0_1_0 = CommandToolBuilder(tool="metagenomics", base_command=["metagenomics"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Launch NTHREADS parallel search threads - default: 1\n(default: 1)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Choose format (default: fastq)")), ToolInput(tag="in_num_primary_assign", input_type=Int(optional=True), prefix="--num_primary_assign", doc=InputDocumentation(doc="It searches for at most <int> distinct, primary\nassignments for each read or pair.Default=5 (default:\n1)")), ToolInput(tag="in_index", input_type=String(optional=True), prefix="--index", doc=InputDocumentation(doc="The basename of the index for the reference genomes\n(default: None)")), ToolInput(tag="in_read_type", input_type=String(optional=True), prefix="--read_type", doc=InputDocumentation(doc="Choose read type, skip if using Trinity assembles\nreads (default: paired)")), ToolInput(tag="in_right_fq", input_type=String(optional=True), prefix="--right_fq", doc=InputDocumentation(doc="Right_fq (only when fastq format is used for read_type\npaired) (default: None)")), ToolInput(tag="in_left_fq", input_type=String(optional=True), prefix="--left_fq", doc=InputDocumentation(doc="Left_fq (only when fastq format is used for read_type\npaired) (default: None)")), ToolInput(tag="in_unpaired_reads", input_type=String(optional=True), prefix="--unpaired_reads", doc=InputDocumentation(doc="Comma-separated list of files containing unpaired\nreads to be aligned (for Trinity runs and single end\nreads) (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagenomics_V0_1_0().translate("wdl", allow_empty_container=True)

