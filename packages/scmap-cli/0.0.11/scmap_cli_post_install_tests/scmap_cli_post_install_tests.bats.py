from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scmap_Cli_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="scmap_cli_post_install_tests.bats", base_command=["scmap-cli-post-install-tests.bats"], inputs=[], outputs=[], container="quay.io/biocontainers/scmap-cli:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Cli_Post_Install_Tests_Bats_V0_1_0().translate("wdl")

