from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Download_Dfam_Py_V0_1_0 = CommandToolBuilder(tool="download_dfam.py", base_command=["download-dfam.py"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Give an output destination /home/user/Dfam.hmm.gz"))], outputs=[], container="quay.io/biocontainers/dfam:3.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Dfam_Py_V0_1_0().translate("wdl")

