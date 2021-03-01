from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Specific_Genes_From_All_Matrices_Pl_V0_1_0 = CommandToolBuilder(tool="extract_specific_genes_from_all_matrices.pl", base_command=["extract_specific_genes_from_all_matrices.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Specific_Genes_From_All_Matrices_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

