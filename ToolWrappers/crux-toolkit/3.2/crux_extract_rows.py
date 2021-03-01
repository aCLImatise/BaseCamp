from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Crux_Extract_Rows_V0_1_0 = CommandToolBuilder(tool="crux_extract_rows", base_command=["crux", "extract-rows"], inputs=[ToolInput(tag="in_tsv_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_column_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Extract_Rows_V0_1_0().translate("wdl", allow_empty_container=True)

