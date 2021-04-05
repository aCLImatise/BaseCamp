from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seqsero2_Update_Kmer_Database_Py_V0_1_0 = CommandToolBuilder(tool="SeqSero2_update_kmer_database.py", base_command=["SeqSero2_update_kmer_database.py"], inputs=[ToolInput(tag="in_just", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_type", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqsero2:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqsero2_Update_Kmer_Database_Py_V0_1_0().translate("wdl")

