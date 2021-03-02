from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Align_Trim_Orthologs_Py_V0_1_0 = CommandToolBuilder(tool="align_trim_orthologs.py", base_command=["align_trim_orthologs.py"], inputs=[ToolInput(tag="in_orthologs_zip", input_type=File(optional=True), prefix="--orthologs-zip", doc=InputDocumentation(doc="archive of orthologous genes in FASTA format")), ToolInput(tag="in_retained_threshold", input_type=String(optional=True), prefix="--retained-threshold", doc=InputDocumentation(doc="filter orthologs that retain less than PERC % of sequence after trimming alignment")), ToolInput(tag="in_max_in_del_length", input_type=Int(optional=True), prefix="--max-indel-length", doc=InputDocumentation(doc="filter orthologs that contain insertions / deletions longer than N in middle of alignment")), ToolInput(tag="in_aligned_zip", input_type=File(optional=True), prefix="--aligned-zip", doc=InputDocumentation(doc="destination file path for archive of aligned orthologous genes")), ToolInput(tag="in_misaligned_zip", input_type=File(optional=True), prefix="--misaligned-zip", doc=InputDocumentation(doc="destination file path for archive of misaligned orthologous genes")), ToolInput(tag="in_trimmed_zip", input_type=File(optional=True), prefix="--trimmed-zip", doc=InputDocumentation(doc="destination file path for archive of aligned & trimmed orthologous genes")), ToolInput(tag="in_stats", input_type=File(optional=True), prefix="--stats", doc=InputDocumentation(doc="destination file path for ortholog trimming statistics file")), ToolInput(tag="in_scatterplot", input_type=File(optional=True), prefix="--scatterplot", doc=InputDocumentation(doc="destination file path for scatterplot of retained and filtered sequences by length")), ToolInput(tag="in_filter_orthologs_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_Trim_Orthologs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

