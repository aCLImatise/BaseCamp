from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Pydoc3_V0_1_0 = CommandToolBuilder(tool="pydoc3", base_command=["pydoc3"], inputs=[ToolInput(tag="in_package_dot", input_type=String(), position=0, doc=InputDocumentation(doc="If <name> contains a '/', it is used as the path to a")), ToolInput(tag="in_directory_dot", input_type=Directory(), position=0, doc=InputDocumentation(doc="If <name> contains a '/', it is treated as a filename; if"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pydoc3_V0_1_0().translate("wdl", allow_empty_container=True)

