from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Edit_Gff_Remove_V0_1_0 = CommandToolBuilder(tool="edit_gff_remove", base_command=["edit-gff", "remove"], inputs=[ToolInput(tag="in_attributes", input_type=File(optional=True), prefix="--attributes", doc=InputDocumentation(doc="Remove attributes to the GFF file. For example `-a\ntaxon_id` will remove taxon_id attribute for all\nannotations. Multiple attributes can be removed, for\nexample: `-a taxon_id -a gene_id`  [required]")), ToolInput(tag="in_uids", input_type=File(optional=True), prefix="--uids", doc=InputDocumentation(doc="Only edit annotations with `uid` in a file (one per\nline)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Gff_Remove_V0_1_0().translate("wdl")

