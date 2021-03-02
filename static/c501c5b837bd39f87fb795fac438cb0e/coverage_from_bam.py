from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Coverage_From_Bam_V0_1_0 = CommandToolBuilder(tool="coverage_from_bam", base_command=["coverage_from_bam"], inputs=[ToolInput(tag="in_regions", input_type=Array(t=String(), optional=True), prefix="--regions", doc=InputDocumentation(doc="Only process given regions. (default: None)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for output, defaults to basename of bam.\n(default: None)")), ToolInput(tag="in_one_file", input_type=File(optional=True), prefix="--one_file", doc=InputDocumentation(doc="Single output file with 'region' column. (default:\nNone)")), ToolInput(tag="in_stride", input_type=Int(optional=True), prefix="--stride", doc=InputDocumentation(doc="Stride in genomic coordinate. (default: 1000)")), ToolInput(tag="in_summary_only", input_type=File(optional=True), prefix="--summary_only", doc=InputDocumentation(doc="Output only the depth_summary.txt file (default:\nFalse)"))], outputs=[ToolOutput(tag="out_one_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_one_file", type_hint=File()), doc=OutputDocumentation(doc="Single output file with 'region' column. (default:\nNone)")), ToolOutput(tag="out_summary_only", output_type=File(optional=True), selector=InputSelector(input_to_select="in_summary_only", type_hint=File()), doc=OutputDocumentation(doc="Output only the depth_summary.txt file (default:\nFalse)"))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_From_Bam_V0_1_0().translate("wdl")

