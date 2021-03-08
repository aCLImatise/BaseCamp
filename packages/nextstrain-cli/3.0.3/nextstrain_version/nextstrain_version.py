from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nextstrain_Version_V0_1_0 = CommandToolBuilder(tool="nextstrain_version", base_command=["nextstrain", "version"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Show versions of individual Nextstrain components in the image\n(default: False)\n"))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_Version_V0_1_0().translate("wdl")

