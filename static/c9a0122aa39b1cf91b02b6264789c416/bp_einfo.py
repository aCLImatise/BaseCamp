from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bp_Einfo_V0_1_0 = CommandToolBuilder(tool="bp_einfo", base_command=["bp_einfo"], inputs=[ToolInput(tag="in_email", input_type=Boolean(optional=True), prefix="--email", doc=InputDocumentation(doc="Valid email (required by NCBI policy)")), ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="NCBI database to query\n(default = none, which shows available databases)")), ToolInput(tag="in_field", input_type=Boolean(optional=True), prefix="--field", doc=InputDocumentation(doc="print out information about a specific field code\n(default = none)")), ToolInput(tag="in_link", input_type=Boolean(optional=True), prefix="--link", doc=InputDocumentation(doc="print out information about a specific link name\n(default = none)")), ToolInput(tag="in_outfile", input_type=String(), position=0, doc=InputDocumentation(doc="(default = STDOUT)")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion")), ToolInput(tag="in_support", input_type=String(), position=0, doc=InputDocumentation(doc="Please direct usage questions or support issues to the mailing list:\n*bioperl-l@bioperl.org*\nrather than to the module maintainer directly. Many experienced and\nreponsive experts will be able look at the problem and quickly address\nit. Please include a thorough description of the problem with code and\ndata examples if at all possible."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Einfo_V0_1_0().translate("wdl", allow_empty_container=True)

