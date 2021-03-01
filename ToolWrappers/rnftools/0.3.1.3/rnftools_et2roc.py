from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rnftools_Et2Roc_V0_1_0 = CommandToolBuilder(tool="rnftools_et2roc", base_command=["rnftools", "et2roc"], inputs=[ToolInput(tag="in_et", input_type=File(optional=True), prefix="--et", doc=InputDocumentation(doc="Input ET file (evaluated read tuples, - for standard\ninput).")), ToolInput(tag="in_roc", input_type=File(optional=True), prefix="--roc", doc=InputDocumentation(doc="Output ROC file (evaluated reads, - for standard\noutput).\n"))], outputs=[ToolOutput(tag="out_roc", output_type=File(optional=True), selector=InputSelector(input_to_select="in_roc", type_hint=File()), doc=OutputDocumentation(doc="Output ROC file (evaluated reads, - for standard\noutput).\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Et2Roc_V0_1_0().translate("wdl", allow_empty_container=True)

