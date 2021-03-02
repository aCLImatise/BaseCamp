from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gappa_Tools_License_V0_1_0 = CommandToolBuilder(tool="gappa_tools_license", base_command=["gappa", "tools", "license"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="If set, show the full license instead of the short boilerplate."))], outputs=[], container="quay.io/biocontainers/gappa:0.7.0--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gappa_Tools_License_V0_1_0().translate("wdl")

