from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Merge_Contigs_Sh_V0_1_0 = CommandToolBuilder(tool="merge_contigs.sh", base_command=["merge_contigs.sh"], inputs=[ToolInput(tag="in_basename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_nuc_mer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_suffix", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Contigs_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

