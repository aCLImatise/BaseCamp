from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pyrsa_Priv2Pub_V0_1_0 = CommandToolBuilder(tool="pyrsa_priv2pub", base_command=["pyrsa-priv2pub"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input filename. Reads from stdin if not specified")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename. Writes to stdout of not specified")), ToolInput(tag="in_inform", input_type=String(optional=True), prefix="--inform", doc=InputDocumentation(doc="key format of input - default PEM")), ToolInput(tag="in_out_form", input_type=String(optional=True), prefix="--outform", doc=InputDocumentation(doc="key format of output - default PEM"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename. Writes to stdout of not specified"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrsa_Priv2Pub_V0_1_0().translate("wdl", allow_empty_container=True)

