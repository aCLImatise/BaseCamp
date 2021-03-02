from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Hallagram_V0_1_0 = CommandToolBuilder(tool="hallagram", base_command=["hallagram"], inputs=[ToolInput(tag="in_strongest", input_type=String(optional=True), prefix="--strongest", doc=InputDocumentation(doc="isolate the N strongest associations")), ToolInput(tag="in_largest", input_type=String(optional=True), prefix="--largest", doc=InputDocumentation(doc="isolate the N largest associations")), ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="--mask", doc=InputDocumentation(doc="mask feature pairs not in associations")), ToolInput(tag="in_cmap", input_type=String(optional=True), prefix="--cmap", doc=InputDocumentation(doc="matplotlib color map")), ToolInput(tag="in_a_x_labels", input_type=String(optional=True), prefix="--axlabels", doc=InputDocumentation(doc="AXLABELS\naxis labels")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file name")), ToolInput(tag="in_similarity", input_type=String(optional=True), prefix="--similarity", doc=InputDocumentation(doc="Similarity metric has been used for similarity\nmeasurement")), ToolInput(tag="in_order_by", input_type=String(optional=True), prefix="--orderby", doc=InputDocumentation(doc="Order the significant association by similarity,\npvalue, or qvalue\n")), ToolInput(tag="in_sim_table", input_type=String(), position=0, doc=InputDocumentation(doc="table of pairwise similarity scores")), ToolInput(tag="in_tree", input_type=String(), position=1, doc=InputDocumentation(doc="hypothesis tree (for getting feature order)")), ToolInput(tag="in_associations", input_type=String(), position=2, doc=InputDocumentation(doc="HAllA associations"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hallagram_V0_1_0().translate("wdl", allow_empty_container=True)

