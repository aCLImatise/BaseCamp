from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Splitify_V0_1_0 = CommandToolBuilder(tool="guppy_splitify", base_command=["guppy", "splitify"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_point_mass", input_type=Boolean(optional=True), prefix="--point-mass", doc=InputDocumentation(doc="Treat every pquery as a point mass concentrated on the highest-weight placement.")), ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_kappa", input_type=Boolean(optional=True), prefix="--kappa", doc=InputDocumentation(doc="Specify the exponent for scaling between weighted and unweighted splitification. default: 1")), ToolInput(tag="in_rep_edges", input_type=Boolean(optional=True), prefix="--rep-edges", doc=InputDocumentation(doc="Cluster neighboring edges that have splitified euclidean distance less than the argument.")), ToolInput(tag="in_epsilon", input_type=Boolean(optional=True), prefix="--epsilon", doc=InputDocumentation(doc="The epsilon to use to determine if a split matrix's column is constant for filtering. default: no filtering")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_split_if_y", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Splitify_V0_1_0().translate("wdl", allow_empty_container=True)

