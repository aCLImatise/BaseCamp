from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gbff2Gff_Sh_V0_1_0 = CommandToolBuilder(tool="gbff2gff.sh", base_command=["gbff2gff.sh"], inputs=[ToolInput(tag="in_gb_ff_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbff2Gff_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

