from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Schicclustersvl_V0_1_0 = CommandToolBuilder(tool="scHicClusterSVL", base_command=["scHicClusterSVL"], inputs=[ToolInput(tag="in_schic_matrix_m", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to cluster.\nNeeds to be in scool format (default: None)")), ToolInput(tag="in_number_of_clusters", input_type=Int(optional=True), prefix="--numberOfClusters", doc=InputDocumentation(doc="Number of to be computed clusters (default: 7)")), ToolInput(tag="in_cluster_method", input_type=String(optional=True), prefix="--clusterMethod", doc=InputDocumentation(doc="Algorithm to cluster the Hi-C matrices (default:\nspectral)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting clusters (default:\nclusters.txt)")), ToolInput(tag="in_distance_short_range", input_type=Int(optional=True), prefix="--distanceShortRange", doc=InputDocumentation(doc="Distance which should be considered as short range.\nDefault 2MB. (default: 2000000)")), ToolInput(tag="in_distance_long_range", input_type=Int(optional=True), prefix="--distanceLongRange", doc=InputDocumentation(doc="Distance which should be considered as short range.\nDefault 12MB. (default: 12000000)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_8", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting clusters (default:\nclusters.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicclustersvl_V0_1_0().translate("wdl", allow_empty_container=True)

