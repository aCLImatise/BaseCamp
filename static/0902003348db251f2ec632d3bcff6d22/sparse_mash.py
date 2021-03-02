from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean

Sparse_Mash_V0_1_0 = CommandToolBuilder(tool="sparse_mash", base_command=["sparse", "mash"], inputs=[ToolInput(tag="in_dbname", input_type=Directory(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name for the database folder. REQUIRED.")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="A genome in fasta format, or a set of reads in fastq format. REQUIRED.")), ToolInput(tag="in_read", input_type=Boolean(optional=True), prefix="--read", doc=InputDocumentation(doc="Specify if query is a read set rather than an assembly."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Mash_V0_1_0().translate("wdl", allow_empty_container=True)

