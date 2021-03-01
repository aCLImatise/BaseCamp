from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parse_Genes_From_Gffs_V0_1_0 = CommandToolBuilder(tool="parse_genes_from_gffs", base_command=["parse_genes_from_gffs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Genes_From_Gffs_V0_1_0().translate("wdl", allow_empty_container=True)

