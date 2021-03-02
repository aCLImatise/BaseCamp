from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nw_Distance_V0_1_0 = CommandToolBuilder(tool="nw_distance", base_command=["nw_distance"], inputs=[ToolInput(tag="in_selects_mode_see", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc=": selects mode (see Output). Mode is determined by the first\nletter of the argument: 'r' for root mode (default), 'l' for LCA,\n'p' for parent, and 'm' for matrix. Thus, '-mm', '-m matrix',\nand '-m mat' all select matrix mode.")), ToolInput(tag="in_prints_labels_empty", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": prints labels (or '' if empty) in addition to distances.")), ToolInput(tag="in_where_selection_determined", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=", where selection is determined by the first letter of\nthe argument: 'a' for all nodes, 'l' for labeled nodes,\n'i' for inner nodes, 'f' for leaves.\nE.g. '-s a' and '-s all' both select all nodes.")), ToolInput(tag="in_matrix_mode_print", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": in matrix mode, print a triangular matrix. In other modes,\nprint values on a line, separated by TABs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

