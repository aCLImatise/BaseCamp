from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Dimspy_Get_Peaklists_V0_1_0 = CommandToolBuilder(tool="dimspy_get_peaklists", base_command=["dimspy", "get-peaklists"], inputs=[ToolInput(tag="in_input", input_type=Int(optional=True), prefix="--input", doc=InputDocumentation(doc="Single or Multiple HDF5 files that contain a peak\nmatrix object from one of the processing steps.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peaklist objects to.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Get_Peaklists_V0_1_0().translate("wdl", allow_empty_container=True)

