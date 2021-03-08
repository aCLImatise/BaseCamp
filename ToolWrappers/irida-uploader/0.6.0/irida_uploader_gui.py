from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Irida_Uploader_Gui_V0_1_0 = CommandToolBuilder(tool="irida_uploader_gui", base_command=["irida-uploader-gui"], inputs=[], outputs=[], container="quay.io/biocontainers/irida-uploader:0.6.0--py36_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Irida_Uploader_Gui_V0_1_0().translate("wdl")

