from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Je_Retag_V0_1_0 = CommandToolBuilder(tool="je_retag", base_command=["je", "retag"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_header_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Counting starts at 1 and negative numbers can be used to start counting from the end ")), ToolInput(tag="in_using", input_type=String(), position=0, doc=InputDocumentation(doc="a hyphen ('-'). The order of concatenation follows the order of UMI_SLOT in the command ")), ToolInput(tag="in_line_dot", input_type=String(), position=1, doc=InputDocumentation(doc="For example, consider the following read name that lists 3 different sequence codes in ")), ToolInput(tag="in_act_gtac", input_type=String(), position=0, doc=InputDocumentation(doc="ACTCTAC,TCTGTAC,ACTGTAG  ")), ToolInput(tag="in_null_dot", input_type=String(), position=0, doc=InputDocumentation(doc="RGPG=String                   Read Group program group; only considered when RG=true  Default value: null. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Je_Retag_V0_1_0().translate("wdl", allow_empty_container=True)

