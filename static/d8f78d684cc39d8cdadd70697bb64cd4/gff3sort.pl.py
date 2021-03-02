from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Gff3Sort_Pl_V0_1_0 = CommandToolBuilder(tool="gff3sort.pl", base_command=["gff3sort.pl"], inputs=[ToolInput(tag="in_precise", input_type=Int(optional=True), prefix="--precise", doc=InputDocumentation(doc="in precise mode, about 2X~3X slower than the default mode.")), ToolInput(tag="in_chr_order", input_type=String(optional=True), prefix="--chr_order", doc=InputDocumentation(doc="how the chromosome IDs should be sorted. Acceptable")), ToolInput(tag="in_extract_fast_a", input_type=File(optional=True), prefix="--extract_FASTA", doc=InputDocumentation(doc="the input GFF3 file contains FASTA sequence at the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3Sort_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

