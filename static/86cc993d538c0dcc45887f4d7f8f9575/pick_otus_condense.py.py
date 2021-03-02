from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Pick_Otus_Condense_Py_V0_1_0 = CommandToolBuilder(tool="pick_otus_condense.py", base_command=["pick_otus_condense.py"], inputs=[ToolInput(tag="in_seqs_otus", input_type=String(optional=True), prefix="--seqs_otus", doc=InputDocumentation(doc="The list of OTU IDs and their associated sequence IDs.")), ToolInput(tag="in_non_unique_otu_matrix", input_type=String(optional=True), prefix="--non_unique_otu_matrix", doc=InputDocumentation(doc="The list of unique OTU IDs associated with the OTU IDs\nthey replaced.")), ToolInput(tag="in_condensed_seqs_otus_file", input_type=File(optional=True), prefix="--condensed_seqs_otus_file", doc=InputDocumentation(doc="The condensed set of OTU IDs and the matching\nsequences. By default outputs to\ncondensed_seqs_otus.txt"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pick_Otus_Condense_Py_V0_1_0().translate("wdl", allow_empty_container=True)

