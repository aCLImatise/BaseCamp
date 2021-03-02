from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Getinfo_Py_V0_1_0 = CommandToolBuilder(tool="getinfo.py", base_command=["getinfo.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="write values to FILE (default: stdout)")), ToolInput(tag="in_output_format_nname", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="output format: %n=name, %a=accession, %taxid=taxid,\n%strain=strain, %c=code table, %seq=sequence, %s=size,\n%t=taxonomy string, %r=references, %pmid=pubmed ids")), ToolInput(tag="in_allow_only_entries", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="allow only entries with TAX in the taxonomy")), ToolInput(tag="in_forbid_entries_tax", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="forbid all entries with TAX in the taxonomy")), ToolInput(tag="in_gb_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getinfo_Py_V0_1_0().translate("wdl", allow_empty_container=True)

