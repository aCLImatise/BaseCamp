from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Labels_V0_1_0 = CommandToolBuilder(tool="nw_labels", base_command=["nw_labels"], inputs=[ToolInput(tag="in_print_labels_inner", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc=": don't print labels of inner nodes")), ToolInput(tag="in_print_leaf_labels", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc=": don't print leaf labels")), ToolInput(tag="in_print_roots_label", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": print only the root's label")), ToolInput(tag="in_tabseparated_print_single", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": TAB-separated - print on a single line, separated by tab stops."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Labels_V0_1_0().translate("wdl", allow_empty_container=True)

