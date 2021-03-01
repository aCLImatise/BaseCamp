from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gffutils_Cli_Fetch_Ids_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_fetch_ids", base_command=["gffutils-cli", "fetch", "ids"], inputs=[ToolInput(tag="in_gff_utils_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fetch", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Fetch_Ids_V0_1_0().translate("wdl", allow_empty_container=True)

