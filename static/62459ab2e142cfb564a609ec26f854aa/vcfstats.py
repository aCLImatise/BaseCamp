from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Vcfstats_V0_1_0 = CommandToolBuilder(tool="vcfstats", base_command=["vcfstats"], inputs=[ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="specify a region on which to target the stats, requires a BGZF\ncompressed file which has been indexed with tabix.  any number of\nregions may be specified.")), ToolInput(tag="in_add_info", input_type=File(optional=True), prefix="--add-info", doc=InputDocumentation(doc="add the statistics intermediate information to the VCF file,\nwriting out VCF records instead of summary statistics")), ToolInput(tag="in_add_type", input_type=Boolean(optional=True), prefix="--add-type", doc=InputDocumentation(doc="only add the type= field to the info (faster than -a)")), ToolInput(tag="in_no_length_frequency", input_type=Boolean(optional=True), prefix="--no-length-frequency", doc=InputDocumentation(doc="don't out the indel and mnp length-frequency spectra")), ToolInput(tag="in_match_score", input_type=String(optional=True), prefix="--match-score", doc=InputDocumentation(doc="match score for SW algorithm")), ToolInput(tag="in_mismatch_score", input_type=String(optional=True), prefix="--mismatch-score", doc=InputDocumentation(doc="mismatch score for SW algorithm")), ToolInput(tag="in_gap_open_penalty", input_type=String(optional=True), prefix="--gap-open-penalty", doc=InputDocumentation(doc="gap open penalty for SW algorithm")), ToolInput(tag="in_gap_extend_penalty", input_type=String(optional=True), prefix="--gap-extend-penalty", doc=InputDocumentation(doc="gap extension penalty for SW algorithm")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_add_info", output_type=File(optional=True), selector=InputSelector(input_to_select="in_add_info", type_hint=File()), doc=OutputDocumentation(doc="add the statistics intermediate information to the VCF file,\nwriting out VCF records instead of summary statistics"))], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfstats_V0_1_0().translate("wdl")

