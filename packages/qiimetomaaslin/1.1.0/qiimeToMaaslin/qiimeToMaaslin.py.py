from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Qiimetomaaslin_Py_V0_1_0 = CommandToolBuilder(tool="qiimeToMaaslin.py", base_command=["qiimeToMaaslin.py"], inputs=[ToolInput(tag="in_normalize_data_values", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't normalize data values by column sums")), ToolInput(tag="in_string_representing_values", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="String representing missing metadata values")), ToolInput(tag="in_percolumn_quality_control", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Per-column quality control, minimum fraction of maximum")), ToolInput(tag="in_file_ids_exclude", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="File from which sample IDs to exclude are read")), ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_metadata_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="File from which metadata is read")), ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc="-t taxa         Depth of taxonomy to be computed, negative=from right, 0=no")), ToolInput(tag="in_change", input_type=String(), position=1, doc=InputDocumentation(doc="-l              Output only leaves, not complete taxonomy"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qiimetomaaslin_Py_V0_1_0().translate("wdl", allow_empty_container=True)

