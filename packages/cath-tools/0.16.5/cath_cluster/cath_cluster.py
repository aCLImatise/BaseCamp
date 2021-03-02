from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Cath_Cluster_V0_1_0 = CommandToolBuilder(tool="cath_cluster", base_command=["cath-cluster"], inputs=[ToolInput(tag="in_output_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]              Output version information")), ToolInput(tag="in_link_dir_n", input_type=String(optional=True), prefix="--link-dirn", doc=InputDocumentation(doc="Interpret each link value as <dirn>, one of:\nDISTANCE - A higher value means the corresponding two entries are more distant\nSTRENGTH - A higher value means the corresponding tow entries are more connected")), ToolInput(tag="in_column_idx", input_type=Int(optional=True), prefix="--column-idx", doc=InputDocumentation(doc="(=3)    Parse the link values (distances/strengths) from column number <colnum>\nMust be ≥ 3 because columns 1 and 2 must contain the IDs")), ToolInput(tag="in_names_in_file", input_type=File(optional=True), prefix="--names-infile", doc=InputDocumentation(doc="[RECOMMENDED] Read names and sorting scores from file <file> (or '-' for stdin)")), ToolInput(tag="in_levels", input_type=Int(optional=True), prefix="--levels", doc=InputDocumentation(doc="Cluster at levels <levels>, which is ordered values separated by commas (eg 35,60,95,100)")), ToolInput(tag="in_clusters_to_file", input_type=File(optional=True), prefix="--clusters-to-file", doc=InputDocumentation(doc="Write the clustering to file <file> (or '-' for stdout)")), ToolInput(tag="in_merges_to_file", input_type=File(optional=True), prefix="--merges-to-file", doc=InputDocumentation(doc="Write the ordered list of merges to file <file> (or '-' for stdout)")), ToolInput(tag="in_clust_spans_to_file", input_type=File(optional=True), prefix="--clust-spans-to-file", doc=InputDocumentation(doc="Write links that form spanning trees for each cluster to file <file> (or '-' for stdout)")), ToolInput(tag="in_reps_to_file", input_type=File(optional=True), prefix="--reps-to-file", doc=InputDocumentation(doc="Write the list of representatives to file <file> (or '-' for stdout)")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cath_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

