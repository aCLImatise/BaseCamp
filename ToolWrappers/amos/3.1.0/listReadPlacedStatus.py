from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Listreadplacedstatus_V0_1_0 = CommandToolBuilder(tool="listReadPlacedStatus", base_command=["listReadPlacedStatus"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_just_list_singleton", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Just list singleton reads")), ToolInput(tag="in_just_list_duplicate", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="Just list duplicate reads")), ToolInput(tag="in_just_list_placed", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="Just list placed reads")), ToolInput(tag="in_just_list_read_eids", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Just list read EIDs")), ToolInput(tag="in_just_list_read_iids", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Just list read IIDs")), ToolInput(tag="in_list_read_placed_status", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path>")), ToolInput(tag="in_iid", input_type=String(), position=0, doc=InputDocumentation(doc="eid  code  numcontigs  contig iid list"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Listreadplacedstatus_V0_1_0().translate("wdl", allow_empty_container=True)

