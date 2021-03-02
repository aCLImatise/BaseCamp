from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pathogist_Consensus_V0_1_0 = CommandToolBuilder(tool="PATHOGIST_consensus", base_command=["PATHOGIST", "consensus"], inputs=[ToolInput(tag="in_all_constraints", input_type=Boolean(optional=True), prefix="--all_constraints", doc=InputDocumentation(doc="add all constraints to the optimization problem, not\njust those with mixed signs.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method for consensus clustering\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_distance_matrices", input_type=String(), position=1, doc=InputDocumentation(doc="path to file containing paths to distance matrices for\ndifferent clusterings")), ToolInput(tag="in_clusterings", input_type=String(), position=2, doc=InputDocumentation(doc="path to file containing paths to clusterings,\nrepresented as either matrices or lists of clustering\nassignments")), ToolInput(tag="in_fine_clusterings", input_type=String(), position=3, doc=InputDocumentation(doc="path to file containing the names of the clusterings\nwhich are the finest")), ToolInput(tag="in_path_output_tsv", input_type=String(), position=4, doc=InputDocumentation(doc="path to output tsv file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogist_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)

