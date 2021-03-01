from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Refinem_Modify_Bin_V0_1_0 = CommandToolBuilder(tool="refinem_modify_bin", base_command=["refinem", "modify_bin"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="minimum length of scaffold to allow it to be added to\na genome")), ToolInput(tag="in_add", input_type=String(optional=True), prefix="--add", doc=InputDocumentation(doc="ID of scaffold to add to genome (may specify multiple\ntimes)")), ToolInput(tag="in_remove", input_type=String(optional=True), prefix="--remove", doc=InputDocumentation(doc="ID of scaffold to remove from bin (may specify\nmultiple times)")), ToolInput(tag="in_outlier_file", input_type=File(optional=True), prefix="--outlier_file", doc=InputDocumentation(doc="remove all scaffolds identified as outliers (see\noutlier command)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_scaffold_file", input_type=String(), position=0, doc=InputDocumentation(doc="scaffolds binned to generate putative genomes")), ToolInput(tag="in_genome_file", input_type=String(), position=1, doc=InputDocumentation(doc="genome to be modified")), ToolInput(tag="in_output_genome", input_type=String(), position=2, doc=InputDocumentation(doc="modified genome"))], outputs=[], container="quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Modify_Bin_V0_1_0().translate("wdl")

