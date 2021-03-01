from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Toil_Kubernetes_Executor_V0_1_0 = CommandToolBuilder(tool="_toil_kubernetes_executor", base_command=["_toil_kubernetes_executor"], inputs=[], outputs=[], container="quay.io/biocontainers/toil:5.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Toil_Kubernetes_Executor_V0_1_0().translate("wdl")

