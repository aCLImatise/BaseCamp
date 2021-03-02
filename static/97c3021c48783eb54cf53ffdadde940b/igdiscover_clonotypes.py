from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Igdiscover_Clonotypes_V0_1_0 = CommandToolBuilder(tool="igdiscover_clonotypes", base_command=["igdiscover", "clonotypes"], inputs=[ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="Sort by group size (largest first). Default: Sort by\nV/D/J gene names")), ToolInput(tag="in_limit", input_type=String(optional=True), prefix="--limit", doc=InputDocumentation(doc="Print out only the first N groups")), ToolInput(tag="in_v_shm_threshold", input_type=String(optional=True), prefix="--v-shm-threshold", doc=InputDocumentation(doc="V SHM threshold for _mindiffrate computations")), ToolInput(tag="in_cdr_three_core", input_type=Int(optional=True), prefix="--cdr3-core", doc=InputDocumentation(doc=":END\nSTART:END defines the non-junction region of CDR3\nsequences. Use negative numbers for END to count from\nthe end. Regions before and after are considered to be\njunction sequence, and for two CDR3s to be considered\nsimilar, at least one of the junctions must be\nidentical. Default: no junction region.")), ToolInput(tag="in_mismatches", input_type=Int(optional=True), prefix="--mismatches", doc=InputDocumentation(doc="No. of allowed mismatches between CDR3 sequences. Can\nalso be a fraction between 0 and 1 (such as 0.15),\ninterpreted relative to the length of the CDR3 (minus\nthe front non-core). Default: 1")), ToolInput(tag="in_aa", input_type=Boolean(optional=True), prefix="--aa", doc=InputDocumentation(doc="Count CDR3 mismatches on amino-acid level. Default:\nCompare nucleotides.")), ToolInput(tag="in_members", input_type=File(optional=True), prefix="--members", doc=InputDocumentation(doc="Write member table to FILE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Clonotypes_V0_1_0().translate("wdl", allow_empty_container=True)

