from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

_Fdnadist_Alignments_V0_1_0 = CommandToolBuilder(tool="_fdnadist_alignments", base_command=["_fdnadist", "alignments"], inputs=[ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [F84 distance model] Choose the method to\nuse (Values: f (F84 distance model); k\n(Kimura 2-parameter distance); j\n(Jukes-Cantor distance); l (LogDet\ndistance); s (Similarity table))")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_lower", input_type=Boolean(optional=True), prefix="-lower", doc=InputDocumentation(doc="boolean    [N] Output as a lower triangular distance")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):")), ToolInput(tag="in_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="-humanreadable      boolean    [@($(method)==s?Y:N)] Output as a"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fdnadist_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

