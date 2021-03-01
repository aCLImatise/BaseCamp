from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Upload_All_Outputs_V0_1_0 = CommandToolBuilder(tool="dx_upload_all_outputs", base_command=["dx-upload-all-outputs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Upload_All_Outputs_V0_1_0().translate("wdl", allow_empty_container=True)

