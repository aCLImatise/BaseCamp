from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Jlink_Resources_V0_1_0 = CommandToolBuilder(tool="jlink_resources", base_command=["jlink", "resources"], inputs=[ToolInput(tag="in_add_modules", input_type=String(optional=True), prefix="--add-modules", doc=InputDocumentation(doc="")), ToolInput(tag="in_module_path", input_type=File(optional=True), prefix="--module-path", doc=InputDocumentation(doc="")), ToolInput(tag="in_j_link", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jlink_Resources_V0_1_0().translate("wdl", allow_empty_container=True)

