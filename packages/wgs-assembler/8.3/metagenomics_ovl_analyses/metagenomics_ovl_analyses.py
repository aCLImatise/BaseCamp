from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Metagenomics_Ovl_Analyses_V0_1_0 = CommandToolBuilder(tool="metagenomics_ovl_analyses", base_command=["metagenomics_ovl_analyses"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_8", input_type=File(optional=True), prefix="-B", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=File(optional=True), prefix="-A", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagenomics_Ovl_Analyses_V0_1_0().translate("wdl", allow_empty_container=True)

