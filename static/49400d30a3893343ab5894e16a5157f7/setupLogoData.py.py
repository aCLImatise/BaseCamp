from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Setuplogodata_Py_V0_1_0 = CommandToolBuilder(tool="setupLogoData.py", base_command=["setupLogoData.py"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Fetch all data sets.")), ToolInput(tag="in_repository_folder", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Setuplogodata_Py_V0_1_0().translate("wdl", allow_empty_container=True)

