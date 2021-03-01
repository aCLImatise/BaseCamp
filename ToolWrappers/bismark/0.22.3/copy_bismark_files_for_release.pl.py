from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Copy_Bismark_Files_For_Release_Pl_V0_1_0 = CommandToolBuilder(tool="copy_bismark_files_for_release.pl", base_command=["copy_bismark_files_for_release.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Copy_Bismark_Files_For_Release_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

