from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cva_Uninstall_V0_1_0 = CommandToolBuilder(tool="cva_uninstall", base_command=["cva", "uninstall"], inputs=[ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Proceed without prompt")), ToolInput(tag="in_modules", input_type=String(), position=0, doc=InputDocumentation(doc="Modules to uninstall"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Uninstall_V0_1_0().translate("wdl")

