from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Data_Import_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="data_import_post_install_tests.bats", base_command=["data_import_post_install_tests.bats"], inputs=[], outputs=[], container="quay.io/biocontainers/atlas-data-import:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Data_Import_Post_Install_Tests_Bats_V0_1_0().translate("wdl")

