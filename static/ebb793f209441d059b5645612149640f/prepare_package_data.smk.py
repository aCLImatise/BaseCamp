from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prepare_Package_Data_Smk_V0_1_0 = CommandToolBuilder(tool="prepare_package_data.smk", base_command=["prepare_package_data.smk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Package_Data_Smk_V0_1_0().translate("wdl", allow_empty_container=True)

