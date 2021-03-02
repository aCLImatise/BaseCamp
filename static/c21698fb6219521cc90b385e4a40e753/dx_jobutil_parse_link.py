from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dx_Jobutil_Parse_Link_V0_1_0 = CommandToolBuilder(tool="dx_jobutil_parse_link", base_command=["dx-jobutil-parse-link"], inputs=[ToolInput(tag="in_no_project", input_type=Boolean(optional=True), prefix="--no-project", doc=InputDocumentation(doc="Ignore project ID in an extended dxlink - just print the\nobject ID\n")), ToolInput(tag="in_dx_link", input_type=String(), position=0, doc=InputDocumentation(doc="Link to parse"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Jobutil_Parse_Link_V0_1_0().translate("wdl", allow_empty_container=True)

