from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Nf_Core_Modules_Remove_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_remove", base_command=["nf-core", "modules", "remove"], inputs=[ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="or <tool/subtool>")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_Remove_V0_1_0().translate("wdl")

