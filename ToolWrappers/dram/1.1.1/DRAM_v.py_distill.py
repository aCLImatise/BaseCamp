from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Boolean

Dram_V_Py_Distill_V0_1_0 = CommandToolBuilder(tool="DRAM_v.py_distill", base_command=["DRAM-v.py", "distill"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Annotations path (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to write summarized genomes (default: None)")), ToolInput(tag="in_group_by_column", input_type=String(optional=True), prefix="--groupby_column", doc=InputDocumentation(doc="Column from annotations to group as VGF units\n(default: scaffold)")), ToolInput(tag="in_max_auxiliary_score", input_type=Int(optional=True), prefix="--max_auxiliary_score", doc=InputDocumentation(doc="Maximum auxiliary score to consider gene as potential\nAMG (default: 3)")), ToolInput(tag="in_remove_transposons", input_type=Boolean(optional=True), prefix="--remove_transposons", doc=InputDocumentation(doc="Do not consider genes on scaffolds with transposons as\npotential AMGs (default: False)")), ToolInput(tag="in_remove_fs", input_type=Boolean(optional=True), prefix="--remove_fs", doc=InputDocumentation(doc="Do not consider genes near ends of scaffolds as\npotential AMGs (default: False)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_V_Py_Distill_V0_1_0().translate("wdl")

