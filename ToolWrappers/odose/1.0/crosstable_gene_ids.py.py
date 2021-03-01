from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Crosstable_Gene_Ids_Py_V0_1_0 = CommandToolBuilder(tool="crosstable_gene_ids.py", base_command=["crosstable_gene_ids.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crosstable_Gene_Ids_Py_V0_1_0().translate("wdl", allow_empty_container=True)

