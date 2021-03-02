from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Remove_Fragment_V0_1_0 = CommandToolBuilder(tool="remove_fragment", base_command=["remove_fragment"], inputs=[ToolInput(tag="in_one_uid_line", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="one uid per line")), ToolInput(tag="in_fragments_input", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="fragments input")), ToolInput(tag="in_fragments_not_listed_uidfile_saved_here", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="fragments NOT listed in UIDfile are saved here")), ToolInput(tag="in_fragments__listed_uidfile_saved_here", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="fragments     listed in UIDfile are saved here"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Fragment_V0_1_0().translate("wdl", allow_empty_container=True)

