from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Generate_Exclusive_Figures_V0_1_0 = CommandToolBuilder(tool="o_generate_exclusive_figures", base_command=["o-generate-exclusive-figures"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Exclusive_Figures_V0_1_0().translate("wdl", allow_empty_container=True)

