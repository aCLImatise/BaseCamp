from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Svtk_Vcf2Bed_V0_1_0 = CommandToolBuilder(tool="svtk_vcf2bed", base_command=["svtk", "vcf2bed"], inputs=[ToolInput(tag="in_no_samples", input_type=Boolean(optional=True), prefix="--no-samples", doc=InputDocumentation(doc="Don't include comma-delimited list of called samples\nfor each variant.")), ToolInput(tag="in_info", input_type=String(optional=True), prefix="--info", doc=InputDocumentation(doc="INFO field to include as column in output. May be\nspecified more than once. To include all INFO fields,\nspecify `--info ALL`. INFO fields are reported in the\norder in which they are requested. If ALL INFO fields\nare requested, they are reported in the order in which\nthey appear in the VCF header.")), ToolInput(tag="in_include_filters", input_type=Boolean(optional=True), prefix="--include-filters", doc=InputDocumentation(doc="Include FILTER status in output, with the same\nbehavior an INFO field.")), ToolInput(tag="in_split_bnd", input_type=Boolean(optional=True), prefix="--split-bnd", doc=InputDocumentation(doc="Report two entries in bed file for each BND.")), ToolInput(tag="in_split_cpx", input_type=Boolean(optional=True), prefix="--split-cpx", doc=InputDocumentation(doc="Report entries for each CPX rearrangement interval.")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="Suppress header.")), ToolInput(tag="in_no_sort_coords", input_type=Boolean(optional=True), prefix="--no-sort-coords", doc=InputDocumentation(doc="Do not sort start/end coordinates per record before\nwriting to bed.")), ToolInput(tag="in_no_unresolved", input_type=Boolean(optional=True), prefix="--no-unresolved", doc=InputDocumentation(doc="Do not output unresolved variants.")), ToolInput(tag="in_simple_sinks", input_type=Boolean(optional=True), prefix="--simple-sinks", doc=InputDocumentation(doc="Report all INS sinks as 1bp intervals.")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF to convert.")), ToolInput(tag="in_bed", input_type=String(), position=1, doc=InputDocumentation(doc="Converted bed. Specify `-` or `stdout` to write to")), ToolInput(tag="in_stdout_dot", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Vcf2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

