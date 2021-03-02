from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Taxon_Utils_Lca_Line_V0_1_0 = CommandToolBuilder(tool="taxon_utils_lca_line", base_command=["taxon-utils", "lca_line"], inputs=[ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy file  [required]")), ToolInput(tag="in_no_lca", input_type=File(optional=True), prefix="--no-lca", doc=InputDocumentation(doc="File to which write records with no LCA")), ToolInput(tag="in_only_ranked", input_type=Boolean(optional=True), prefix="--only-ranked", doc=InputDocumentation(doc="If set, only taxa that have a rank will be used in\nthe lineageself. This is not advised for lineages\nsuch as Viruses, where the top levels have no rank")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="separator for taxon_ids (defaults to TAB)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Utils_Lca_Line_V0_1_0().translate("wdl", allow_empty_container=True)

