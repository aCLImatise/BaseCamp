from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Panphlan_Download_Pangenome_Py_V0_1_0 = CommandToolBuilder(tool="panphlan_download_pangenome.py", base_command=["panphlan_download_pangenome.py"], inputs=[ToolInput(tag="in_input_name", input_type=String(optional=True), prefix="--input_name", doc=InputDocumentation(doc="Show progress information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panphlan_Download_Pangenome_Py_V0_1_0().translate("wdl", allow_empty_container=True)

