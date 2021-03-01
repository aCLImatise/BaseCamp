from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nebulizer_List_Libraries_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_libraries", base_command=["nebulizer", "list_libraries"], inputs=[ToolInput(tag="in_use_long_format", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="use a long listing format that includes descriptions, file sizes,\ndbkeys and paths)")), ToolInput(tag="in_show_id", input_type=Boolean(optional=True), prefix="--show_id", doc=InputDocumentation(doc="include internal Galaxy IDs for data libraries, folders and")), ToolInput(tag="in_datasets_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--help     Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Libraries_V0_1_0().translate("wdl", allow_empty_container=True)

