from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Je_Markdupes_V0_1_0 = CommandToolBuilder(tool="je_markdupes", base_command=["je", "markdupes"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_times_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SPLIT_CHAR=String")), ToolInput(tag="in_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="COMMENT=String"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Je_Markdupes_V0_1_0().translate("wdl", allow_empty_container=True)

