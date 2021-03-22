from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Clonal_Complex_Assigner_Py_V0_1_0 = CommandToolBuilder(tool="Clonal_complex_assigner.py", base_command=["Clonal_complex_assigner.py"], inputs=[ToolInput(tag="in_level", input_type=Int(optional=True), prefix="--level", doc=InputDocumentation(doc="level of locus variant to assign CC (e.g. SLV, DLV)\n[Default: 2]")), ToolInput(tag="in_number_connections", input_type=Int(optional=True), prefix="--number_connections", doc=InputDocumentation(doc="number of connections to assign CC [Default: 20]")), ToolInput(tag="in_resolve", input_type=File(optional=True), prefix="--resolve", doc=InputDocumentation(doc="provide csv file of 3 columns, 1)conflict (Assign_CC\nor Founder) 2)ST 3)CC\n")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="output name")), ToolInput(tag="in_e_burst_mst_report", input_type=String(), position=1, doc=InputDocumentation(doc="eBURST MST csv report")), ToolInput(tag="in_st_gnu_vid_report", input_type=String(), position=2, doc=InputDocumentation(doc="ST GNUVID csv report"))], outputs=[], container="quay.io/biocontainers/gnuvid:2.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clonal_Complex_Assigner_Py_V0_1_0().translate("wdl")

