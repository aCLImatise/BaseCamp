from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Kcutiltest_V0_1_0 = CommandToolBuilder(tool="kcutiltest", base_command=["kcutiltest"], inputs=[ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_b_num", input_type=Int(optional=True), prefix="-bnum", doc=InputDocumentation(doc="")), ToolInput(tag="in_msi_z", input_type=Int(optional=True), prefix="-msiz", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_iv", input_type=Int(optional=True), prefix="-iv", doc=InputDocumentation(doc="")), ToolInput(tag="in_cond", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_lh_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_misc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mutex", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_para", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_a_list", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_th_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcutiltest_V0_1_0().translate("wdl", allow_empty_container=True)

