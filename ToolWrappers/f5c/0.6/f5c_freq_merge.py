from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

F5C_Freq_Merge_V0_1_0 = CommandToolBuilder(tool="f5c_freq_merge", base_command=["f5c", "freq-merge"], inputs=[ToolInput(tag="in_output_file_write", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file. Write to stdout if not specified")), ToolInput(tag="in_merge", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_multiple", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_methylation", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_frequency", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_one_dot", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_write", type_hint=File()), doc=OutputDocumentation(doc="output file. Write to stdout if not specified"))], container="quay.io/biocontainers/f5c:0.6--h8b6279f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    F5C_Freq_Merge_V0_1_0().translate("wdl")

