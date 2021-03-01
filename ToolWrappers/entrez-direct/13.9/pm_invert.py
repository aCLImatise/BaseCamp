from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Pm_Invert_V0_1_0 = CommandToolBuilder(tool="pm_invert", base_command=["pm-invert"], inputs=[ToolInput(tag="in_i_whole_name", input_type=String(optional=True), prefix="-iwholename", doc=InputDocumentation(doc="[+-]MODE -regex PATTERN")), ToolInput(tag="in_x_type", input_type=String(optional=True), prefix="-xtype", doc=InputDocumentation(doc="[bcdpfls]")), ToolInput(tag="in_fprintf", input_type=String(optional=True), prefix="-fprintf", doc=InputDocumentation(doc="FORMAT -print")), ToolInput(tag="in_f_print_zero", input_type=File(optional=True), prefix="-fprint0", doc=InputDocumentation(doc="; -exec COMMAND {} + -ok COMMAND ;")), ToolInput(tag="in_exec_dir", input_type=String(optional=True), prefix="-execdir", doc=InputDocumentation(doc="; -execdir COMMAND {} + -okdir COMMAND ;")), ToolInput(tag="in_o_level", input_type=Boolean(optional=True), prefix="-Olevel", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="")), ToolInput(tag="in_h", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="")), ToolInput(tag="in_find", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm_Invert_V0_1_0().translate("wdl")

