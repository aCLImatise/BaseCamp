from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Lrez_Extract_V0_1_0 = CommandToolBuilder(tool="LRez_extract", base_command=["LRez", "extract"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file to extract barcodes from")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="Region of interest in format chromosome:startPosition-endPosition")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Extract all barcodes")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File where to output the extracted barcodes (optional, default: stdout)")), ToolInput(tag="in_user_x", input_type=Boolean(optional=True), prefix="--userx", doc=InputDocumentation(doc="Consider barcodes that only appear in the RX tag (optional, default: false)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File where to output the extracted barcodes (optional, default: stdout)"))], container="quay.io/biocontainers/lrez:2.0--hc90279e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lrez_Extract_V0_1_0().translate("wdl")

