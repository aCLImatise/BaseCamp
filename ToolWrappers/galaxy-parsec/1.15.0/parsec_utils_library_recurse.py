from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Parsec_Utils_Library_Recurse_V0_1_0 = CommandToolBuilder(tool="parsec_utils_library_recurse", base_command=["parsec", "utils", "library_recurse"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Folder path to filter on (otherwise root of repo)")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Utils_Library_Recurse_V0_1_0().translate("wdl")

