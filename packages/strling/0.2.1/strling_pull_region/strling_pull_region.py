from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Strling_Pull_Region_V0_1_0 = CommandToolBuilder(tool="strling_pull_region", base_command=["strling", "pull_region"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="path to fasta file, only required for cram")), ToolInput(tag="in_output_bam", input_type=File(optional=True), prefix="--output-bam", doc=InputDocumentation(doc="path to output bam (default: extracted.bam)")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="region"))], outputs=[ToolOutput(tag="out_output_bam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bam", type_hint=File()), doc=OutputDocumentation(doc="path to output bam (default: extracted.bam)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strling_Pull_Region_V0_1_0().translate("wdl", allow_empty_container=True)

