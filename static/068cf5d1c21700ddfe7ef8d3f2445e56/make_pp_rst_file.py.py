from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory

Make_Pp_Rst_File_Py_V0_1_0 = CommandToolBuilder(tool="make_pp_rst_file.py", base_command=["make_pp_rst_file.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_input_script", input_type=File(optional=True), prefix="--input_script", doc=InputDocumentation(doc="This is the input script for which to  make a .rst\nfile [REQUIRED]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="output directory for .rst files [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="output directory for .rst files [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Pp_Rst_File_Py_V0_1_0().translate("wdl", allow_empty_container=True)

