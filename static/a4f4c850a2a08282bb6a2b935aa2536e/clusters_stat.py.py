from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Clusters_Stat_Py_V0_1_0 = CommandToolBuilder(tool="clusters_stat.py", base_command=["clusters_stat.py"], inputs=[ToolInput(tag="in_distance_method", input_type=String(optional=True), prefix="--distance-method", doc=InputDocumentation(doc="Used distance method for classify (see http://docs.sci\npy.org/doc/scipy-0.14.0/reference/generated/generated/\nscipy.spatial.distance.pdist.html#scipy.spatial.distan\nce.pdist). [Default: braycurtis]")), ToolInput(tag="in_linkage_method", input_type=String(optional=True), prefix="--linkage-method", doc=InputDocumentation(doc="Used linkage method for classify (see http://docs.scip\ny.org/doc/scipy-0.14.0/reference/generated/scipy.clust\ner.hierarchy.linkage.html). [Default: average]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="The BIOM file to process.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nclusters_stat.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The HTML file containing the graphs. [Default:\nclusters_stat.html]")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clusters_Stat_Py_V0_1_0().translate("wdl")

