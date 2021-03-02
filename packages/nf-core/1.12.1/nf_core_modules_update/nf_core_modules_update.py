from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Nf_Core_Modules_Update_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_update", base_command=["nf-core", "modules", "update"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of files")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tool_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_Update_V0_1_0().translate("wdl")

