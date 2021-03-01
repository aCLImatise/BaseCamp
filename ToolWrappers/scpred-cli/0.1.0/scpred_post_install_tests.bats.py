from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scpred_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="scpred_post_install_tests.bats", base_command=["scpred_post_install_tests.bats"], inputs=[], outputs=[], container="quay.io/biocontainers/scpred-cli:0.1.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Post_Install_Tests_Bats_V0_1_0().translate("wdl")

