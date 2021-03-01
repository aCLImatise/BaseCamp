from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Generate_Oligo_Base_Networks_V0_1_0 = CommandToolBuilder(tool="o_generate_oligo_base_networks", base_command=["o-generate-oligo-base-networks"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Oligo_Base_Networks_V0_1_0().translate("wdl", allow_empty_container=True)

