from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jannovar_Download_Optional_V0_1_0 = CommandToolBuilder(tool="jannovar_download_Optional", base_command=["jannovar", "download", "Optional"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_jan_novar_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_download", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/jannovar-cli:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jannovar_Download_Optional_V0_1_0().translate("wdl")

