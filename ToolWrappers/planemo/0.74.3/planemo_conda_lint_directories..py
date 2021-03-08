from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Conda_Lint_Directories__V0_1_0 = CommandToolBuilder(tool="planemo_conda_lint_directories.", base_command=["planemo", "conda_lint", "directories."], inputs=[ToolInput(tag="in_plane_mo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cond_a_lint", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_recipe_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Conda_Lint_Directories__V0_1_0().translate("wdl")

