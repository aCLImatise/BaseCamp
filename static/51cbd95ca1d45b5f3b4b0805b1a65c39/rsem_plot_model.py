from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Plot_Model_V0_1_0 = CommandToolBuilder(tool="rsem_plot_model", base_command=["rsem-plot-model"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Plot_Model_V0_1_0().translate("wdl", allow_empty_container=True)

