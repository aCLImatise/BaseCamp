from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seurat_Get_Random_Genes_R_V0_1_0 = CommandToolBuilder(tool="seurat_get_random_genes.R", base_command=["seurat-get-random-genes.R"], inputs=[], outputs=[], container="quay.io/biocontainers/seurat-scripts:0.0.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seurat_Get_Random_Genes_R_V0_1_0().translate("wdl")

