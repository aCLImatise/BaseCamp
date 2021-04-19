from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Constax_No_Inputs_Sh_V0_1_0 = CommandToolBuilder(tool="constax_no_inputs.sh", base_command=["constax_no_inputs.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/constax:2.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Constax_No_Inputs_Sh_V0_1_0().translate("wdl")

