from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Upload_Tar_Py_V0_1_0 = CommandToolBuilder(tool="upload_tar.py", base_command=["upload_tar.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upload_Tar_Py_V0_1_0().translate("wdl", allow_empty_container=True)

