from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Scepia_Area27_Locations__V0_1_0 = CommandToolBuilder(tool="scepia_area27_locations.", base_command=["scepia", "area27", "locations."], inputs=[ToolInput(tag="in_sc_epia", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_area_two_seven", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/scepia:0.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scepia_Area27_Locations__V0_1_0().translate("wdl")

