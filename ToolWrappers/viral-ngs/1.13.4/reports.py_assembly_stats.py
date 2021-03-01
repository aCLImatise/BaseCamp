from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Directory

Reports_Py_Assembly_Stats_V0_1_0 = CommandToolBuilder(tool="reports.py_assembly_stats", base_command=["reports.py", "assembly_stats"], inputs=[ToolInput(tag="in_cov_thresholds", input_type=Array(t=String(), optional=True), prefix="--cov_thresholds", doc=InputDocumentation(doc="Genome coverage thresholds to report on. (default: (1,\n5, 20, 100))")), ToolInput(tag="in_assembly_dir", input_type=Directory(optional=True), prefix="--assembly_dir", doc=InputDocumentation(doc="Directory with assembly outputs. (default:\ndata/02_assembly)")), ToolInput(tag="in_assembly_tmp", input_type=Directory(optional=True), prefix="--assembly_tmp", doc=InputDocumentation(doc="Directory with assembly temp files. (default:\ntmp/02_assembly)")), ToolInput(tag="in_align_dir", input_type=Directory(optional=True), prefix="--align_dir", doc=InputDocumentation(doc="Directory with reads aligned to own assembly.\n(default: data/02_align_to_self)")), ToolInput(tag="in_reads_dir", input_type=Directory(optional=True), prefix="--reads_dir", doc=InputDocumentation(doc="Directory with unaligned filtered read BAMs. (default:\ndata/01_per_sample)")), ToolInput(tag="in_raw_reads_dir", input_type=Directory(optional=True), prefix="--raw_reads_dir", doc=InputDocumentation(doc="Directory with unaligned raw read BAMs. (default:\ndata/00_raw)\n")), ToolInput(tag="in_samples", input_type=String(), position=0, doc=InputDocumentation(doc="Sample names.")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc="Output report file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reports_Py_Assembly_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

