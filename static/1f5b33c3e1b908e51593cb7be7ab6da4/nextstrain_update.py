from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nextstrain_Update_V0_1_0 = CommandToolBuilder(tool="nextstrain_update", base_command=["nextstrain", "update"], inputs=[ToolInput(tag="in_next_strain", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_Update_V0_1_0().translate("wdl")

