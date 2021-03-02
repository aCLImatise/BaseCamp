from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Venn_Gchart_Py_V0_1_0 = CommandToolBuilder(tool="venn_gchart.py", base_command=["venn_gchart.py"], inputs=[ToolInput(tag="in_file_use_leftmost", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="File to use for the left-most circle")), ToolInput(tag="in_file_use_rightmost", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="File to use for the right-most circle")), ToolInput(tag="in_file_use_bottom", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="File to use for the bottom circle")), ToolInput(tag="in_colors", input_type=Int(optional=True), prefix="--colors", doc=InputDocumentation(doc="Optional comma-separated list of hex colors for circles a,\nb, and c. E.g. 00FF00,FF0000,0000FF")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="Optional comma-separated list of labels for a, b, and c")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Optional size of PNG, in pixels. Default is '300x300'")), ToolInput(tag="in_output_file_save", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file to save as, in PNG format")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="run test, overriding all other options."))], outputs=[ToolOutput(tag="out_output_file_save", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_save", type_hint=File()), doc=OutputDocumentation(doc="Output file to save as, in PNG format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Venn_Gchart_Py_V0_1_0().translate("wdl", allow_empty_container=True)

