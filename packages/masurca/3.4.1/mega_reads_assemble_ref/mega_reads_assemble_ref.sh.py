from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mega_Reads_Assemble_Ref_Sh_V0_1_0 = CommandToolBuilder(tool="mega_reads_assemble_ref.sh", base_command=["mega_reads_assemble_ref.sh"], inputs=[ToolInput(tag="in_a", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_mega_reads_assemble_i_ref_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mega_Reads_Assemble_Ref_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

