from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bolt_Fastq_Split_V0_1_0 = CommandToolBuilder(tool="bolt_fastq_split", base_command=["bolt", "fastq", "split"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="Input FASTQ file (*require)")), ToolInput(tag="in_fq", input_type=File(optional=True), prefix="--fq", doc=InputDocumentation(doc="Output FASTQ1 file (*require)")), ToolInput(tag="in_fq_two", input_type=File(optional=True), prefix="--fq2", doc=InputDocumentation(doc="Output FASTQ2 file (*require)")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_split", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fq", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ1 file (*require)")), ToolOutput(tag="out_fq_two", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fq_two", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ2 file (*require)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Fastq_Split_V0_1_0().translate("wdl", allow_empty_container=True)

