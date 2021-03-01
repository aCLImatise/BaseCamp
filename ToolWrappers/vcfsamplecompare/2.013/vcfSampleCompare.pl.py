from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Float, Int

Vcfsamplecompare_Pl_V0_1_0 = CommandToolBuilder(tool="vcfSampleCompare.pl", base_command=["vcfSampleCompare.pl"], inputs=[ToolInput(tag="in_vcf_outfile_suffix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="VCF outfile suffix (appended to -i).")), ToolInput(tag="in_summary_suffix_appended", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="[STDOUT] Summary outfile suffix (appended to -i).")), ToolInput(tag="in_group_sample_names", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="...     [any^] A group of sample names for difference comparisons.\n^ See --extended usage.")), ToolInput(tag="in_int_minimum_number", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<int,...>...     [all*] Minimum number of samples to use in a group to\ndetermine difference with its partner.")), ToolInput(tag="in_a", input_type=Float(optional=True), prefix="-a", doc=InputDocumentation(doc="[0.7] Minimum observation ratio difference [0-1].")), ToolInput(tag="in_no_g", input_type=Boolean(optional=True), prefix="--no-g", doc=InputDocumentation(doc="Do not use genotype calls for sorting/filtering.")), ToolInput(tag="in_no_f", input_type=Boolean(optional=True), prefix="--no-f", doc=InputDocumentation(doc="Do not filter variant rows.")), ToolInput(tag="in_no_w", input_type=Boolean(optional=True), prefix="--no-w", doc=InputDocumentation(doc="Do not add samples to sample groups beyond the --min-")), ToolInput(tag="in_adequate_read_depth", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="[20] Adequate read depth (DP).")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="[<cnt>]  Print detailed usage.")), ToolInput(tag="in_group_size_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="-l <int>            [4] Minimum read depth (DP)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsamplecompare_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

