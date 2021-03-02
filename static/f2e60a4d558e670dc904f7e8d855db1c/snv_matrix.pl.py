from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Snv_Matrix_Pl_V0_1_0 = CommandToolBuilder(tool="snv_matrix.pl", base_command=["snv_matrix.pl"], inputs=[ToolInput(tag="in_print_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=":  Print more information (to stderr)")), ToolInput(tag="in_prints_matrix_passed", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=":  Prints matrix to passed file")), ToolInput(tag="in_snv_align_dot_phy", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snv_Matrix_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

