from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dimspy_Create_Sample_List_V0_1_0 = CommandToolBuilder(tool="dimspy_create_sample_list", base_command=["dimspy", "create-sample-list"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file that contains a peak matrix object from one\nof the processing steps.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Text file to write to.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="Values on each line of the file are separated by this\ncharacter.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Create_Sample_List_V0_1_0().translate("wdl", allow_empty_container=True)

