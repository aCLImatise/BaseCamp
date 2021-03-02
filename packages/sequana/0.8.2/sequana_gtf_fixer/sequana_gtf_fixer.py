from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sequana_Gtf_Fixer_V0_1_0 = CommandToolBuilder(tool="sequana_gtf_fixer", base_command=["sequana_gtf_fixer"], inputs=[ToolInput(tag="in_input_gtf_file", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input GTF file")), ToolInput(tag="in_output_gtf_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output GTF file")), ToolInput(tag="in_gtf_fixer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_gtf_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gtf_file", type_hint=File()), doc=OutputDocumentation(doc="output GTF file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Gtf_Fixer_V0_1_0().translate("wdl", allow_empty_container=True)

