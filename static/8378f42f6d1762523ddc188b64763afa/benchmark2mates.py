from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Benchmark2Mates_V0_1_0 = CommandToolBuilder(tool="benchmark2mates", base_command=["benchmark2mates"], inputs=[ToolInput(tag="in_prefix_resulting_mates", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix for the resulting .mates file. (required)")), ToolInput(tag="in_generate_file_optional", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="generate Bambus <outprefix>.conf file (optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Benchmark2Mates_V0_1_0().translate("wdl", allow_empty_container=True)

