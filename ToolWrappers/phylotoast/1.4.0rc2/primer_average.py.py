from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Primer_Average_Py_V0_1_0 = CommandToolBuilder(tool="primer_average.py", base_command=["primer_average.py"], inputs=[ToolInput(tag="in_p_one", input_type=Int(optional=True), prefix="--p1", doc=InputDocumentation(doc="Primer-set 1 seqs_otus results files.")), ToolInput(tag="in_p_two", input_type=Int(optional=True), prefix="--p2", doc=InputDocumentation(doc="Primer-set 2 seqs_otus results files.")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="The combined seqs_otus file that has been averaged by\nshared OTU entries. Default: combined_seqs_otus.txt")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print detailed information about script operation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primer_Average_Py_V0_1_0().translate("wdl", allow_empty_container=True)

