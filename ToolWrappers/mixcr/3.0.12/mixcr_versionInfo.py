from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mixcr_Versioninfo_V0_1_0 = CommandToolBuilder(tool="mixcr_versionInfo", base_command=["mixcr", "versionInfo"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose warning messages.")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--no-warnings", doc=InputDocumentation(doc="Suppress all warning messages.")), ToolInput(tag="in_scr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_version_info", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Versioninfo_V0_1_0().translate("wdl", allow_empty_container=True)

