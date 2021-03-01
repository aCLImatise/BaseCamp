from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyloseq_Clustering_Rmd_V0_1_0 = CommandToolBuilder(tool="phyloseq_clustering.Rmd", base_command=["phyloseq_clustering.Rmd"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Clustering_Rmd_V0_1_0().translate("wdl")

