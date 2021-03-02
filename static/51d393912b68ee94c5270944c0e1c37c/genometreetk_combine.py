from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Genometreetk_Combine_V0_1_0 = CommandToolBuilder(tool="genometreetk_combine", base_command=["genometreetk", "combine"], inputs=[ToolInput(tag="in_support_type", input_type=String(optional=True), prefix="--support_type", doc=InputDocumentation(doc="type of support values to compute (default: average)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_combine_support_values", input_type=String(), position=0, doc=InputDocumentation(doc="Combine all support values into a single tree.")), ToolInput(tag="in_bootstrap_tree", input_type=String(), position=0, doc=InputDocumentation(doc="tree with bootstrap support values")), ToolInput(tag="in_jk_marker_tree", input_type=String(), position=1, doc=InputDocumentation(doc="tree with jackknife marker support values")), ToolInput(tag="in_jk_tax_a_tree", input_type=String(), position=2, doc=InputDocumentation(doc="tree with jackknife taxa support values")), ToolInput(tag="in_output_tree", input_type=String(), position=3, doc=InputDocumentation(doc="output tree"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Combine_V0_1_0().translate("wdl", allow_empty_container=True)

