from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Genomedata_Erase_Data_V0_1_0 = CommandToolBuilder(tool="genomedata_erase_data", base_command=["genomedata-erase-data"], inputs=[ToolInput(tag="in_track_name", input_type=Array(t=String(), optional=True), prefix="--trackname", doc=InputDocumentation(doc="tracknames to erase")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print status updates and diagnostic messages"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Erase_Data_V0_1_0().translate("wdl", allow_empty_container=True)

