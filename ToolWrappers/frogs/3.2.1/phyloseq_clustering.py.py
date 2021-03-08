from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Phyloseq_Clustering_Py_V0_1_0 = CommandToolBuilder(tool="phyloseq_clustering.py", base_command=["phyloseq_clustering.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var_exp", input_type=String(optional=True), prefix="--varExp", doc=InputDocumentation(doc="The experiment variable you want to analyse.")), ToolInput(tag="in_r_data", input_type=File(optional=True), prefix="--rdata", doc=InputDocumentation(doc="The path of RData file containing a phyloseq object-\nthe result of FROGS Phyloseq Import Data")), ToolInput(tag="in_distance_matrix", input_type=File(optional=True), prefix="--distance-matrix", doc=InputDocumentation(doc="The path of data file containing beta diversity\ndistance matrix. These file is the result of FROGS\nPhyloseq Beta Diversity.")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nphyloseq_clustering.nb.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Clustering_Py_V0_1_0().translate("wdl")

