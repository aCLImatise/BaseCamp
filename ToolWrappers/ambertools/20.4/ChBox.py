from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Chbox_V0_1_0 = CommandToolBuilder(tool="ChBox", base_command=["ChBox"], inputs=[ToolInput(tag="in_original_coordinate_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": the original coordinate file (.RST format, coordinates only)")), ToolInput(tag="in_output_coordinate_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output coordinate file (.RST format)")), ToolInput(tag="in_al", input_type=Boolean(optional=True), prefix="-al", doc=InputDocumentation(doc=": box alpha angle")), ToolInput(tag="in_bt", input_type=Boolean(optional=True), prefix="-bt", doc=InputDocumentation(doc=": box beta angle")), ToolInput(tag="in_gm", input_type=Boolean(optional=True), prefix="-gm", doc=InputDocumentation(doc=": box gamma angle")), ToolInput(tag="in_x_dimension_box", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc=": X dimension of the box")), ToolInput(tag="in_y_dimension_box", input_type=Boolean(optional=True), prefix="-Y", doc=InputDocumentation(doc=": Y dimension of the box")), ToolInput(tag="in_z_dimension_box", input_type=Boolean(optional=True), prefix="-Z", doc=InputDocumentation(doc=": Z dimension of the box"))], outputs=[ToolOutput(tag="out_output_coordinate_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_coordinate_file", type_hint=File()), doc=OutputDocumentation(doc=": the output coordinate file (.RST format)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chbox_V0_1_0().translate("wdl", allow_empty_container=True)

