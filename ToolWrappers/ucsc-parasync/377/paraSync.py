from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Parasync_V0_1_0 = CommandToolBuilder(tool="paraSync", base_command=["paraSync"], inputs=[ToolInput(tag="in_means_accept_files", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="='ext1,ext2'  means accept only files with ext1 or ext2")), ToolInput(tag="in_newer", input_type=Boolean(optional=True), prefix="-newer", doc=InputDocumentation(doc="only download a file if it is newer than the version we already have.")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="-progress", doc=InputDocumentation(doc="Show progress of download.")), ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_connections", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parasync_V0_1_0().translate("wdl", allow_empty_container=True)

