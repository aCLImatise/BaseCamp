from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Sga_Preqc_V0_1_0 = CommandToolBuilder(tool="sga_preqc", base_command=["sga", "preqc"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads (default: 1)")), ToolInput(tag="in_simple", input_type=Boolean(optional=True), prefix="--simple", doc=InputDocumentation(doc="only compute the metrics that do not need the FM-index")), ToolInput(tag="in_max_contig_length", input_type=Int(optional=True), prefix="--max-contig-length", doc=InputDocumentation(doc="stop contig extension at N bp (default: 50000)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="use the reference FILE to calculate GC plot")), ToolInput(tag="in_diploid_reference_mode", input_type=Boolean(optional=True), prefix="--diploid-reference-mode", doc=InputDocumentation(doc="generate metrics assuming that the input data\nis a reference genome, not a collection of reads")), ToolInput(tag="in_force_em", input_type=Boolean(optional=True), prefix="--force-EM", doc=InputDocumentation(doc="force preqc to proceed even if the coverage model\ndoes not converge. This allows the rest of the program to continue\nbut the branch and genome size estimates may be misleading"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Preqc_V0_1_0().translate("wdl", allow_empty_container=True)

