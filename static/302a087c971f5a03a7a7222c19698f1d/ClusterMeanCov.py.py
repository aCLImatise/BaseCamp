from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clustermeancov_Py_V0_1_0 = CommandToolBuilder(tool="ClusterMeanCov.py", base_command=["ClusterMeanCov.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustermeancov_Py_V0_1_0().translate("wdl", allow_empty_container=True)

