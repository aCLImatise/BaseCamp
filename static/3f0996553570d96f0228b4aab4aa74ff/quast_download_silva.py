from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Quast_Download_Silva_V0_1_0 = CommandToolBuilder(tool="quast_download_silva", base_command=["quast-download-silva"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quast_Download_Silva_V0_1_0().translate("wdl", allow_empty_container=True)

