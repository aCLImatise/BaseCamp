from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Innerjoin_V0_1_0 = CommandToolBuilder(tool="innerjoin", base_command=["innerjoin"], inputs=[ToolInput(tag="in_empty", input_type=String(optional=True), prefix="--empty", doc=InputDocumentation(doc="replace missing input fields with EMPTY")), ToolInput(tag="in_main_fields", input_type=String(optional=True), prefix="--main-fields", doc=InputDocumentation(doc="join on these FIELDS of MAIN-TABLE")), ToolInput(tag="in_lookup_fields", input_type=String(optional=True), prefix="--lookup-fields", doc=InputDocumentation(doc="join on these FIELDS of LOOKUP-TABLE\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Innerjoin_V0_1_0().translate("wdl", allow_empty_container=True)

