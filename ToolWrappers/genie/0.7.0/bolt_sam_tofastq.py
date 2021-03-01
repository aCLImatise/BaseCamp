from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Bolt_Sam_Tofastq_V0_1_0 = CommandToolBuilder(tool="bolt_sam_tofastq", base_command=["bolt", "sam", "tofastq"], inputs=[ToolInput(tag="in_excluded_flags", input_type=Int(optional=True), prefix="--excludedflags", doc=InputDocumentation(doc="excluded flags (int16)")), ToolInput(tag="in_fq", input_type=File(optional=True), prefix="--fq", doc=InputDocumentation(doc="Output FASTQ file (fq1 for paired-end reads) (*require)")), ToolInput(tag="in_fq_two", input_type=Int(optional=True), prefix="--fq2", doc=InputDocumentation(doc="Output FASTQ2 for paired-end reads (If empty, all data will be at fq)")), ToolInput(tag="in_required_flags", input_type=Int(optional=True), prefix="--requiredflags", doc=InputDocumentation(doc="required flags (int16)")), ToolInput(tag="in_input_sam_file", input_type=File(optional=True), prefix="--sam", doc=InputDocumentation(doc="Input SAM file (*require)")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to_fast_q", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fq", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ file (fq1 for paired-end reads) (*require)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Sam_Tofastq_V0_1_0().translate("wdl", allow_empty_container=True)

