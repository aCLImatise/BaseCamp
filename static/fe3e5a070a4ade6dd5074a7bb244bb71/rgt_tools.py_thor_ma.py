from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int

Rgt_Tools_Py_Thor_Ma_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_thor_ma", base_command=["rgt-tools.py", "thor_ma"], inputs=[ToolInput(tag="in_input_data_config", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Input data config.")), ToolInput(tag="in_thor", input_type=Directory(optional=True), prefix="-thor", doc=InputDocumentation(doc="result  Output directory of THOR.")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_define_extension_size", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Define the extension size.")), ToolInput(tag="in_size_define_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="size        Define the bin size.")), ToolInput(tag="in_result", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_thor", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_thor", type_hint=File()), doc=OutputDocumentation(doc="result  Output directory of THOR.")), ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Thor_Ma_V0_1_0().translate("wdl", allow_empty_container=True)

