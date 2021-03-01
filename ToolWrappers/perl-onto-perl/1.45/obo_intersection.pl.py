from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Obo_Intersection_Pl_V0_1_0 = CommandToolBuilder(tool="obo_intersection.pl", base_command=["obo_intersection.pl"], inputs=[ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="OBO input file 1")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="OBO input file 2")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=": obo_intersection.pl [options]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obo_Intersection_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

