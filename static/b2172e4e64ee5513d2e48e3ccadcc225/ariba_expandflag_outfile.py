from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ariba_Expandflag_Outfile_V0_1_0 = CommandToolBuilder(tool="ariba_expandflag_outfile", base_command=["ariba", "expandflag", "outfile"], inputs=[ToolInput(tag="in_ariba", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_expand_flag", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_report_dot_tsv", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Expandflag_Outfile_V0_1_0().translate("wdl", allow_empty_container=True)

