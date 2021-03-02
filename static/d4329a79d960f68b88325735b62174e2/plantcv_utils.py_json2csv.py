from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Plantcv_Utils_Py_Json2Csv_V0_1_0 = CommandToolBuilder(tool="plantcv_utils.py_json2csv", base_command=["plantcv-utils.py", "json2csv"], inputs=[ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Input PlantCV JSON filename.")), ToolInput(tag="in_csv", input_type=File(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output CSV filename prefix."))], outputs=[ToolOutput(tag="out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_csv", type_hint=File()), doc=OutputDocumentation(doc="Output CSV filename prefix."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plantcv_Utils_Py_Json2Csv_V0_1_0().translate("wdl", allow_empty_container=True)

