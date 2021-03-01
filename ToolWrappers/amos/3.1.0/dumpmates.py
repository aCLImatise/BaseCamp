from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dumpmates_V0_1_0 = CommandToolBuilder(tool="dumpmates", base_command=["dumpmates"], inputs=[ToolInput(tag="in_report_objects_eid", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Report objects by EID instead of IID")), ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_dump_mates", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpmates_V0_1_0().translate("wdl", allow_empty_container=True)

