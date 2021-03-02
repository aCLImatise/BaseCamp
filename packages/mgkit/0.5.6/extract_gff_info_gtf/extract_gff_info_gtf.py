from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Gff_Info_Gtf_V0_1_0 = CommandToolBuilder(tool="extract_gff_info_gtf", base_command=["extract-gff-info", "gtf"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="GFF attribute to use for the GTF *gene_id* attribute\n[default: gene_id]")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Gff_Info_Gtf_V0_1_0().translate("wdl")

