from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dep_Check_V0_1_0 = CommandToolBuilder(tool="dep_check", base_command=["dep", "check"], inputs=[ToolInput(tag="in_suppress_nonerror_output", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Suppress non-error output (default: false)")), ToolInput(tag="in_skip_lock", input_type=Boolean(optional=True), prefix="-skip-lock", doc=InputDocumentation(doc="Skip checking that imports and Gopkg.toml are in sync with Gopkg.lock (default: false)")), ToolInput(tag="in_skip_vendor", input_type=Boolean(optional=True), prefix="-skip-vendor", doc=InputDocumentation(doc="Skip checking that vendor is in sync with Gopkg.lock (default: false)"))], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dep_Check_V0_1_0().translate("wdl")

