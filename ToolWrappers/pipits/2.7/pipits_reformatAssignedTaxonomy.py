from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Pipits_Reformatassignedtaxonomy_V0_1_0 = CommandToolBuilder(tool="pipits_reformatAssignedTaxonomy", base_command=["pipits_reformatAssignedTaxonomy"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="--in", doc=InputDocumentation(doc="[REQUIRED] taxonomy assignment output from RDP-CLASSIFIER")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="[REQUIRED] reformatted taxonomy assignment file")), ToolInput(tag="in_minimum_confidence_record", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="[REQUIRED] Minimum confidence to record an assignment")), ToolInput(tag="in_re_format", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_taxonomy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_assignment", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_rdp_classifier_dot", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Reformatassignedtaxonomy_V0_1_0().translate("wdl", allow_empty_container=True)

