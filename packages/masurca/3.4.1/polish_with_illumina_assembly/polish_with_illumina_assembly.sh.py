from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Polish_With_Illumina_Assembly_Sh_V0_1_0 = CommandToolBuilder(tool="polish_with_illumina_assembly.sh", base_command=["polish_with_illumina_assembly.sh"], inputs=[ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Polish_With_Illumina_Assembly_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

