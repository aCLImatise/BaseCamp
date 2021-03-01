from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hm_Cluster_Predict_Py_V0_1_0 = CommandToolBuilder(tool="hm_cluster_predict.py", base_command=["hm_cluster_predict.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hm_Cluster_Predict_Py_V0_1_0().translate("wdl", allow_empty_container=True)

