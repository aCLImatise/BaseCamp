from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Markers_Py_V0_1_0 = CommandToolBuilder(tool="extract_markers.py", base_command=["extract_markers.py"], inputs=[ToolInput(tag="in_ifn_markers", input_type=String(optional=True), prefix="--ifn_markers", doc=InputDocumentation(doc="")), ToolInput(tag="in_mpa_pkl", input_type=String(optional=True), prefix="--mpa_pkl", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Markers_Py_V0_1_0().translate("wdl", allow_empty_container=True)

