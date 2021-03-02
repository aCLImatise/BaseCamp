from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, String

Load_Overlaps_V0_1_0 = CommandToolBuilder(tool="load_overlaps", base_command=["load-overlaps"], inputs=[ToolInput(tag="in_set_path_populate", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="Set path of the AMOS bank to populate")), ToolInput(tag="in_set_identity_default", input_type=Float(optional=True), prefix="-i", doc=InputDocumentation(doc="Set the minimum alignment identity, default 90")), ToolInput(tag="in_set_maximum_ignorable", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Set maximum ignorable trim length, default 20\nPopulate overlap store based on the all vs. all alignment")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Load_Overlaps_V0_1_0().translate("wdl", allow_empty_container=True)

