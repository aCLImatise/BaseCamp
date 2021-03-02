from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Geneorder_Py_V0_1_0 = CommandToolBuilder(tool="geneorder.py", base_command=["geneorder.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="write values to FILE (default: stdout)")), ToolInput(tag="in_allow_only_entries", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="allow only entries with TAX in the taxonomy")), ToolInput(tag="in_forbid_entries_tax", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="forbid all entries with TAX in the taxonomy")), ToolInput(tag="in_output_format_nname", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="output format: %n=name, %a=accession, %g=gene order")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--ignore", doc=InputDocumentation(doc="ignore genes with name NAME")), ToolInput(tag="in_ignore_all", input_type=Boolean(optional=True), prefix="--ignoreall", doc=InputDocumentation(doc="ignore all errors")), ToolInput(tag="in_not_rna", input_type=Boolean(optional=True), prefix="--notrna", doc=InputDocumentation(doc="ignore tRNAs")), ToolInput(tag="in_mad", input_type=Boolean(optional=True), prefix="--mad", doc=InputDocumentation(doc="merge adjacent duplicates")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="consider only max score part per gene")), ToolInput(tag="in_gb_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geneorder_Py_V0_1_0().translate("wdl", allow_empty_container=True)

