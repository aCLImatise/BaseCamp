from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Libraries_Delete_Library_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_delete_library", base_command=["parsec", "libraries", "delete_library"], inputs=[ToolInput(tag="in_deleted_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Delete_Library_V0_1_0().translate("wdl")

