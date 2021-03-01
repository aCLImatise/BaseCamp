from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gof3R_V0_1_0 = CommandToolBuilder(tool="gof3r", base_command=["gof3r"], inputs=[ToolInput(tag="in_man_page", input_type=Boolean(optional=True), prefix="--manpage", doc=InputDocumentation(doc="Create gof3r.man man page in current directory")), ToolInput(tag="in_write_ini", input_type=Boolean(optional=True), prefix="--writeini", doc=InputDocumentation(doc="Write .gof3r.ini in current user's home directory")), ToolInput(tag="in_cp", input_type=String(), position=0, doc=InputDocumentation(doc="copy S3 objects (aliases: copy)")), ToolInput(tag="in_get", input_type=String(), position=1, doc=InputDocumentation(doc="download from S3")), ToolInput(tag="in_put", input_type=String(), position=2, doc=InputDocumentation(doc="upload to S3")), ToolInput(tag="in_rm", input_type=String(), position=3, doc=InputDocumentation(doc="delete from S3"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gof3R_V0_1_0().translate("wdl", allow_empty_container=True)

