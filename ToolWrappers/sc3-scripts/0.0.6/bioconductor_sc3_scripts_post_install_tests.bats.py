from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bioconductor_Sc3_Scripts_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="bioconductor_sc3_scripts_post_install_tests.bats", base_command=["bioconductor-sc3-scripts-post-install-tests.bats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconductor_Sc3_Scripts_Post_Install_Tests_Bats_V0_1_0().translate("wdl", allow_empty_container=True)

