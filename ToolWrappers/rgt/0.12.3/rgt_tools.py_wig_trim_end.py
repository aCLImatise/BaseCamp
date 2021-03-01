from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgt_Tools_Py_Wig_Trim_End_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_wig_trim_end", base_command=["rgt-tools.py", "wig_trim_end"], inputs=[ToolInput(tag="in_input_wig_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input WIG file")), ToolInput(tag="in_output_wig_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output WIG file")), ToolInput(tag="in_chro_size", input_type=Boolean(optional=True), prefix="-chrosize", doc=InputDocumentation(doc="Define path to the chromosome size file"))], outputs=[ToolOutput(tag="out_output_wig_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_wig_file", type_hint=File()), doc=OutputDocumentation(doc="Output WIG file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Wig_Trim_End_V0_1_0().translate("wdl", allow_empty_container=True)

