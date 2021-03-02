from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Rgt_Tools_Py_Bed_Overlap_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_overlap", base_command=["rgt-tools.py", "bed_overlap"], inputs=[ToolInput(tag="in_input_bed_files", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED files or directory")), ToolInput(tag="in_output_text_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output text file"))], outputs=[ToolOutput(tag="out_output_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_text_file", type_hint=File()), doc=OutputDocumentation(doc="Output text file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

