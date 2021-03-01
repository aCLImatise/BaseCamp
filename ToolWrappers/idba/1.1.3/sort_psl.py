from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sort_Psl_V0_1_0 = CommandToolBuilder(tool="sort_psl", base_command=["sort_psl"], inputs=[ToolInput(tag="in_validate_contigs_blat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contigs_dot_fa_dot", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Psl_V0_1_0().translate("wdl", allow_empty_container=True)

