from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Parsec_Utils_Wait_On_Invocation_V0_1_0 = CommandToolBuilder(tool="parsec_utils_wait_on_invocation", base_command=["parsec", "utils", "wait_on_invocation"], inputs=[ToolInput(tag="in_exit_early", input_type=Boolean(optional=True), prefix="--exit_early", doc=InputDocumentation(doc="Exit immediately after checking status rather than\nsleeping indefinitely")), ToolInput(tag="in_back_off_min", input_type=Float(optional=True), prefix="--backoff_min", doc=InputDocumentation(doc="Minimum time to sleep between checks, in seconds.")), ToolInput(tag="in_back_off_max", input_type=Float(optional=True), prefix="--backoff_max", doc=InputDocumentation(doc="Maximum time to sleep between checks, in seconds")), ToolInput(tag="in_unknown", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Utils_Wait_On_Invocation_V0_1_0().translate("wdl")

