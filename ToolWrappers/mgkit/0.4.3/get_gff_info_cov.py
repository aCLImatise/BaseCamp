from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Get_Gff_Info_Cov_V0_1_0 = CommandToolBuilder(tool="get_gff_info_cov", base_command=["get-gff-info", "cov"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA file for the GFF  [required]")), ToolInput(tag="in_json_out", input_type=Boolean(optional=True), prefix="--json-out", doc=InputDocumentation(doc="The output will be a JSON dictionary")), ToolInput(tag="in_strand_specific", input_type=Boolean(optional=True), prefix="--strand-specific", doc=InputDocumentation(doc="If the coverage must be calculated on each strand")), ToolInput(tag="in_rename", input_type=Boolean(optional=True), prefix="--rename", doc=InputDocumentation(doc="Emulate BLAST output (use only the header part\nbefore the first space)")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Gff_Info_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

