from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Refseqsplit_Py_V0_1_0 = CommandToolBuilder(tool="refseqsplit.py", base_command=["refseqsplit.py"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="read from FILE")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="write files to DIR")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="only take accession with prefix PFX (default: NC)")), ToolInput(tag="in_allow_only_entries", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="allow only entries with TAX in the taxonomy")), ToolInput(tag="in_forbid_entries_tax", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="forbid all entries with TAX in the taxonomy")), ToolInput(tag="in_increment_output_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="increment output verbosity; may be specified multiple\ntimes\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refseqsplit_Py_V0_1_0().translate("wdl", allow_empty_container=True)

