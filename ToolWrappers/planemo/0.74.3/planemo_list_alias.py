from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_List_Alias_V0_1_0 = CommandToolBuilder(tool="planemo_list_alias", base_command=["planemo", "list_alias"], inputs=[ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="Name of profile (created with the profile_create command) to\nuse with this command.  [required]"))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_List_Alias_V0_1_0().translate("wdl")

