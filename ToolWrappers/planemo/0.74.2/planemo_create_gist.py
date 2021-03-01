from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Create_Gist_V0_1_0 = CommandToolBuilder(tool="planemo_create_gist", base_command=["planemo", "create_gist"], inputs=[ToolInput(tag="in_link_type", input_type=Boolean(optional=True), prefix="--link_type", doc=InputDocumentation(doc="[raw|html]  Link type to generate for the file.")), ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Create_Gist_V0_1_0().translate("wdl")

