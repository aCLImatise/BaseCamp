from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Generatemfi_Py_V0_1_0 = CommandToolBuilder(tool="generateMFI.py", base_command=["generateMFI.py"], inputs=[ToolInput(tag="in_file_location_flow", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the Flow Result file.")), ToolInput(tag="in_what_calculate_centroids", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="what to calculate for centroids.")), ToolInput(tag="in_file_location_mfi", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="File location for the MFI output file.")), ToolInput(tag="in_remove_columns", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_location_mfi", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_location_mfi", type_hint=File()), doc=OutputDocumentation(doc="File location for the MFI output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generatemfi_Py_V0_1_0().translate("wdl", allow_empty_container=True)

