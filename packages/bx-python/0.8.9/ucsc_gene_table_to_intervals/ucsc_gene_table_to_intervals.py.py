from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Ucsc_Gene_Table_To_Intervals_Py_V0_1_0 = CommandToolBuilder(tool="ucsc_gene_table_to_intervals.py", base_command=["ucsc_gene_table_to_intervals.py"], inputs=[ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc="Limit to region: one of coding, utr3, utr5,\ntranscribed [default]")), ToolInput(tag="in_exons", input_type=Boolean(optional=True), prefix="--exons", doc=InputDocumentation(doc="Only print intervals overlapping an exon")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Print strand after interval")), ToolInput(tag="in_no_bin", input_type=Boolean(optional=True), prefix="--nobin", doc=InputDocumentation(doc="file doesn't contain a 'bin' column (use this for pre-\nhg18 files)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ucsc_Gene_Table_To_Intervals_Py_V0_1_0().translate("wdl", allow_empty_container=True)

