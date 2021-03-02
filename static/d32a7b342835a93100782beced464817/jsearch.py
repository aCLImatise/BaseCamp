from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Jsearch_V0_1_0 = CommandToolBuilder(tool="jsearch", base_command=["jsearch"], inputs=[ToolInput(tag="in_amino_acid_similarity", input_type=File(optional=True), prefix="-w", doc=InputDocumentation(doc="//amino acid similarity matrix")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="//must be smaller or equal to zero")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="//must be smaller or equal to zero")), ToolInput(tag="in_j", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="//must be smaller or equal to zero")), ToolInput(tag="in_run_verbose_mode", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="//run in verbose mode")), ToolInput(tag="in_print_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="//print version")), ToolInput(tag="in_sequence_db_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jsearch_V0_1_0().translate("wdl", allow_empty_container=True)

