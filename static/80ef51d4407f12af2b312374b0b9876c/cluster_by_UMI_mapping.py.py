from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cluster_By_Umi_Mapping_Py_V0_1_0 = CommandToolBuilder(tool="cluster_by_UMI_mapping.py", base_command=["cluster_by_UMI_mapping.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_By_Umi_Mapping_Py_V0_1_0().translate("wdl")

