from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Network_Plots_Gephi_Py_V0_1_0 = CommandToolBuilder(tool="network_plots_gephi.py", base_command=["network_plots_gephi.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Network_Plots_Gephi_Py_V0_1_0().translate("wdl", allow_empty_container=True)

