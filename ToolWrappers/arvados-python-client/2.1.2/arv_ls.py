from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Arv_Ls_V0_1_0 = CommandToolBuilder(tool="arv_ls", base_command=["arv-ls"], inputs=[ToolInput(tag="in_retries", input_type=Int(optional=True), prefix="--retries", doc=InputDocumentation(doc="Maximum number of times to retry server requests that\nencounter temporary failures (e.g., server down). Default\n3.")), ToolInput(tag="in_list_file_sizes", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="List file sizes, in KiB.")), ToolInput(tag="in_locator", input_type=String(), position=0, doc=InputDocumentation(doc="Collection UUID or locator, optionally with a subdir")), ToolInput(tag="in_path_dot", input_type=File(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Ls_V0_1_0().translate("wdl")

