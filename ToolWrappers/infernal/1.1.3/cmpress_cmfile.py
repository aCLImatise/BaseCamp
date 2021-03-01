from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cmpress_Cmfile_V0_1_0 = CommandToolBuilder(tool="cmpress_cmfile", base_command=["cmpress", "cmfile"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/infernal:1.1.3--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmpress_Cmfile_V0_1_0().translate("wdl")

