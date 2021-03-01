from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Vsnp_Chromosome_Reference_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_chromosome_reference.py", base_command=["vsnp_chromosome_reference.py"], inputs=[ToolInput(tag="in_cwd", input_type=Directory(optional=True), prefix="--cwd", doc=InputDocumentation(doc="Optional: path to VCF files")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Chromosome_Reference_Py_V0_1_0().translate("wdl", allow_empty_container=True)

