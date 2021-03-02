from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pybel_Manage_Drop_V0_1_0 = CommandToolBuilder(tool="pybel_manage_drop", base_command=["pybel", "manage", "drop"], inputs=[ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Confirm the action without prompting."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Manage_Drop_V0_1_0().translate("wdl", allow_empty_container=True)

