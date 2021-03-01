from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Newprog_V0_1_0 = CommandToolBuilder(tool="newProg", base_command=["newProg"], inputs=[ToolInput(tag="in_jkh_gap", input_type=Boolean(optional=True), prefix="-jkhgap", doc=InputDocumentation(doc="- include jkhgap.a and mysql libraries as well as jkweb.a archives")), ToolInput(tag="in_cgi", input_type=Boolean(optional=True), prefix="-cgi", doc=InputDocumentation(doc="- create shell of a CGI script for web")), ToolInput(tag="in_progname", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_description", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newprog_V0_1_0().translate("wdl", allow_empty_container=True)

