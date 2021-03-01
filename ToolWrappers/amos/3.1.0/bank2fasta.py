from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Bank2Fasta_V0_1_0 = CommandToolBuilder(tool="bank2fasta", base_command=["bank2fasta"], inputs=[ToolInput(tag="in_bank", input_type=String(optional=True), prefix="-bank", doc=InputDocumentation(doc="bank where assembly is stored")), ToolInput(tag="in_eid", input_type=Boolean(optional=True), prefix="-eid", doc=InputDocumentation(doc="report eids")), ToolInput(tag="in_iid", input_type=Boolean(optional=True), prefix="-iid", doc=InputDocumentation(doc="report iids (default)")), ToolInput(tag="in_dump_just_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Dump just the contig eids listed in file")), ToolInput(tag="in_dump_just_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Dump just the contig iids listed in file")), ToolInput(tag="in_report_qualities_file", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="Report qualities in file")), ToolInput(tag="in_show_details_reads", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Show contig details (num reads, coverage) on fasta header line"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

