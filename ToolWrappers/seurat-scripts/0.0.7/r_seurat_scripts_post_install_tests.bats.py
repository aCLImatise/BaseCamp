from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


R_Seurat_Scripts_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="r_seurat_scripts_post_install_tests.bats", base_command=["r-seurat-scripts-post-install-tests.bats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Seurat_Scripts_Post_Install_Tests_Bats_V0_1_0().translate("wdl", allow_empty_container=True)

