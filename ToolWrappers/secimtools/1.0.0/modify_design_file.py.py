from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Modify_Design_File_Py_V0_1_0 = CommandToolBuilder(tool="modify_design_file.py", base_command=["modify_design_file.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with uniquedentifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of column in design filewith Group/treatment\ninformation.")), ToolInput(tag="in_drops", input_type=File(optional=True), prefix="--drops", doc=InputDocumentation(doc="Name of the groups in yourgroup/treatment column that\nyou want to remove from the design file.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output path for the new design file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output path for the new design file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modify_Design_File_Py_V0_1_0().translate("wdl", allow_empty_container=True)

