from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String

Magpurify_Known_Contam_V0_1_0 = CommandToolBuilder(tool="magpurify_known_contam", base_command=["magpurify", "known-contam"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Path to reference database. By default, the IMAGEN_DB\nenvironmental variable is used (default: None)")), ToolInput(tag="in_pid", input_type=Int(optional=True), prefix="--pid", doc=InputDocumentation(doc="Minimum % identity to reference (default: 98)")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="Maximum evalue (default: 1e-05)")), ToolInput(tag="in_q_cov", input_type=Int(optional=True), prefix="--qcov", doc=InputDocumentation(doc="Minimum percent query coverage (default: 25)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPUs to use (default: 1)")), ToolInput(tag="in_fna", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input genome in FASTA format")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory to store results and intermediate files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Known_Contam_V0_1_0().translate("wdl", allow_empty_container=True)

