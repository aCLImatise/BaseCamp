from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Libraries_Create_Library_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_create_library", base_command=["parsec", "libraries", "create_library"], inputs=[ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="Optional data library description")), ToolInput(tag="in_synopsis", input_type=String(optional=True), prefix="--synopsis", doc=InputDocumentation(doc="Optional data library synopsis")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Create_Library_V0_1_0().translate("wdl")

