from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

R_Seurat_Scripts_Post_Install_Tests_Sh_V0_1_0 = CommandToolBuilder(tool="r_seurat_scripts_post_install_tests.sh", base_command=["r-seurat-scripts-post-install-tests.sh"], inputs=[ToolInput(tag="in_r_seurat_workflow_post_install_tests_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_action", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_use_existing_outputs", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seurat-scripts:0.0.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Seurat_Scripts_Post_Install_Tests_Sh_V0_1_0().translate("wdl")

