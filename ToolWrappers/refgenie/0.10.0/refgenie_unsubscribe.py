from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String

Refgenie_Unsubscribe_V0_1_0 = CommandToolBuilder(tool="refgenie_unsubscribe", base_command=["refgenie", "unsubscribe"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional\nif REFGENIE environment variable is set.")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="Whether the config file should not be locked for")), ToolInput(tag="in_s", input_type=Array(t=String(), optional=True), prefix="-s", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Unsubscribe_V0_1_0().translate("wdl")

