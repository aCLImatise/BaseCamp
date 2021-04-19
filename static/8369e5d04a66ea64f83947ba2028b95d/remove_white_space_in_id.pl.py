from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_White_Space_In_Id_Pl_V0_1_0 = CommandToolBuilder(tool="remove_white_space_in_id.pl", base_command=["remove_white_space_in_id.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_White_Space_In_Id_Pl_V0_1_0().translate("wdl")

