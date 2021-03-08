from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Create_Alias_V0_1_0 = CommandToolBuilder(tool="planemo_create_alias", base_command=["planemo", "create_alias"], inputs=[ToolInput(tag="in_alias", input_type=String(optional=True), prefix="--alias", doc=InputDocumentation(doc="Name of an alias.")), ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="Name of profile (created with the profile_create command) to\nuse with this command.  [required]")), ToolInput(tag="in_obj", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Create_Alias_V0_1_0().translate("wdl")

