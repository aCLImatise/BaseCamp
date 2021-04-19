from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Libraries_Show_Library_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_show_library", base_command=["parsec", "libraries", "show_library"], inputs=[ToolInput(tag="in_contents", input_type=Boolean(optional=True), prefix="--contents", doc=InputDocumentation(doc="whether to get contents of the library (rather than just the\nlibrary details)")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Show_Library_V0_1_0().translate("wdl")

