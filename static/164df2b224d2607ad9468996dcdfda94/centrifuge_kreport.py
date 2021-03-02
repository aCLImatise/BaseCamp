from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Centrifuge_Kreport_V0_1_0 = CommandToolBuilder(tool="centrifuge_kreport", base_command=["centrifuge-kreport"], inputs=[ToolInput(tag="in_required_centrifuge_index", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="(REQUIRED) Centrifuge index")), ToolInput(tag="in_no_lca", input_type=Boolean(optional=True), prefix="--no-lca", doc=InputDocumentation(doc="Do not report the LCA of multiple assignments, but report count fractions at the taxa.")), ToolInput(tag="in_show_zeros", input_type=Boolean(optional=True), prefix="--show-zeros", doc=InputDocumentation(doc="Show clades that have zero reads, too")), ToolInput(tag="in_is_count_table", input_type=File(optional=True), prefix="--is-count-table", doc=InputDocumentation(doc="The format of the file is 'taxID<tab>COUNT' instead of the standard\nCentrifuge output format")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--min-score", doc=InputDocumentation(doc="Require a minimum score for reads to be counted")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Require a minimum alignment length to the read"))], outputs=[ToolOutput(tag="out_is_count_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_is_count_table", type_hint=File()), doc=OutputDocumentation(doc="The format of the file is 'taxID<tab>COUNT' instead of the standard\nCentrifuge output format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Kreport_V0_1_0().translate("wdl", allow_empty_container=True)

