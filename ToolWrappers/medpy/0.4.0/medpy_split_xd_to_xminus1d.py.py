from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Split_Xd_To_Xminus1D_Py_V0_1_0 = CommandToolBuilder(tool="medpy_split_xd_to_xminus1d.py", base_command=["medpy_split_xd_to_xminus1d.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source volume.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volumes. Has to include the sequence '{}' in the place\nwhere the volume number should be placed.")), ToolInput(tag="in_dimension", input_type=String(), position=2, doc=InputDocumentation(doc="The dimension along which to split (starting from 0)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Split_Xd_To_Xminus1D_Py_V0_1_0().translate("wdl", allow_empty_container=True)

