from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nextstrain_Check_Setup_V0_1_0 = CommandToolBuilder(tool="nextstrain_check_setup", base_command=["nextstrain", "check-setup"], inputs=[ToolInput(tag="in_set_default", input_type=Boolean(optional=True), prefix="--set-default", doc=InputDocumentation(doc="Set the default environment to the first which passes check-\nsetup. Checks run in the order: docker, native, aws-batch.\n(default: False)\n"))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_Check_Setup_V0_1_0().translate("wdl")

