from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rppr_Prepsim_V0_1_0 = CommandToolBuilder(tool="rppr_prepsim", base_command=["rppr", "prepsim"], inputs=[ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames. Required.")), ToolInput(tag="in_commadelimited_list_prune", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Comma-delimited list of tax_ids to prune.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_prep_sim", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Prepsim_V0_1_0().translate("wdl", allow_empty_container=True)

