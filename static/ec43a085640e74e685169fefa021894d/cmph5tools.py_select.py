from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Array, String, File

Cmph5Tools_Py_Select_V0_1_0 = CommandToolBuilder(tool="cmph5tools.py_select", base_command=["cmph5tools.py", "select"], inputs=[ToolInput(tag="in_outfile", input_type=Int(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Either a pattern string or a filename")), ToolInput(tag="in_idx_s", input_type=Array(t=String(), optional=True), prefix="--idxs", doc=InputDocumentation(doc="indices to select")), ToolInput(tag="in_group_by", input_type=String(optional=True), prefix="--groupBy", doc=InputDocumentation(doc="groupBy expression, e.g., Movie*Barcode")), ToolInput(tag="in_group_by_csv", input_type=File(optional=True), prefix="--groupByCsv", doc=InputDocumentation(doc="groupByCsv file, e.g.\nGroup,Movie,Barcode\ngroupname,movie,barcode")), ToolInput(tag="in_where", input_type=Int(optional=True), prefix="--where", doc=InputDocumentation(doc="where expression, e.g., ReadLength > 500"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmph5Tools_Py_Select_V0_1_0().translate("wdl", allow_empty_container=True)

