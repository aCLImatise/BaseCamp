from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nw_Clade_V0_1_0 = CommandToolBuilder(tool="nw_clade", base_command=["nw_clade"], inputs=[ToolInput(tag="in_levels_int_give", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="<levels (int)>: give context, i.e. start the subtree not at the last\ncommon ancestor of the labels, but 'level' nodes higher (limited\nby the tree's root, of course).")), ToolInput(tag="in_only_prints_clade", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": only prints the clade if it is monophyletic, in the sense that ONLY\nthe labels passed as arguments are found in the clade.\nSee also -s.")), ToolInput(tag="in_clade_defined_labels", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=": clade is defined by labels that match the regexp (instead.\nof labels passed as arguments)")), ToolInput(tag="in_prints_siblings_clade", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": prints the siblings of the clade defined by the labels passed as\narguments, in the order in which they appear in the Newick.\nIf -m is also passed, only prints siblings if the labels passed\nas arguments form a monophyletic group."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Clade_V0_1_0().translate("wdl", allow_empty_container=True)

