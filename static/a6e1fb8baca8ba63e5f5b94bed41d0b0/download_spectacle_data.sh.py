from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Download_Spectacle_Data_Sh_V0_1_0 = CommandToolBuilder(tool="download_spectacle_data.sh", base_command=["download_spectacle_data.sh"], inputs=[ToolInput(tag="in_canonicalize_following_symlinks", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Canonicalize by following all symlinks")), ToolInput(tag="in_do_add_newline", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't add newline")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose")), ToolInput(tag="in_fnv", input_type=Boolean(optional=True), prefix="-fnv", doc=InputDocumentation(doc="")), ToolInput(tag="in_readlink", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Spectacle_Data_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

