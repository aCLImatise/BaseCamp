from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Dram_Py_Distill_V0_1_0 = CommandToolBuilder(tool="DRAM.py_distill", base_command=["DRAM.py", "distill"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Annotations path (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to write summarized genomes (default: None)")), ToolInput(tag="in_rrna_path", input_type=File(optional=True), prefix="--rrna_path", doc=InputDocumentation(doc="rRNA output from annotation (default: None)")), ToolInput(tag="in_trna_path", input_type=File(optional=True), prefix="--trna_path", doc=InputDocumentation(doc="tRNA output from annotation (default: None)")), ToolInput(tag="in_group_by_column", input_type=String(optional=True), prefix="--groupby_column", doc=InputDocumentation(doc="Column from annotations to group as organism units\n(default: fasta)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Py_Distill_V0_1_0().translate("wdl", allow_empty_container=True)

