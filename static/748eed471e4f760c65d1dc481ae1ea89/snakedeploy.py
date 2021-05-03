from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Snakedeploy_V0_1_0 = CommandToolBuilder(tool="snakedeploy", base_command=["snakedeploy"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress additional output.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output for logging.")), ToolInput(tag="in_log_disable_color", input_type=Boolean(optional=True), prefix="--log-disable-color", doc=InputDocumentation(doc="Disable color for snakedeploy logging."))], outputs=[], container="quay.io/biocontainers/snakedeploy:0.1.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snakedeploy_V0_1_0().translate("wdl")

