from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nf_Core_Modules_List_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_list", base_command=["nf-core", "modules", "list"], inputs=[ToolInput(tag="in_repository_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_List_V0_1_0().translate("wdl")

