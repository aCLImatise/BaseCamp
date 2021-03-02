from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Genomedata_Open_Data_V0_1_0 = CommandToolBuilder(tool="genomedata_open_data", base_command=["genomedata-open-data"], inputs=[ToolInput(tag="in_track_names", input_type=Array(t=String(), optional=True), prefix="--tracknames", doc=InputDocumentation(doc="tracknames to open")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print status updates and diagnostic messages")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_gd_archive", input_type=String(), position=0, doc=InputDocumentation(doc="genomedata archive"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Open_Data_V0_1_0().translate("wdl", allow_empty_container=True)

