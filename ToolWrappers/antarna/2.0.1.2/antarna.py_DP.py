from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Antarna_Py_Dp_V0_1_0 = CommandToolBuilder(tool="antarna.py_DP", base_command=["antarna.py", "DP"], inputs=[ToolInput(tag="in_cstr", input_type=String(optional=True), prefix="--Cstr", doc=InputDocumentation(doc="Structure constraint using RNA dotbracket notation. If\nspecified, this structure will be used to constrain a\nfolding hypothesis to produce a ligand bound model of\nthe dotplot. (TYPE: str)")), ToolInput(tag="in_accuracy", input_type=String(optional=True), prefix="--accuracy", doc=InputDocumentation(doc="Define an accuracy evaluation block.")), ToolInput(tag="in_accessibility", input_type=String(optional=True), prefix="--accessibility", doc=InputDocumentation(doc="Define an accessibility evaluation block.")), ToolInput(tag="in_diff_accessibility", input_type=String(optional=True), prefix="--diff-accessibility", doc=InputDocumentation(doc="Define an differential accessibility evaluation block.")), ToolInput(tag="in_fuzzy_constraint", input_type=String(optional=True), prefix="--fuzzyConstraint", doc=InputDocumentation(doc="Define fuzzy structure constraint wihtin DP mode")), ToolInput(tag="in_diff_fuzzy_constraint", input_type=String(optional=True), prefix="--diff-fuzzyConstraint", doc=InputDocumentation(doc="Define a differential fuzzy structure constraint\nwihtin DP mode")), ToolInput(tag="in_trail_blaze_threshold", input_type=String(optional=True), prefix="--trailblaze_threshold", doc=InputDocumentation(doc="Define the threshold whic need to be passed in order\nto bonify certain elements in the terrain graph.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Antarna_Py_Dp_V0_1_0().translate("wdl", allow_empty_container=True)

