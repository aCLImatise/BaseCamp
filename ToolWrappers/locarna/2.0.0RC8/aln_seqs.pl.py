from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Aln_Seqs_Pl_V0_1_0 = CommandToolBuilder(tool="aln_seqs.pl", base_command=["aln-seqs.pl"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="--man", doc=InputDocumentation(doc="documentation")), ToolInput(tag="in_sort", input_type=Int(optional=True), prefix="--sort", doc=InputDocumentation(doc="by number of sequences")), ToolInput(tag="in_null", input_type=File(optional=True), prefix="--null", doc=InputDocumentation(doc="file name from sequence names by \0")), ToolInput(tag="in_no_hash", input_type=String(optional=True), prefix="-no-hash", doc=InputDocumentation(doc="names with prefix '#'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aln_Seqs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

