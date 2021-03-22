from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Cluster_Sites_By_Overlap_Py_V0_1_0 = CommandToolBuilder(tool="cluster_sites_by_overlap.py", base_command=["cluster_sites_by_overlap.py"], inputs=[ToolInput(tag="in_bedfiles_id_th", input_type=Boolean(optional=True), prefix="--bedfiles", doc=InputDocumentation(doc="[BEDFILES [BEDFILES ...]]\nBedfiles with ID in the 4th column")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: bedfile_clustering_output)")), ToolInput(tag="in_var_2", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: bedfile_clustering_output)"))], container="quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_Sites_By_Overlap_Py_V0_1_0().translate("wdl")

