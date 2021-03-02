from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Medpy_Join_Xd_To_Xplus1D_Py_V0_1_0 = CommandToolBuilder(tool="medpy_join_xd_to_xplus1d.py", base_command=["medpy_join_xd_to_xplus1d.py"], inputs=[ToolInput(tag="in_voxel_spacing_newly", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="The voxel spacing of the newly created dimension. Default is 1.")), ToolInput(tag="in_position_where_put", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="The position where to put the new dimension starting from 0. Standard behaviour is to place it in the first position.")), ToolInput(tag="in_ignore_images_datatypes", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Ignore if the images datatypes differ.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="Target volume.")), ToolInput(tag="in_inputs", input_type=String(), position=1, doc=InputDocumentation(doc="Source volumes of same shape and dtype."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Join_Xd_To_Xplus1D_Py_V0_1_0().translate("wdl", allow_empty_container=True)

