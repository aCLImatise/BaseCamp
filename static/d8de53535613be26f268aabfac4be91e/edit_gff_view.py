from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Edit_Gff_View_V0_1_0 = CommandToolBuilder(tool="edit_gff_view", base_command=["edit-gff", "view"], inputs=[ToolInput(tag="in_keep_empty", input_type=Boolean(optional=True), prefix="--keep-empty", doc=InputDocumentation(doc="Keep annotations where not all attributes were found")), ToolInput(tag="in_attributes", input_type=File(optional=True), prefix="--attributes", doc=InputDocumentation(doc="Attributes of GFF file to print. For example `-a\ntaxon_id` will print `taxon_id` for all annotations.\nMultiple attributes can be printed, for example: `-a\ntaxon_id -a gene_id`  [required]")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="Fields separator, default to `TAB`")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Gff_View_V0_1_0().translate("wdl")

