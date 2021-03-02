from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Float

Centrifuge_Evaluate_Py_V0_1_0 = CommandToolBuilder(tool="centrifuge_evaluate.py", base_command=["centrifuge_evaluate.py"], inputs=[ToolInput(tag="in_index_base_for_read", input_type=String(optional=True), prefix="--index-base-for-read", doc=InputDocumentation(doc="index base for read (default same as index base)")), ToolInput(tag="in_num_fragment", input_type=Int(optional=True), prefix="--num-fragment", doc=InputDocumentation(doc="Number of fragments in millions (default: 1)")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="Paired-end reads")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="per-base sequencing error rate (%) (default: 0.0)")), ToolInput(tag="in_rank_list", input_type=String(optional=True), prefix="--rank-list", doc=InputDocumentation(doc="A comma-separated list of ranks (default:\nstrain,species,genus,family,order,class,phylum)")), ToolInput(tag="in_program_list", input_type=String(optional=True), prefix="--program-list", doc=InputDocumentation(doc="A comma-separated list of aligners (default:\ncentrifuge)")), ToolInput(tag="in_runtime_only", input_type=Boolean(optional=True), prefix="--runtime-only", doc=InputDocumentation(doc="Just check runtime without evaluation")), ToolInput(tag="in_no_sql", input_type=Boolean(optional=True), prefix="--no-sql", doc=InputDocumentation(doc="Do not write results into a sqlite database")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug")), ToolInput(tag="in_index_base", input_type=String(), position=0, doc=InputDocumentation(doc="Centrifuge index"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Evaluate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

