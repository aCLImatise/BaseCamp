from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Etandem_V0_1_0 = CommandToolBuilder(tool="etandem", base_command=["etandem"], inputs=[ToolInput(tag="in_min_repeat", input_type=Boolean(optional=True), prefix="-minrepeat", doc=InputDocumentation(doc="integer    [10] Minimum repeat size (Integer, 2 or\nhigher)")), ToolInput(tag="in_max_repeat", input_type=Boolean(optional=True), prefix="-maxrepeat", doc=InputDocumentation(doc="integer    [Same as -minrepeat] Maximum repeat size\n(Integer, same as -minrepeat or higher)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="integer    [20] Threshold score (Any integer value)")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="-mismatch", doc=InputDocumentation(doc="boolean    Allow N as a mismatch")), ToolInput(tag="in_uniform", input_type=Boolean(optional=True), prefix="-uniform", doc=InputDocumentation(doc="boolean    Allow uniform consensus")), ToolInput(tag="in_orig_file", input_type=File(optional=True), prefix="-origfile", doc=InputDocumentation(doc="outfile    [*.etandem] Sanger Centre program tandem\noutput file (optional)"))], outputs=[ToolOutput(tag="out_orig_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_orig_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.etandem] Sanger Centre program tandem\noutput file (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Etandem_V0_1_0().translate("wdl", allow_empty_container=True)

