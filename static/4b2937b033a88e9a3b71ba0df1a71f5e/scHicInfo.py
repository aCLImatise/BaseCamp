from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Schicinfo_V0_1_0 = CommandToolBuilder(tool="scHicInfo", base_command=["scHicInfo"], inputs=[ToolInput(tag="in_schic_matrix_scool", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to\ninvestigate for QC. Needs to be in scool format\n(default: None)")), ToolInput(tag="in_write_out_names", input_type=File(optional=True), prefix="--writeOutNames", doc=InputDocumentation(doc="Write out the names of the individual cells to the\nhere specified file. (default: None)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_write_out_names", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_out_names", type_hint=File()), doc=OutputDocumentation(doc="Write out the names of the individual cells to the\nhere specified file. (default: None)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicinfo_V0_1_0().translate("wdl")

