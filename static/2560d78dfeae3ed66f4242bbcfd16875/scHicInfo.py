from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Schicinfo_V0_1_0 = CommandToolBuilder(tool="scHicInfo", base_command=["scHicInfo"], inputs=[ToolInput(tag="in_schic_matrix_scool", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to\ninvestigate for QC. Needs to be in scool format\n(default: None)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicinfo_V0_1_0().translate("wdl", allow_empty_container=True)

