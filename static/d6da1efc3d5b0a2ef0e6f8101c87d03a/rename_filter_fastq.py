from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rename_Filter_Fastq_V0_1_0 = CommandToolBuilder(tool="rename_filter_fastq", base_command=["rename_filter_fastq"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (stdout)")), ToolInput(tag="in_base_quality", input_type=String(optional=True), prefix="--base-quality", doc=InputDocumentation(doc="Lowest valide quality score (#)")), ToolInput(tag="in_args_t", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_library", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_Filter_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

