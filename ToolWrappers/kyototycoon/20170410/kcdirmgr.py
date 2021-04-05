from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kcdirmgr_V0_1_0 = CommandToolBuilder(tool="kcdirmgr", base_command=["kcdirmgr"], inputs=[ToolInput(tag="in_otr", input_type=Boolean(optional=True), prefix="-otr", doc=InputDocumentation(doc="")), ToolInput(tag="in_check", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_clear", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_copy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dump", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_bulk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_import", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_inform", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_load", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove_bulk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_set", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_set_bulk", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcdirmgr_V0_1_0().translate("wdl")

