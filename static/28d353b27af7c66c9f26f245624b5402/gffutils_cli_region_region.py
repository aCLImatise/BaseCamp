from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gffutils_Cli_Region_Region_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_region_region", base_command=["gffutils-cli", "region", "region"], inputs=[ToolInput(tag="in_gff_utils_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_region", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Region_Region_V0_1_0().translate("wdl", allow_empty_container=True)

