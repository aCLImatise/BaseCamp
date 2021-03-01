from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Edit_Gff_Add_V0_1_0 = CommandToolBuilder(tool="edit_gff_add", base_command=["edit-gff", "add"], inputs=[ToolInput(tag="in_attributes", input_type=File(optional=True), prefix="--attributes", doc=InputDocumentation(doc="Add attributes to the GFF file. For example `-a\ntaxon_id 2` will add taxon_id attribute with a\nvalue of 2 to all annotations. Multiple attributes\ncan be set, for example: `-a taxon_id 2 -a gene_id\nTEST`  [required]")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Overwrite the attributes if present")), ToolInput(tag="in_only_edited", input_type=Boolean(optional=True), prefix="--only-edited", doc=InputDocumentation(doc="Only output edited annotations")), ToolInput(tag="in_uids", input_type=File(optional=True), prefix="--uids", doc=InputDocumentation(doc="Only edit annotations with `uid` in a file (one\nper line)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Gff_Add_V0_1_0().translate("wdl")

