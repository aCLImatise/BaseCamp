from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Precheck_Py_V0_1_0 = CommandToolBuilder(tool="precheck.py", base_command=["precheck.py"], inputs=[ToolInput(tag="in_families", input_type=String(optional=True), prefix="--families", doc=InputDocumentation(doc="The output of make-families.awk.")), ToolInput(tag="in_constant_length", input_type=Int(optional=True), prefix="--constant-length", doc=InputDocumentation(doc="The minimum number of reads required in each single-\nstranded family. Default: 3")), ToolInput(tag="in_validate", input_type=Boolean(optional=True), prefix="--validate", doc=InputDocumentation(doc="Check the id's of the reads to make sure the correct\nreads are mated into pairs (the id's of mates must be\nidentical). Default: False.")), ToolInput(tag="in_no_check_ids", input_type=Boolean(optional=True), prefix="--no-check-ids", doc=InputDocumentation(doc="Don't check read ids.")), ToolInput(tag="in_reads_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="The first mates in the read pairs.")), ToolInput(tag="in_reads_two_dot_fq", input_type=Int(), position=1, doc=InputDocumentation(doc="The second mates in the read pairs."))], outputs=[], container="quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Precheck_Py_V0_1_0().translate("wdl")

