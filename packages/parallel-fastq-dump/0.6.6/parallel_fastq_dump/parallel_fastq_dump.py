from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory

Parallel_Fastq_Dump_V0_1_0 = CommandToolBuilder(tool="parallel_fastq_dump", base_command=["parallel-fastq-dump"], inputs=[ToolInput(tag="in_sra_id", input_type=String(optional=True), prefix="--sra-id", doc=InputDocumentation(doc="SRA id")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="temporary directory")), ToolInput(tag="in_min_spot_id", input_type=Int(optional=True), prefix="--minSpotId", doc=InputDocumentation(doc="Minimum spot id")), ToolInput(tag="in_max_spot_id", input_type=Int(optional=True), prefix="--maxSpotId", doc=InputDocumentation(doc="Maximum spot id"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Fastq_Dump_V0_1_0().translate("wdl", allow_empty_container=True)

