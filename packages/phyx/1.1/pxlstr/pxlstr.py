from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxlstr_V0_1_0 = CommandToolBuilder(tool="pxlstr", base_command=["pxlstr"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_rooted", input_type=Boolean(optional=True), prefix="--rooted", doc=InputDocumentation(doc="return whether the tree is rooted")), ToolInput(tag="in_age", input_type=Boolean(optional=True), prefix="--age", doc=InputDocumentation(doc="return the height of root (must be rooted and ultrametric)")), ToolInput(tag="in_n_tips", input_type=Boolean(optional=True), prefix="--ntips", doc=InputDocumentation(doc="return the number of terminals")), ToolInput(tag="in_ultrametric", input_type=Boolean(optional=True), prefix="--ultrametric", doc=InputDocumentation(doc="return whether tree is ultrametric")), ToolInput(tag="in_binary", input_type=Boolean(optional=True), prefix="--binary", doc=InputDocumentation(doc="return whether tree is binary")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc="return the length of the tree")), ToolInput(tag="in_tip_labels", input_type=Boolean(optional=True), prefix="--tiplabels", doc=InputDocumentation(doc="return all tip labels (one per line)")), ToolInput(tag="in_rt_var", input_type=Boolean(optional=True), prefix="--rtvar", doc=InputDocumentation(doc="return root-to-tip variance")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output tree stats file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output tree stats file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxlstr_V0_1_0().translate("wdl")

