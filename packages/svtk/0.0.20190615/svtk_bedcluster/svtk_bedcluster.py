from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Boolean, Directory

Svtk_Bedcluster_V0_1_0 = CommandToolBuilder(tool="svtk_bedcluster", base_command=["svtk", "bedcluster"], inputs=[ToolInput(tag="in_frac", input_type=Float(optional=True), prefix="--frac", doc=InputDocumentation(doc="Minimum reciprocal overlap fraction to link variants.\n[0.8]")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="Region to cluster (chrom:start-end). Requires tabixed\nbed.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Cluster ID prefix")), ToolInput(tag="in_merge_coordinates", input_type=Boolean(optional=True), prefix="--merge-coordinates", doc=InputDocumentation(doc="Report median of start and end positions in each\ncluster as final coordinates of cluster.")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory [/tmp]")), ToolInput(tag="in_intersection", input_type=String(optional=True), prefix="--intersection", doc=InputDocumentation(doc="Pre-computed self-intersection of bed.\n")), ToolInput(tag="in_bed", input_type=String(), position=0, doc=InputDocumentation(doc="SV calls to cluster. Columns: #chr, start, end, name,\nsample, svtype")), ToolInput(tag="in_f_out", input_type=String(), position=1, doc=InputDocumentation(doc="Clustered bed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Bedcluster_V0_1_0().translate("wdl", allow_empty_container=True)

