from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Directory

Clustering_Dmatrix_V0_1_0 = CommandToolBuilder(tool="Clustering_dmatrix", base_command=["Clustering", "dmatrix"], inputs=[ToolInput(tag="in_dist_cut_off", input_type=String(optional=True), prefix="--dist-cutoff", doc=InputDocumentation(doc="Only save distances below the cutoff")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="Input fasta file")), ToolInput(tag="in_id_mapping", input_type=File(optional=True), prefix="--id-mapping", doc=InputDocumentation(doc="Id mapping file")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="Minium number of comparable positions (default =\n100)")), ToolInput(tag="in_mask", input_type=String(optional=True), prefix="--mask", doc=InputDocumentation(doc="Mask sequence")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="File to write sorted column matrix to")), ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory where temp files are stored")), ToolInput(tag="in_distance_calculator", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Dmatrix_V0_1_0().translate("wdl", allow_empty_container=True)

