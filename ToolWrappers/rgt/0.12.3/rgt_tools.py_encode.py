from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Rgt_Tools_Py_Encode_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_encode", base_command=["rgt-tools.py", "encode"], inputs=[ToolInput(tag="in_input_file_list", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file list downloaded from ENCODE")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Encode_V0_1_0().translate("wdl", allow_empty_container=True)

