from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Toolshed_Repositories_Show_Repository_V0_1_0 = CommandToolBuilder(tool="parsec_toolshed_repositories_show_repository", base_command=["parsec", "toolshed_repositories", "show_repository"], inputs=[ToolInput(tag="in_toolshed_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Toolshed_Repositories_Show_Repository_V0_1_0().translate("wdl")

