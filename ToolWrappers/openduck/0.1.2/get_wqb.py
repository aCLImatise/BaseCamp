from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Get_Wqb_V0_1_0 = CommandToolBuilder(tool="get_wqb", base_command=["get_wqb"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Directory with location of OpenDUck data")), ToolInput(tag="in_ligand", input_type=String(optional=True), prefix="--ligand", doc=InputDocumentation(doc="Ligand in mol format")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Ligand output in mol forma, with wqb value\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Wqb_V0_1_0().translate("wdl", allow_empty_container=True)

