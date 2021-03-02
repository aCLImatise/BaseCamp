from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int, Boolean

Build_Tree_Single_Strain_Py_V0_1_0 = CommandToolBuilder(tool="build_tree_single_strain.py", base_command=["build_tree_single_strain.py"], inputs=[ToolInput(tag="in_ifn_alignments", input_type=Array(t=String(), optional=True), prefix="--ifn_alignments", doc=InputDocumentation(doc="The alignment file.")), ToolInput(tag="in_log_of_n", input_type=File(optional=True), prefix="--log_ofn", doc=InputDocumentation(doc="The log file.")), ToolInput(tag="in_nprocs", input_type=Int(optional=True), prefix="--nprocs", doc=InputDocumentation(doc="Number of processors.")), ToolInput(tag="in_bootstrap_ra_xml", input_type=Int(optional=True), prefix="--bootstrap_raxml", doc=InputDocumentation(doc="The number of runs for bootstraping when building the\ntree. Default 0.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Show all information. Default 'not set'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Tree_Single_Strain_Py_V0_1_0().translate("wdl", allow_empty_container=True)

