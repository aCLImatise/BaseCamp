from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sanitize_Blast_Db_Py_Fasta_V0_1_0 = CommandToolBuilder(tool="sanitize_blast_db.py_fasta", base_command=["sanitize_blast_db.py", "fasta"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_ml", input_type=String(optional=True), prefix="-ml", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanitize_Blast_Db_Py_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

