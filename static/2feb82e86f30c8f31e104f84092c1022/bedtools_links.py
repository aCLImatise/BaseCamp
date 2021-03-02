from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Links_V0_1_0 = CommandToolBuilder(tool="bedtools_links", base_command=["bedtools", "links"], inputs=[ToolInput(tag="in_base", input_type=Boolean(optional=True), prefix="-base", doc=InputDocumentation(doc="The browser basename.  Default: http://genome.ucsc.edu")), ToolInput(tag="in_org", input_type=Boolean(optional=True), prefix="-org", doc=InputDocumentation(doc="The organism. Default: human")), ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="The build.  Default: hg18")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Links_V0_1_0().translate("wdl", allow_empty_container=True)

