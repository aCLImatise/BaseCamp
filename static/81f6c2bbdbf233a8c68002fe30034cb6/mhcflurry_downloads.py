from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mhcflurry_Downloads_V0_1_0 = CommandToolBuilder(tool="mhcflurry_downloads", base_command=["mhcflurry-downloads"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Output less")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Output more"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mhcflurry_Downloads_V0_1_0().translate("wdl", allow_empty_container=True)

