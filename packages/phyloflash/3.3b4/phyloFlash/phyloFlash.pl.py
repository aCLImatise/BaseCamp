from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyloflash_Pl_V0_1_0 = CommandToolBuilder(tool="phyloFlash.pl", base_command=["phyloFlash.pl"], inputs=[ToolInput(tag="in_read_one", input_type=File(optional=True), prefix="-read1", doc=InputDocumentation(doc="")), ToolInput(tag="in_lib", input_type=String(optional=True), prefix="-lib", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloflash_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

